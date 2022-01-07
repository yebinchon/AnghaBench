; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_set_signal_archinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_set_signal_archinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@TASK_SIZE_MAX = common dso_local global i64 0, align 8
@X86_PF_PROT = common dso_local global i64 0, align 8
@X86_TRAP_PF = common dso_local global i32 0, align 4
@X86_PF_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @set_signal_archinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_signal_archinfo(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %6, %struct.task_struct** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @TASK_SIZE_MAX, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, i64* @X86_PF_PROT, align 8
  %12 = load i64, i64* %4, align 8
  %13 = or i64 %12, %11
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* @X86_TRAP_PF, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @X86_PF_USER, align 8
  %21 = or i64 %19, %20
  %22 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %23 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 %25, i64* %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
