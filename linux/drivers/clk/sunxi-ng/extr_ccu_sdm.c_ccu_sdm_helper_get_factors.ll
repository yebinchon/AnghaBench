; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_sdm.c_ccu_sdm_helper_get_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_sdm.c_ccu_sdm_helper_get_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32 }
%struct.ccu_sdm_internal = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@CCU_FEATURE_SIGMA_DELTA_MOD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccu_sdm_helper_get_factors(%struct.ccu_common* %0, %struct.ccu_sdm_internal* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccu_common*, align 8
  %8 = alloca %struct.ccu_sdm_internal*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.ccu_common* %0, %struct.ccu_common** %7, align 8
  store %struct.ccu_sdm_internal* %1, %struct.ccu_sdm_internal** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load %struct.ccu_common*, %struct.ccu_common** %7, align 8
  %14 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CCU_FEATURE_SIGMA_DELTA_MOD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %66

22:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %8, align 8
  %26 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %8, align 8
  %31 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %29
  %41 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %8, align 8
  %42 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %10, align 8
  store i64 %48, i64* %49, align 8
  %50 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %8, align 8
  %51 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %11, align 8
  store i64 %57, i64* %58, align 8
  store i32 0, i32* %6, align 4
  br label %66

59:                                               ; preds = %29
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %23

63:                                               ; preds = %23
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %40, %19
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
