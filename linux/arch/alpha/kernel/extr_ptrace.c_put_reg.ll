; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_ptrace.c_put_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_ptrace.c_put_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i64 }

@IEEE_SW_MASK = common dso_local global i64 0, align 8
@FPCR_DYN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i64)* @put_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_reg(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %7, 63
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE_SW_MASK, align 8
  %15 = xor i64 %14, -1
  %16 = and i64 %13, %15
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @IEEE_SW_MASK, align 8
  %19 = and i64 %17, %18
  %20 = or i64 %16, %19
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @FPCR_DYN_MASK, align 8
  %26 = and i64 %24, %25
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @ieee_swcr_to_fpcr(i64 %27)
  %29 = or i64 %26, %28
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %9, %3
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64* @get_reg_addr(%struct.task_struct* %32, i64 %33)
  store i64 %31, i64* %34, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @task_thread_info(%struct.task_struct*) #1

declare dso_local i64 @ieee_swcr_to_fpcr(i64) #1

declare dso_local i64* @get_reg_addr(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
