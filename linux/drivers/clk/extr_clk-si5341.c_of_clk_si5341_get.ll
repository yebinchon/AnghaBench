; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_of_clk_si5341_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_of_clk_si5341_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.clk_si5341 = type { i32, i32, %struct.TYPE_6__*, %struct.clk_hw, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.clk_hw }
%struct.TYPE_4__ = type { %struct.clk_hw }

@.str = private unnamed_addr constant [25 x i8] c"invalid output index %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid synthesizer index %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid PLL index %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"invalid group %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.of_phandle_args*, i8*)* @of_clk_si5341_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @of_clk_si5341_get(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clk_si5341*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.clk_si5341*
  store %struct.clk_si5341* %10, %struct.clk_si5341** %6, align 8
  %11 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %12 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %86 [
    i32 0, label %22
    i32 1, label %46
    i32 2, label %70
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %25 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp uge i32 %23, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %30 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.clk_hw* @ERR_PTR(i32 %36)
  store %struct.clk_hw* %37, %struct.clk_hw** %3, align 8
  br label %96

38:                                               ; preds = %22
  %39 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %40 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %39, i32 0, i32 5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store %struct.clk_hw* %45, %struct.clk_hw** %3, align 8
  br label %96

46:                                               ; preds = %2
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %49 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp uge i32 %47, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %54 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.clk_hw* @ERR_PTR(i32 %60)
  store %struct.clk_hw* %61, %struct.clk_hw** %3, align 8
  br label %96

62:                                               ; preds = %46
  %63 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %64 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %63, i32 0, i32 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store %struct.clk_hw* %69, %struct.clk_hw** %3, align 8
  br label %96

70:                                               ; preds = %2
  %71 = load i32, i32* %7, align 4
  %72 = icmp ugt i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %75 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.clk_hw* @ERR_PTR(i32 %81)
  store %struct.clk_hw* %82, %struct.clk_hw** %3, align 8
  br label %96

83:                                               ; preds = %70
  %84 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %85 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %84, i32 0, i32 3
  store %struct.clk_hw* %85, %struct.clk_hw** %3, align 8
  br label %96

86:                                               ; preds = %2
  %87 = load %struct.clk_si5341*, %struct.clk_si5341** %6, align 8
  %88 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @dev_err(i32* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  %95 = call %struct.clk_hw* @ERR_PTR(i32 %94)
  store %struct.clk_hw* %95, %struct.clk_hw** %3, align 8
  br label %96

96:                                               ; preds = %86, %83, %73, %62, %52, %38, %28
  %97 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  ret %struct.clk_hw* %97
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
