; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_is_closid_match.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_is_closid_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.rdtgroup = type { i64, i64 }

@rdt_alloc_capable = common dso_local global i64 0, align 8
@RDTCTRL_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.rdtgroup*)* @is_closid_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_closid_match(%struct.task_struct* %0, %struct.rdtgroup* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.rdtgroup*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.rdtgroup* %1, %struct.rdtgroup** %4, align 8
  %5 = load i64, i64* @rdt_alloc_capable, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load %struct.rdtgroup*, %struct.rdtgroup** %4, align 8
  %9 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RDTCTRL_GROUP, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.rdtgroup*, %struct.rdtgroup** %4, align 8
  %18 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br label %21

21:                                               ; preds = %13, %7, %2
  %22 = phi i1 [ false, %7 ], [ false, %2 ], [ %20, %13 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
