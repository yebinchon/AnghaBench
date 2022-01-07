; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_cond_ibpb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_cond_ibpb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.task_struct = type { i64 }

@switch_mm_cond_ibpb = common dso_local global i32 0, align 4
@cpu_tlbstate = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LAST_USER_MM_IBPB = common dso_local global i64 0, align 8
@switch_mm_always_ibpb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @cond_ibpb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cond_ibpb(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = icmp ne %struct.task_struct* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %55

13:                                               ; preds = %7
  %14 = call i64 @static_branch_likely(i32* @switch_mm_cond_ibpb)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %18 = call i64 @mm_mangle_tif_spec_ib(%struct.task_struct* %17)
  store i64 %18, i64* %4, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_tlbstate, i32 0, i32 1), align 4
  %20 = call i64 @this_cpu_read(i32 %19)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %3, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* @LAST_USER_MM_IBPB, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 (...) @indirect_branch_prediction_barrier()
  br label %33

33:                                               ; preds = %31, %24, %16
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_tlbstate, i32 0, i32 1), align 4
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @this_cpu_write(i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %33, %13
  %38 = call i64 @static_branch_unlikely(i32* @switch_mm_always_ibpb)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_tlbstate, i32 0, i32 0), align 4
  %42 = call i64 @this_cpu_read(i32 %41)
  %43 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = call i32 (...) @indirect_branch_prediction_barrier()
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_tlbstate, i32 0, i32 0), align 4
  %50 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @this_cpu_write(i32 %49, i64 %52)
  br label %54

54:                                               ; preds = %47, %40
  br label %55

55:                                               ; preds = %12, %54, %37
  ret void
}

declare dso_local i64 @static_branch_likely(i32*) #1

declare dso_local i64 @mm_mangle_tif_spec_ib(%struct.task_struct*) #1

declare dso_local i64 @this_cpu_read(i32) #1

declare dso_local i32 @indirect_branch_prediction_barrier(...) #1

declare dso_local i32 @this_cpu_write(i32, i64) #1

declare dso_local i64 @static_branch_unlikely(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
