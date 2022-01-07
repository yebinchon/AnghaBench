; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_sdm.c_ccu_sdm_helper_read_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_sdm.c_ccu_sdm_helper_read_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32, i32, i64 }
%struct.ccu_sdm_internal = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"%s: Read sigma-delta modulation setting\0A\00", align 1
@CCU_FEATURE_SIGMA_DELTA_MOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: clock is sigma-delta modulated\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: pattern reg is 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ccu_sdm_helper_read_rate(%struct.ccu_common* %0, %struct.ccu_sdm_internal* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ccu_common*, align 8
  %7 = alloca %struct.ccu_sdm_internal*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ccu_common* %0, %struct.ccu_common** %6, align 8
  store %struct.ccu_sdm_internal* %1, %struct.ccu_sdm_internal** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %13 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %12, i32 0, i32 1
  %14 = call i32 @clk_hw_get_name(i32* %13)
  %15 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %17 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CCU_FEATURE_SIGMA_DELTA_MOD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %94

23:                                               ; preds = %4
  %24 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %25 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %24, i32 0, i32 1
  %26 = call i32 @clk_hw_get_name(i32* %25)
  %27 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %29 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %7, align 8
  %32 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = call i64 @readl(i64 %34)
  store i64 %35, i64* %11, align 8
  %36 = load %struct.ccu_common*, %struct.ccu_common** %6, align 8
  %37 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %36, i32 0, i32 1
  %38 = call i32 @clk_hw_get_name(i32* %37)
  %39 = load i64, i64* %11, align 8
  %40 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %38, i64 %39)
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %90, %23
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %7, align 8
  %44 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %93

47:                                               ; preds = %41
  %48 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %7, align 8
  %49 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %47
  %59 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %7, align 8
  %60 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %58
  %70 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %7, align 8
  %71 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %69
  %81 = load %struct.ccu_sdm_internal*, %struct.ccu_sdm_internal** %7, align 8
  %82 = getelementptr inbounds %struct.ccu_sdm_internal, %struct.ccu_sdm_internal* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %5, align 8
  br label %94

89:                                               ; preds = %69, %58, %47
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %41

93:                                               ; preds = %41
  store i64 0, i64* %5, align 8
  br label %94

94:                                               ; preds = %93, %80, %22
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @clk_hw_get_name(i32*) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
