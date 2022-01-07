; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-st.c_st_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-st.c_st_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.st_clk_data = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clk48MHz\00", align 1
@hws = common dso_local global %struct.TYPE_6__** null, align 8
@ST_CLK_48M = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"clk25MHz\00", align 1
@ST_CLK_25M = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"oscout1_mux\00", align 1
@clk_oscout1_parents = common dso_local global i32 0, align 4
@CLKDRVSTR2 = common dso_local global i64 0, align 8
@OSCOUT1CLK25MHZ = common dso_local global i32 0, align 4
@ST_CLK_MUX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"oscout1\00", align 1
@MISCCLKCNTL1 = common dso_local global i64 0, align 8
@OSCCLKENB = common dso_local global i32 0, align 4
@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4
@ST_CLK_GATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.st_clk_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.st_clk_data* @dev_get_platdata(i32* %6)
  store %struct.st_clk_data* %7, %struct.st_clk_data** %4, align 8
  %8 = load %struct.st_clk_data*, %struct.st_clk_data** %4, align 8
  %9 = icmp ne %struct.st_clk_data* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.st_clk_data*, %struct.st_clk_data** %4, align 8
  %12 = getelementptr inbounds %struct.st_clk_data, %struct.st_clk_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %71

18:                                               ; preds = %10
  %19 = call %struct.TYPE_6__* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 48000000)
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hws, align 8
  %21 = load i64, i64* @ST_CLK_48M, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %21
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %22, align 8
  %23 = call %struct.TYPE_6__* @clk_hw_register_fixed_rate(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0, i32 25000000)
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hws, align 8
  %25 = load i64, i64* @ST_CLK_25M, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %25
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %26, align 8
  %27 = load i32, i32* @clk_oscout1_parents, align 4
  %28 = load i32, i32* @clk_oscout1_parents, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = load %struct.st_clk_data*, %struct.st_clk_data** %4, align 8
  %31 = getelementptr inbounds %struct.st_clk_data, %struct.st_clk_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CLKDRVSTR2, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @OSCOUT1CLK25MHZ, align 4
  %36 = call %struct.TYPE_6__* @clk_hw_register_mux(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %29, i32 0, i64 %34, i32 %35, i32 3, i32 0, i32* null)
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hws, align 8
  %38 = load i64, i64* @ST_CLK_MUX, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 %38
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hws, align 8
  %41 = load i64, i64* @ST_CLK_MUX, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %40, i64 %41
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hws, align 8
  %47 = load i64, i64* @ST_CLK_48M, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %46, i64 %47
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clk_set_parent(i32 %45, i32 %51)
  %53 = load %struct.st_clk_data*, %struct.st_clk_data** %4, align 8
  %54 = getelementptr inbounds %struct.st_clk_data, %struct.st_clk_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MISCCLKCNTL1, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i32, i32* @OSCCLKENB, align 4
  %59 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  %60 = call %struct.TYPE_6__* @clk_hw_register_gate(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 %57, i32 %58, i32 %59, i32* null)
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hws, align 8
  %62 = load i64, i64* @ST_CLK_GATE, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %62
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @hws, align 8
  %67 = load i64, i64* @ST_CLK_GATE, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %66, i64 %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @devm_clk_hw_register_clkdev(i32* %65, %struct.TYPE_6__* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %18, %15
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.st_clk_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.TYPE_6__* @clk_hw_register_fixed_rate(i32*, i8*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @clk_hw_register_mux(i32*, i8*, i32, i32, i32, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local %struct.TYPE_6__* @clk_hw_register_gate(i32*, i8*, i8*, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @devm_clk_hw_register_clkdev(i32*, %struct.TYPE_6__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
