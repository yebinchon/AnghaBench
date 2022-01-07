; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c_mux_div_set_src_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap-mux-div.c_mux_div_set_src_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_regmap_mux_div = type { i32, i32, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CFG_RCGR = common dso_local global i64 0, align 8
@CMD_RCGR = common dso_local global i64 0, align 8
@CMD_RCGR_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: RCG did not update its configuration\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mux_div_set_src_div(%struct.clk_regmap_mux_div* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_regmap_mux_div*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.clk_regmap_mux_div* %0, %struct.clk_regmap_mux_div** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %14 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i8* @clk_hw_get_name(i32* %15)
  store i8* %16, i8** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %19 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %17, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %24 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  %27 = or i32 %21, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %29 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %34 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %32, %35
  %37 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %38 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @BIT(i32 %39)
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %43 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %41, %44
  %46 = or i32 %36, %45
  store i32 %46, i32* %11, align 4
  %47 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %48 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @CFG_RCGR, align 8
  %52 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %53 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @regmap_update_bits(i32 %50, i64 %55, i32 %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %3
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %4, align 4
  br label %115

63:                                               ; preds = %3
  %64 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %65 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* @CMD_RCGR, align 8
  %69 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %70 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load i32, i32* @CMD_RCGR_UPDATE, align 4
  %74 = load i32, i32* @CMD_RCGR_UPDATE, align 4
  %75 = call i32 @regmap_update_bits(i32 %67, i64 %72, i32 %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %115

80:                                               ; preds = %63
  store i32 500, i32* %9, align 4
  br label %81

81:                                               ; preds = %107, %80
  %82 = load i32, i32* %9, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %81
  %85 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %86 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* @CMD_RCGR, align 8
  %90 = load %struct.clk_regmap_mux_div*, %struct.clk_regmap_mux_div** %5, align 8
  %91 = getelementptr inbounds %struct.clk_regmap_mux_div, %struct.clk_regmap_mux_div* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = call i32 @regmap_read(i32 %88, i64 %93, i32* %10)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %115

99:                                               ; preds = %84
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @CMD_RCGR_UPDATE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %115

105:                                              ; preds = %99
  %106 = call i32 @udelay(i32 1)
  br label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %9, align 4
  br label %81

110:                                              ; preds = %81
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %111)
  %113 = load i32, i32* @EBUSY, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %110, %104, %97, %78, %61
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i8* @clk_hw_get_name(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
