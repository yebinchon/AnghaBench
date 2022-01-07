; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa27x.c_pxa27x_get_clk_frequency_khz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa27x.c_pxa27x_get_clk_frequency_khz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@get_freq_khz = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Run Mode clock: %ld.%02ldMHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Turbo Mode clock: %ld.%02ldMHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Memory clock: %ld.%02ldMHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"System bus clock: %ld.%02ldMHz\0A\00", align 1
@KHz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pxa27x_get_clk_frequency_khz(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca [5 x i64], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %35

9:                                                ; preds = %6
  %10 = load i32*, i32** @get_freq_khz, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.clk* @clk_get(i32* null, i32 %14)
  store %struct.clk* %15, %struct.clk** %3, align 8
  %16 = load %struct.clk*, %struct.clk** %3, align 8
  %17 = call i64 @IS_ERR(%struct.clk* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %9
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 %21
  store i64 0, i64* %22, align 8
  br label %31

23:                                               ; preds = %9
  %24 = load %struct.clk*, %struct.clk** %3, align 8
  %25 = call i64 @clk_get_rate(%struct.clk* %24)
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 %27
  store i64 %25, i64* %28, align 8
  %29 = load %struct.clk*, %struct.clk** %3, align 8
  %30 = call i32 @clk_put(%struct.clk* %29)
  br label %31

31:                                               ; preds = %23, %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %35
  %39 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = udiv i64 %40, 1000000
  %42 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = urem i64 %43, 1000000
  %45 = udiv i64 %44, 10000
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %45)
  %47 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2
  %48 = load i64, i64* %47, align 16
  %49 = udiv i64 %48, 1000000
  %50 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2
  %51 = load i64, i64* %50, align 16
  %52 = urem i64 %51, 1000000
  %53 = udiv i64 %52, 10000
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %53)
  %55 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3
  %56 = load i64, i64* %55, align 8
  %57 = udiv i64 %56, 1000000
  %58 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3
  %59 = load i64, i64* %58, align 8
  %60 = urem i64 %59, 1000000
  %61 = udiv i64 %60, 10000
  %62 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %57, i64 %61)
  %63 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4
  %64 = load i64, i64* %63, align 16
  %65 = udiv i64 %64, 1000000
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 4
  %67 = load i64, i64* %66, align 16
  %68 = urem i64 %67, 1000000
  %69 = udiv i64 %68, 10000
  %70 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %65, i64 %69)
  br label %71

71:                                               ; preds = %38, %35
  %72 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0
  %73 = load i64, i64* %72, align 16
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @KHz, align 4
  %76 = udiv i32 %74, %75
  ret i32 %76
}

declare dso_local %struct.clk* @clk_get(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @pr_info(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
