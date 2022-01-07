; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_mm_mangle_tif_spec_ib.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_mm_mangle_tif_spec_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }
%struct.TYPE_2__ = type { i64 }

@TIF_SPEC_IB = common dso_local global i64 0, align 8
@LAST_USER_MM_IBPB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*)* @mm_mangle_tif_spec_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mm_mangle_tif_spec_ib(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @TIF_SPEC_IB, align 8
  %11 = lshr i64 %9, %10
  %12 = load i64, i64* @LAST_USER_MM_IBPB, align 8
  %13 = and i64 %11, %12
  store i64 %13, i64* %4, align 8
  %14 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = or i64 %16, %17
  ret i64 %18
}

declare dso_local %struct.TYPE_2__* @task_thread_info(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
