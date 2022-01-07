; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/axis/extr_clk-artpec6.c_of_artpec6_clkctrl_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/axis/extr_clk-artpec6.c_of_artpec6_clkctrl_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.clk**, i32* }
%struct.TYPE_4__ = type { i32, %struct.clk** }
%struct.clk = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sys_refclk\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@clkdata = common dso_local global %struct.TYPE_5__* null, align 8
@ARTPEC6_CLK_NUMCLOCKS = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@ARTPEC6_CLK_CPU = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"cpu_periph\00", align 1
@ARTPEC6_CLK_CPU_PERIPH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"uart_pclk\00", align 1
@ARTPEC6_CLK_UART_PCLK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"uart_ref\00", align 1
@ARTPEC6_CLK_UART_REFCLK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"spi_pclk\00", align 1
@ARTPEC6_CLK_SPI_PCLK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"spi_sspclk\00", align 1
@ARTPEC6_CLK_SPI_SSPCLK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"dbg_pclk\00", align 1
@ARTPEC6_CLK_DBG_PCLK = common dso_local global i64 0, align 8
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @of_artpec6_clkctrl_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @of_artpec6_clkctrl_setup(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.clk**, align 8
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %9 = load %struct.device_node*, %struct.device_node** %2, align 8
  %10 = call i32 @of_property_match_string(%struct.device_node* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %113

14:                                               ; preds = %1
  %15 = load %struct.device_node*, %struct.device_node** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i8* @of_clk_get_parent_name(%struct.device_node* %15, i32 %16)
  store i8* %17, i8** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.TYPE_5__* @kzalloc(i32 32, i32 %18)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** @clkdata, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clkdata, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %113

23:                                               ; preds = %14
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clkdata, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.clk**, %struct.clk*** %25, align 8
  store %struct.clk** %26, %struct.clk*** %8, align 8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %39, %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ARTPEC6_CLK_NUMCLOCKS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.clk* @ERR_PTR(i32 %33)
  %35 = load %struct.clk**, %struct.clk*** %8, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.clk*, %struct.clk** %35, i64 %37
  store %struct.clk* %34, %struct.clk** %38, align 8
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load %struct.device_node*, %struct.device_node** %2, align 8
  %44 = call i32* @of_iomap(%struct.device_node* %43, i32 0)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clkdata, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clkdata, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clkdata, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @readl(i32* %55)
  %57 = ashr i32 %56, 6
  %58 = and i32 %57, 3
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  switch i32 %59, label %64 [
    i32 0, label %60
    i32 1, label %61
    i32 2, label %62
    i32 3, label %63
  ]

60:                                               ; preds = %42
  store i32 4, i32* %6, align 4
  store i32 85, i32* %7, align 4
  br label %64

61:                                               ; preds = %42
  store i32 6, i32* %6, align 4
  store i32 112, i32* %7, align 4
  br label %64

62:                                               ; preds = %42
  store i32 4, i32* %6, align 4
  store i32 64, i32* %7, align 4
  br label %64

63:                                               ; preds = %42
  store i32 8, i32* %6, align 4
  store i32 106, i32* %7, align 4
  br label %64

64:                                               ; preds = %42, %63, %62, %61, %60
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call %struct.clk* @clk_register_fixed_factor(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %65, i32 0, i32 %66, i32 %67)
  %69 = load %struct.clk**, %struct.clk*** %8, align 8
  %70 = load i64, i64* @ARTPEC6_CLK_CPU, align 8
  %71 = getelementptr inbounds %struct.clk*, %struct.clk** %69, i64 %70
  store %struct.clk* %68, %struct.clk** %71, align 8
  %72 = call %struct.clk* @clk_register_fixed_factor(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 1, i32 2)
  %73 = load %struct.clk**, %struct.clk*** %8, align 8
  %74 = load i64, i64* @ARTPEC6_CLK_CPU_PERIPH, align 8
  %75 = getelementptr inbounds %struct.clk*, %struct.clk** %73, i64 %74
  store %struct.clk* %72, %struct.clk** %75, align 8
  %76 = call %struct.clk* @clk_register_fixed_factor(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 1, i32 8)
  %77 = load %struct.clk**, %struct.clk*** %8, align 8
  %78 = load i64, i64* @ARTPEC6_CLK_UART_PCLK, align 8
  %79 = getelementptr inbounds %struct.clk*, %struct.clk** %77, i64 %78
  store %struct.clk* %76, %struct.clk** %79, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = call %struct.clk* @clk_register_fixed_rate(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %80, i32 0, i32 50000000)
  %82 = load %struct.clk**, %struct.clk*** %8, align 8
  %83 = load i64, i64* @ARTPEC6_CLK_UART_REFCLK, align 8
  %84 = getelementptr inbounds %struct.clk*, %struct.clk** %82, i64 %83
  store %struct.clk* %81, %struct.clk** %84, align 8
  %85 = call %struct.clk* @clk_register_fixed_factor(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 1, i32 8)
  %86 = load %struct.clk**, %struct.clk*** %8, align 8
  %87 = load i64, i64* @ARTPEC6_CLK_SPI_PCLK, align 8
  %88 = getelementptr inbounds %struct.clk*, %struct.clk** %86, i64 %87
  store %struct.clk* %85, %struct.clk** %88, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = call %struct.clk* @clk_register_fixed_rate(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %89, i32 0, i32 50000000)
  %91 = load %struct.clk**, %struct.clk*** %8, align 8
  %92 = load i64, i64* @ARTPEC6_CLK_SPI_SSPCLK, align 8
  %93 = getelementptr inbounds %struct.clk*, %struct.clk** %91, i64 %92
  store %struct.clk* %90, %struct.clk** %93, align 8
  %94 = call %struct.clk* @clk_register_fixed_factor(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 1, i32 8)
  %95 = load %struct.clk**, %struct.clk*** %8, align 8
  %96 = load i64, i64* @ARTPEC6_CLK_DBG_PCLK, align 8
  %97 = getelementptr inbounds %struct.clk*, %struct.clk** %95, i64 %96
  store %struct.clk* %94, %struct.clk** %97, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clkdata, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load %struct.clk**, %struct.clk*** %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clkdata, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store %struct.clk** %100, %struct.clk*** %103, align 8
  %104 = load i32, i32* @ARTPEC6_CLK_NUMCLOCKS, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clkdata, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.device_node*, %struct.device_node** %2, align 8
  %109 = load i32, i32* @of_clk_src_onecell_get, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clkdata, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = call i32 @of_clk_add_provider(%struct.device_node* %108, i32 %109, %struct.TYPE_4__* %111)
  br label %113

113:                                              ; preds = %64, %22, %13
  ret void
}

declare dso_local i32 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

declare dso_local i8* @of_clk_get_parent_name(%struct.device_node*, i32) #1

declare dso_local %struct.TYPE_5__* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i32* @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local %struct.clk* @clk_register_fixed_factor(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.clk* @clk_register_fixed_rate(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
