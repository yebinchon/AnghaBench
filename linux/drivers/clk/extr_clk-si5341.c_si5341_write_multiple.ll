; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_write_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_write_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si5341 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.si5341_reg_default = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to write %#x:%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si5341*, %struct.si5341_reg_default*, i32)* @si5341_write_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5341_write_multiple(%struct.clk_si5341* %0, %struct.si5341_reg_default* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_si5341*, align 8
  %6 = alloca %struct.si5341_reg_default*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_si5341* %0, %struct.clk_si5341** %5, align 8
  store %struct.si5341_reg_default* %1, %struct.si5341_reg_default** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %53, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = load %struct.clk_si5341*, %struct.clk_si5341** %5, align 8
  %16 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.si5341_reg_default*, %struct.si5341_reg_default** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.si5341_reg_default, %struct.si5341_reg_default* %18, i64 %20
  %22 = getelementptr inbounds %struct.si5341_reg_default, %struct.si5341_reg_default* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.si5341_reg_default*, %struct.si5341_reg_default** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.si5341_reg_default, %struct.si5341_reg_default* %24, i64 %26
  %28 = getelementptr inbounds %struct.si5341_reg_default, %struct.si5341_reg_default* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regmap_write(i32 %17, i32 %23, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %14
  %34 = load %struct.clk_si5341*, %struct.clk_si5341** %5, align 8
  %35 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.si5341_reg_default*, %struct.si5341_reg_default** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.si5341_reg_default, %struct.si5341_reg_default* %38, i64 %40
  %42 = getelementptr inbounds %struct.si5341_reg_default, %struct.si5341_reg_default* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.si5341_reg_default*, %struct.si5341_reg_default** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.si5341_reg_default, %struct.si5341_reg_default* %44, i64 %46
  %48 = getelementptr inbounds %struct.si5341_reg_default, %struct.si5341_reg_default* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %57

52:                                               ; preds = %14
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %10

56:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
