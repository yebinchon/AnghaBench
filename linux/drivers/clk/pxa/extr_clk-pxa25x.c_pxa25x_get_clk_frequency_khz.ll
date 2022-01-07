; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa25x.c_pxa25x_get_clk_frequency_khz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa25x.c_pxa25x_get_clk_frequency_khz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@get_freq_khz = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Run Mode clock: %ld.%02ldMHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Turbo Mode clock: %ld.%02ldMHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Memory clock: %ld.%02ldMHz\0A\00", align 1
@KHz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pxa25x_get_clk_frequency_khz(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  %4 = alloca [5 x i64], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32*, i32** @get_freq_khz, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %6
  %12 = load i32*, i32** @get_freq_khz, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.clk* @clk_get(i32* null, i32 %16)
  store %struct.clk* %17, %struct.clk** %3, align 8
  %18 = load %struct.clk*, %struct.clk** %3, align 8
  %19 = call i64 @IS_ERR(%struct.clk* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 %23
  store i64 0, i64* %24, align 8
  br label %33

25:                                               ; preds = %11
  %26 = load %struct.clk*, %struct.clk** %3, align 8
  %27 = call i64 @clk_get_rate(%struct.clk* %26)
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 %29
  store i64 %27, i64* %30, align 8
  %31 = load %struct.clk*, %struct.clk** %3, align 8
  %32 = call i32 @clk_put(%struct.clk* %31)
  br label %33

33:                                               ; preds = %25, %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %6

37:                                               ; preds = %6
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = udiv i64 %42, 1000000
  %44 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = urem i64 %45, 1000000
  %47 = udiv i64 %46, 10000
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %47)
  %49 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2
  %50 = load i64, i64* %49, align 16
  %51 = udiv i64 %50, 1000000
  %52 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 2
  %53 = load i64, i64* %52, align 16
  %54 = urem i64 %53, 1000000
  %55 = udiv i64 %54, 10000
  %56 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %55)
  %57 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3
  %58 = load i64, i64* %57, align 8
  %59 = udiv i64 %58, 1000000
  %60 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 3
  %61 = load i64, i64* %60, align 8
  %62 = urem i64 %61, 1000000
  %63 = udiv i64 %62, 10000
  %64 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %59, i64 %63)
  br label %65

65:                                               ; preds = %40, %37
  %66 = getelementptr inbounds [5 x i64], [5 x i64]* %4, i64 0, i64 0
  %67 = load i64, i64* %66, align 16
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @KHz, align 4
  %70 = udiv i32 %68, %69
  ret i32 %70
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

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
