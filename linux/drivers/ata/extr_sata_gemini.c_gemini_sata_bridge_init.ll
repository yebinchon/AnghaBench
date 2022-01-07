; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_gemini.c_gemini_sata_bridge_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_gemini.c_gemini_sata_bridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sata_gemini = type { i32, i8*, i8*, i64, i8*, i8*, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"SATA0_PCLK\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"no SATA0 PCLK\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"SATA1_PCLK\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"no SATA1 PCLK\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to enable SATA0 PCLK\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to enable SATA1 PCLK\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"sata0\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"no SATA0 reset controller\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"sata1\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"no SATA1 reset controller\0A\00", align 1
@GEMINI_SATA_ID = common dso_local global i64 0, align 8
@GEMINI_SATA_PHY_ID = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"SATA ID %08x, PHY ID: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sata_gemini*)* @gemini_sata_bridge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_sata_bridge_init(%struct.sata_gemini* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sata_gemini*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sata_gemini* %0, %struct.sata_gemini** %3, align 8
  %8 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %9 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %8, i32 0, i32 6
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i8* @devm_clk_get(%struct.device* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %14 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %16 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %141

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i8* @devm_clk_get(%struct.device* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %29 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %31 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @IS_ERR(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %141

40:                                               ; preds = %25
  %41 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %42 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @clk_prepare_enable(i8* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %141

50:                                               ; preds = %40
  %51 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %52 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @clk_prepare_enable(i8* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %59 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %60 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @clk_disable_unprepare(i8* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %141

64:                                               ; preds = %50
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = call i8* @devm_reset_control_get_exclusive(%struct.device* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %67 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %68 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %70 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %69, i32 0, i32 5
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @IS_ERR(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %64
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %77 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %78 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @clk_disable_unprepare(i8* %79)
  %81 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %82 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @clk_disable_unprepare(i8* %83)
  %85 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %86 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %85, i32 0, i32 5
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @PTR_ERR(i8* %87)
  store i32 %88, i32* %2, align 4
  br label %141

89:                                               ; preds = %64
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i8* @devm_reset_control_get_exclusive(%struct.device* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %92 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %93 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %95 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @IS_ERR(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %89
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %102 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %103 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @clk_disable_unprepare(i8* %104)
  %106 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %107 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @clk_disable_unprepare(i8* %108)
  %110 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %111 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %2, align 4
  br label %141

114:                                              ; preds = %89
  %115 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %116 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @GEMINI_SATA_ID, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @readl(i64 %119)
  store i32 %120, i32* %5, align 4
  %121 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %122 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @GEMINI_SATA_PHY_ID, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @readl(i64 %125)
  store i32 %126, i32* %6, align 4
  %127 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %128 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %130 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @clk_disable(i8* %131)
  %133 = load %struct.sata_gemini*, %struct.sata_gemini** %3, align 8
  %134 = getelementptr inbounds %struct.sata_gemini, %struct.sata_gemini* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @clk_disable(i8* %135)
  %137 = load %struct.device*, %struct.device** %4, align 8
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @dev_info(%struct.device* %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %138, i32 %139)
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %114, %99, %74, %57, %47, %35, %20
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @clk_disable(i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
