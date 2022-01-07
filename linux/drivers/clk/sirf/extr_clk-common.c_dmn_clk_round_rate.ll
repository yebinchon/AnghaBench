; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_dmn_clk_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-common.c_dmn_clk_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @dmn_clk_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dmn_clk_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call i8* @clk_hw_get_name(%struct.clk_hw* %13)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 3, i32 4
  store i32 %19, i32* %12, align 4
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = udiv i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add i32 %31, 1
  %33 = call i32 @BIT(i32 %32)
  %34 = icmp ugt i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  %37 = add i32 %36, 1
  %38 = call i32 @BIT(i32 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %8, align 4
  %41 = lshr i32 %40, 1
  %42 = sub i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sub i32 %43, %44
  %46 = sub i32 %45, 2
  store i32 %46, i32* %10, align 4
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %48, %49
  %51 = add i32 %50, 2
  %52 = zext i32 %51 to i64
  %53 = udiv i64 %47, %52
  ret i64 %53
}

declare dso_local i8* @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
