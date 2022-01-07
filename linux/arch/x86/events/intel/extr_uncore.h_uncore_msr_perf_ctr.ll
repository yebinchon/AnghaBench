; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.h_uncore_msr_perf_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.h_uncore_msr_perf_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }

@UNCORE_BOX_FLAG_CFL8_CBOX_MSR_OFFS = common dso_local global i32 0, align 4
@CFL_UNC_CBO_7_PER_CTR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_box*, i32)* @uncore_msr_perf_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncore_msr_perf_ctr(%struct.intel_uncore_box* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_box*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @UNCORE_BOX_FLAG_CFL8_CBOX_MSR_OFFS, align 4
  %7 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %8 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = load i32, i32* @CFL_UNC_CBO_7_PER_CTR0, align 4
  %13 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %14 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 2, %22
  br label %26

24:                                               ; preds = %11
  %25 = load i32, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32 [ %23, %21 ], [ %25, %24 ]
  %28 = add nsw i32 %12, %27
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %2
  %30 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %31 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %38 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %29
  %46 = load i32, i32* %5, align 4
  %47 = mul nsw i32 2, %46
  br label %50

48:                                               ; preds = %29
  %49 = load i32, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %47, %45 ], [ %49, %48 ]
  %52 = add nsw i32 %36, %51
  %53 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %4, align 8
  %54 = call i32 @uncore_msr_box_offset(%struct.intel_uncore_box* %53)
  %55 = add nsw i32 %52, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %26
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @uncore_msr_box_offset(%struct.intel_uncore_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
