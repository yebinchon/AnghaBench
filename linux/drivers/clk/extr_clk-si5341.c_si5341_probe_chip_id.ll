; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_probe_chip_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_probe_chip_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si5341 = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SI5341_PN_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to read chip ID\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Chip: %x Grade: %u Rev: %u\0A\00", align 1
@SI5340_MAX_NUM_OUTPUTS = common dso_local global i32 0, align 4
@SI5340_NUM_SYNTH = common dso_local global i32 0, align 4
@si5340_reg_output_offset = common dso_local global i32 0, align 4
@si5340_reg_rdiv_offset = common dso_local global i32 0, align 4
@SI5341_MAX_NUM_OUTPUTS = common dso_local global i32 0, align 4
@SI5341_NUM_SYNTH = common dso_local global i32 0, align 4
@si5341_reg_output_offset = common dso_local global i32 0, align 4
@si5341_reg_rdiv_offset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Model '%x' not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si5341*)* @si5341_probe_chip_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5341_probe_chip_id(%struct.clk_si5341* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_si5341*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.clk_si5341* %0, %struct.clk_si5341** %3, align 8
  %7 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %8 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SI5341_PN_BASE, align 4
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = call i32 @regmap_bulk_read(i32 %9, i32 %10, i32* %11, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %19 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %74

24:                                               ; preds = %1
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %26 = call i32 @get_unaligned_le16(i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %28 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_info(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33, i32 %35)
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %64 [
    i32 21312, label %38
    i32 21313, label %51
  ]

38:                                               ; preds = %24
  %39 = load i32, i32* @SI5340_MAX_NUM_OUTPUTS, align 4
  %40 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %41 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @SI5340_NUM_SYNTH, align 4
  %43 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %44 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @si5340_reg_output_offset, align 4
  %46 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %47 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @si5340_reg_rdiv_offset, align 4
  %49 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %50 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %73

51:                                               ; preds = %24
  %52 = load i32, i32* @SI5341_MAX_NUM_OUTPUTS, align 4
  %53 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %54 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @SI5341_NUM_SYNTH, align 4
  %56 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %57 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @si5341_reg_output_offset, align 4
  %59 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %60 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @si5341_reg_rdiv_offset, align 4
  %62 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %63 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  br label %73

64:                                               ; preds = %24
  %65 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %66 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %51, %38
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %64, %17
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
