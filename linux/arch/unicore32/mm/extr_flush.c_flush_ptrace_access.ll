; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_flush.c_flush_ptrace_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_flush.c_flush_ptrace_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@VM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, %struct.page*, i64, i8*, i64)* @flush_ptrace_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_ptrace_access(%struct.vm_area_struct* %0, %struct.page* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VM_EXEC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %22, %23
  %25 = call i32 @__cpuc_coherent_kern_range(i64 %21, i64 %24)
  br label %26

26:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @__cpuc_coherent_kern_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
