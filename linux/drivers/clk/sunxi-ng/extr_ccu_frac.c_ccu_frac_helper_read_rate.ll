; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_frac.c_ccu_frac_helper_read_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_frac.c_ccu_frac_helper_read_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32, i32, i64, i64 }
%struct.ccu_frac_internal = type { i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s: Read fractional\0A\00", align 1
@CCU_FEATURE_FRACTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: clock is fractional (rates %lu and %lu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: clock reg is 0x%x (select is 0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ccu_frac_helper_read_rate(%struct.ccu_common* %0, %struct.ccu_frac_internal* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ccu_common*, align 8
  %5 = alloca %struct.ccu_frac_internal*, align 8
  %6 = alloca i32, align 4
  store %struct.ccu_common* %0, %struct.ccu_common** %4, align 8
  store %struct.ccu_frac_internal* %1, %struct.ccu_frac_internal** %5, align 8
  %7 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %8 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %7, i32 0, i32 1
  %9 = call i32 @clk_hw_get_name(i32* %8)
  %10 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %12 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CCU_FEATURE_FRACTIONAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %20 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %19, i32 0, i32 1
  %21 = call i32 @clk_hw_get_name(i32* %20)
  %22 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %5, align 8
  %23 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %5, align 8
  %28 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %26, i32 %31)
  %33 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %34 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %37 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %42 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %41, i32 0, i32 1
  %43 = call i32 @clk_hw_get_name(i32* %42)
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %5, align 8
  %46 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %5, align 8
  %51 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %18
  %56 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %5, align 8
  %57 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  br label %67

61:                                               ; preds = %18
  %62 = load %struct.ccu_frac_internal*, %struct.ccu_frac_internal** %5, align 8
  %63 = getelementptr inbounds %struct.ccu_frac_internal, %struct.ccu_frac_internal* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i32 [ %60, %55 ], [ %66, %61 ]
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %67, %17
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @clk_hw_get_name(i32*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
