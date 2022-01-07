; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2412-cpufreq.c_s3c2412_cpufreq_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2412-cpufreq.c_s3c2412_cpufreq_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.subsys_interface = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@hclk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot find hclk clock\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"fclk\00", align 1
@fclk = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot find fclk clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"fclk %ld MHz, assuming 266MHz capable part\0A\00", align 1
@s3c2412_cpufreq_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"armclk\00", align 1
@armclk = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"cannot find arm clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"xtal\00", align 1
@xtal = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"cannot find xtal clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.subsys_interface*)* @s3c2412_cpufreq_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2412_cpufreq_add(%struct.device* %0, %struct.subsys_interface* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.subsys_interface*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.subsys_interface* %1, %struct.subsys_interface** %5, align 8
  %7 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* @hclk, align 4
  %8 = load i32, i32* @hclk, align 4
  %9 = call i64 @IS_ERR(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %16, i32* @fclk, align 4
  %17 = load i32, i32* @fclk, align 4
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %53

22:                                               ; preds = %15
  %23 = load i32, i32* @fclk, align 4
  %24 = call i64 @clk_get_rate(i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %25, 200000000
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i64, i64* %6, align 8
  %29 = udiv i64 %28, 1000000
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %29)
  store i32 266000000, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s3c2412_cpufreq_info, i32 0, i32 0, i32 0), align 4
  store i32 133000000, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s3c2412_cpufreq_info, i32 0, i32 0, i32 1), align 4
  store i32 66000000, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s3c2412_cpufreq_info, i32 0, i32 0, i32 2), align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %32, i32* @armclk, align 4
  %33 = load i32, i32* @armclk, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %50

38:                                               ; preds = %31
  %39 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 %39, i32* @xtal, align 4
  %40 = load i32, i32* @xtal, align 4
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %47

45:                                               ; preds = %38
  %46 = call i32 @s3c_cpufreq_register(%struct.TYPE_5__* @s3c2412_cpufreq_info)
  store i32 %46, i32* %3, align 4
  br label %58

47:                                               ; preds = %43
  %48 = load i32, i32* @armclk, align 4
  %49 = call i32 @clk_put(i32 %48)
  br label %50

50:                                               ; preds = %47, %36
  %51 = load i32, i32* @fclk, align 4
  %52 = call i32 @clk_put(i32 %51)
  br label %53

53:                                               ; preds = %50, %20
  %54 = load i32, i32* @hclk, align 4
  %55 = call i32 @clk_put(i32 %54)
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %45, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @s3c_cpufreq_register(%struct.TYPE_5__*) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
