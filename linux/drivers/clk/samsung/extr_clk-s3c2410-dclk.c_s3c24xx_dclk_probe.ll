; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_dclk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_dclk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.s3c24xx_dclk = type { %struct.TYPE_8__, %struct.TYPE_8__, i32, %struct.clk_hw*, %struct.TYPE_6__, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.clk_hw = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.clk_hw** }
%struct.resource = type { i32 }
%struct.s3c24xx_dclk_drv_data = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@clk_data = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@DCLK_MAX_CLKS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mux_dclk0\00", align 1
@MUX_DCLK0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"mux_dclk1\00", align 1
@MUX_DCLK1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"div_dclk0\00", align 1
@DIV_DCLK0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"div_dclk1\00", align 1
@DIV_DCLK1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"gate_dclk0\00", align 1
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@GATE_DCLK0 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"gate_dclk1\00", align 1
@GATE_DCLK1 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"clkout0\00", align 1
@MUX_CLKOUT0 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"clkout1\00", align 1
@MUX_CLKOUT1 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"clock %d failed to register\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"dclk0\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"dclk1\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to register aliases, %d\0A\00", align 1
@s3c24xx_dclk0_div_notify = common dso_local global i32 0, align 4
@s3c24xx_dclk1_div_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_dclk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_dclk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.s3c24xx_dclk*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.s3c24xx_dclk_drv_data*, align 8
  %7 = alloca %struct.clk_hw**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @clk_data, i32 0, i32 0), align 4
  %14 = load i32, i32* @DCLK_MAX_CLKS, align 4
  %15 = call i32 @struct_size(%struct.s3c24xx_dclk* %12, i32 %13, i32 %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.s3c24xx_dclk* @devm_kzalloc(i32* %11, i32 %15, i32 %16)
  store %struct.s3c24xx_dclk* %17, %struct.s3c24xx_dclk** %4, align 8
  %18 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %19 = icmp ne %struct.s3c24xx_dclk* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %316

23:                                               ; preds = %1
  %24 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %25 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.clk_hw**, %struct.clk_hw*** %26, align 8
  store %struct.clk_hw** %27, %struct.clk_hw*** %7, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %31 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %30, i32 0, i32 5
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* @DCLK_MAX_CLKS, align 4
  %33 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %34 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.s3c24xx_dclk* %37)
  %39 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %40 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %39, i32 0, i32 2
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load i32, i32* @IORESOURCE_MEM, align 4
  %44 = call %struct.resource* @platform_get_resource(%struct.platform_device* %42, i32 %43, i32 0)
  store %struct.resource* %44, %struct.resource** %5, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.resource*, %struct.resource** %5, align 8
  %48 = call %struct.clk_hw* @devm_ioremap_resource(i32* %46, %struct.resource* %47)
  %49 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %50 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %49, i32 0, i32 3
  store %struct.clk_hw* %48, %struct.clk_hw** %50, align 8
  %51 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %52 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %51, i32 0, i32 3
  %53 = load %struct.clk_hw*, %struct.clk_hw** %52, align 8
  %54 = call i64 @IS_ERR(%struct.clk_hw* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %23
  %57 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %58 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %57, i32 0, i32 3
  %59 = load %struct.clk_hw*, %struct.clk_hw** %58, align 8
  %60 = call i32 @PTR_ERR(%struct.clk_hw* %59)
  store i32 %60, i32* %2, align 4
  br label %316

61:                                               ; preds = %23
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = call %struct.TYPE_7__* @platform_get_device_id(%struct.platform_device* %62)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.s3c24xx_dclk_drv_data*
  store %struct.s3c24xx_dclk_drv_data* %66, %struct.s3c24xx_dclk_drv_data** %6, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.s3c24xx_dclk_drv_data*, %struct.s3c24xx_dclk_drv_data** %6, align 8
  %70 = getelementptr inbounds %struct.s3c24xx_dclk_drv_data, %struct.s3c24xx_dclk_drv_data* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.s3c24xx_dclk_drv_data*, %struct.s3c24xx_dclk_drv_data** %6, align 8
  %73 = getelementptr inbounds %struct.s3c24xx_dclk_drv_data, %struct.s3c24xx_dclk_drv_data* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %76 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %75, i32 0, i32 3
  %77 = load %struct.clk_hw*, %struct.clk_hw** %76, align 8
  %78 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %79 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %78, i32 0, i32 2
  %80 = call %struct.clk_hw* @clk_hw_register_mux(i32* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i32 0, %struct.clk_hw* %77, i32 1, i32 1, i32 0, i32* %79)
  %81 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %82 = load i64, i64* @MUX_DCLK0, align 8
  %83 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %81, i64 %82
  store %struct.clk_hw* %80, %struct.clk_hw** %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load %struct.s3c24xx_dclk_drv_data*, %struct.s3c24xx_dclk_drv_data** %6, align 8
  %87 = getelementptr inbounds %struct.s3c24xx_dclk_drv_data, %struct.s3c24xx_dclk_drv_data* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.s3c24xx_dclk_drv_data*, %struct.s3c24xx_dclk_drv_data** %6, align 8
  %90 = getelementptr inbounds %struct.s3c24xx_dclk_drv_data, %struct.s3c24xx_dclk_drv_data* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %93 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %92, i32 0, i32 3
  %94 = load %struct.clk_hw*, %struct.clk_hw** %93, align 8
  %95 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %96 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %95, i32 0, i32 2
  %97 = call %struct.clk_hw* @clk_hw_register_mux(i32* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %91, i32 0, %struct.clk_hw* %94, i32 17, i32 1, i32 0, i32* %96)
  %98 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %99 = load i64, i64* @MUX_DCLK1, align 8
  %100 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %98, i64 %99
  store %struct.clk_hw* %97, %struct.clk_hw** %100, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %104 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %103, i32 0, i32 3
  %105 = load %struct.clk_hw*, %struct.clk_hw** %104, align 8
  %106 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %107 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %106, i32 0, i32 2
  %108 = call %struct.clk_hw* @clk_hw_register_divider(i32* %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, %struct.clk_hw* %105, i32 4, i32 4, i32 0, i32* %107)
  %109 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %110 = load i64, i64* @DIV_DCLK0, align 8
  %111 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %109, i64 %110
  store %struct.clk_hw* %108, %struct.clk_hw** %111, align 8
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %115 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %114, i32 0, i32 3
  %116 = load %struct.clk_hw*, %struct.clk_hw** %115, align 8
  %117 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %118 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %117, i32 0, i32 2
  %119 = call %struct.clk_hw* @clk_hw_register_divider(i32* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.clk_hw* %116, i32 20, i32 4, i32 0, i32* %118)
  %120 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %121 = load i64, i64* @DIV_DCLK1, align 8
  %122 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %120, i64 %121
  store %struct.clk_hw* %119, %struct.clk_hw** %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %126 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %127 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %126, i32 0, i32 3
  %128 = load %struct.clk_hw*, %struct.clk_hw** %127, align 8
  %129 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %130 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %129, i32 0, i32 2
  %131 = call %struct.clk_hw* @clk_hw_register_gate(i32* %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %125, %struct.clk_hw* %128, i32 0, i32 0, i32* %130)
  %132 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %133 = load i64, i64* @GATE_DCLK0, align 8
  %134 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %132, i64 %133
  store %struct.clk_hw* %131, %struct.clk_hw** %134, align 8
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %138 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %139 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %138, i32 0, i32 3
  %140 = load %struct.clk_hw*, %struct.clk_hw** %139, align 8
  %141 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %142 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %141, i32 0, i32 2
  %143 = call %struct.clk_hw* @clk_hw_register_gate(i32* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %137, %struct.clk_hw* %140, i32 16, i32 0, i32* %142)
  %144 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %145 = load i64, i64* @GATE_DCLK1, align 8
  %146 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %144, i64 %145
  store %struct.clk_hw* %143, %struct.clk_hw** %146, align 8
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = load %struct.s3c24xx_dclk_drv_data*, %struct.s3c24xx_dclk_drv_data** %6, align 8
  %150 = getelementptr inbounds %struct.s3c24xx_dclk_drv_data, %struct.s3c24xx_dclk_drv_data* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.s3c24xx_dclk_drv_data*, %struct.s3c24xx_dclk_drv_data** %6, align 8
  %153 = getelementptr inbounds %struct.s3c24xx_dclk_drv_data, %struct.s3c24xx_dclk_drv_data* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call %struct.clk_hw* @s3c24xx_register_clkout(i32* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %151, i32 %154, i32 4, i32 7)
  %156 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %157 = load i64, i64* @MUX_CLKOUT0, align 8
  %158 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %156, i64 %157
  store %struct.clk_hw* %155, %struct.clk_hw** %158, align 8
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = load %struct.s3c24xx_dclk_drv_data*, %struct.s3c24xx_dclk_drv_data** %6, align 8
  %162 = getelementptr inbounds %struct.s3c24xx_dclk_drv_data, %struct.s3c24xx_dclk_drv_data* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.s3c24xx_dclk_drv_data*, %struct.s3c24xx_dclk_drv_data** %6, align 8
  %165 = getelementptr inbounds %struct.s3c24xx_dclk_drv_data, %struct.s3c24xx_dclk_drv_data* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call %struct.clk_hw* @s3c24xx_register_clkout(i32* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %163, i32 %166, i32 8, i32 7)
  %168 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %169 = load i64, i64* @MUX_CLKOUT1, align 8
  %170 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %168, i64 %169
  store %struct.clk_hw* %167, %struct.clk_hw** %170, align 8
  store i32 0, i32* %9, align 4
  br label %171

171:                                              ; preds = %195, %61
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @DCLK_MAX_CLKS, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %198

175:                                              ; preds = %171
  %176 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %176, i64 %178
  %180 = load %struct.clk_hw*, %struct.clk_hw** %179, align 8
  %181 = call i64 @IS_ERR(%struct.clk_hw* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %175
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @dev_err(i32* %185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  %188 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %188, i64 %190
  %192 = load %struct.clk_hw*, %struct.clk_hw** %191, align 8
  %193 = call i32 @PTR_ERR(%struct.clk_hw* %192)
  store i32 %193, i32* %8, align 4
  br label %283

194:                                              ; preds = %175
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %171

198:                                              ; preds = %171
  %199 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %200 = load i64, i64* @MUX_DCLK0, align 8
  %201 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %199, i64 %200
  %202 = load %struct.clk_hw*, %struct.clk_hw** %201, align 8
  %203 = call i32 @clk_hw_register_clkdev(%struct.clk_hw* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* null)
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %198
  %207 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %208 = load i64, i64* @MUX_DCLK1, align 8
  %209 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %207, i64 %208
  %210 = load %struct.clk_hw*, %struct.clk_hw** %209, align 8
  %211 = call i32 @clk_hw_register_clkdev(%struct.clk_hw* %210, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32* null)
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %206, %198
  %213 = load i32, i32* %8, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %212
  %216 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %217 = load i64, i64* @MUX_CLKOUT0, align 8
  %218 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %216, i64 %217
  %219 = load %struct.clk_hw*, %struct.clk_hw** %218, align 8
  %220 = call i32 @clk_hw_register_clkdev(%struct.clk_hw* %219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* null)
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %215, %212
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %221
  %225 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %226 = load i64, i64* @MUX_CLKOUT1, align 8
  %227 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %225, i64 %226
  %228 = load %struct.clk_hw*, %struct.clk_hw** %227, align 8
  %229 = call i32 @clk_hw_register_clkdev(%struct.clk_hw* %228, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* null)
  store i32 %229, i32* %8, align 4
  br label %230

230:                                              ; preds = %224, %221
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @dev_err(i32* %235, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %236)
  br label %283

238:                                              ; preds = %230
  %239 = load i32, i32* @s3c24xx_dclk0_div_notify, align 4
  %240 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %241 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  store i32 %239, i32* %242, align 8
  %243 = load i32, i32* @s3c24xx_dclk1_div_notify, align 4
  %244 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %245 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  store i32 %243, i32* %246, align 4
  %247 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %248 = load i64, i64* @DIV_DCLK0, align 8
  %249 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %247, i64 %248
  %250 = load %struct.clk_hw*, %struct.clk_hw** %249, align 8
  %251 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %254 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %253, i32 0, i32 0
  %255 = call i32 @clk_notifier_register(i32 %252, %struct.TYPE_8__* %254)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %238
  br label %283

259:                                              ; preds = %238
  %260 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %261 = load i64, i64* @DIV_DCLK1, align 8
  %262 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %260, i64 %261
  %263 = load %struct.clk_hw*, %struct.clk_hw** %262, align 8
  %264 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %267 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %266, i32 0, i32 1
  %268 = call i32 @clk_notifier_register(i32 %265, %struct.TYPE_8__* %267)
  store i32 %268, i32* %8, align 4
  %269 = load i32, i32* %8, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %259
  br label %273

272:                                              ; preds = %259
  store i32 0, i32* %2, align 4
  br label %316

273:                                              ; preds = %271
  %274 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %275 = load i64, i64* @DIV_DCLK0, align 8
  %276 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %274, i64 %275
  %277 = load %struct.clk_hw*, %struct.clk_hw** %276, align 8
  %278 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.s3c24xx_dclk*, %struct.s3c24xx_dclk** %4, align 8
  %281 = getelementptr inbounds %struct.s3c24xx_dclk, %struct.s3c24xx_dclk* %280, i32 0, i32 0
  %282 = call i32 @clk_notifier_unregister(i32 %279, %struct.TYPE_8__* %281)
  br label %283

283:                                              ; preds = %273, %258, %233, %183
  store i32 0, i32* %9, align 4
  br label %284

284:                                              ; preds = %311, %283
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* @DCLK_MAX_CLKS, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %314

288:                                              ; preds = %284
  %289 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %289, i64 %291
  %293 = load %struct.clk_hw*, %struct.clk_hw** %292, align 8
  %294 = icmp ne %struct.clk_hw* %293, null
  br i1 %294, label %295, label %310

295:                                              ; preds = %288
  %296 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %296, i64 %298
  %300 = load %struct.clk_hw*, %struct.clk_hw** %299, align 8
  %301 = call i64 @IS_ERR(%struct.clk_hw* %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %310, label %303

303:                                              ; preds = %295
  %304 = load %struct.clk_hw**, %struct.clk_hw*** %7, align 8
  %305 = load i32, i32* %9, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.clk_hw*, %struct.clk_hw** %304, i64 %306
  %308 = load %struct.clk_hw*, %struct.clk_hw** %307, align 8
  %309 = call i32 @clk_hw_unregister(%struct.clk_hw* %308)
  br label %310

310:                                              ; preds = %303, %295, %288
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %9, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %9, align 4
  br label %284

314:                                              ; preds = %284
  %315 = load i32, i32* %8, align 4
  store i32 %315, i32* %2, align 4
  br label %316

316:                                              ; preds = %314, %272, %56, %20
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

declare dso_local %struct.s3c24xx_dclk* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.s3c24xx_dclk*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.s3c24xx_dclk*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk_hw* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk_hw*) #1

declare dso_local i32 @PTR_ERR(%struct.clk_hw*) #1

declare dso_local %struct.TYPE_7__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.clk_hw* @clk_hw_register_mux(i32*, i8*, i32, i32, i32, %struct.clk_hw*, i32, i32, i32, i32*) #1

declare dso_local %struct.clk_hw* @clk_hw_register_divider(i32*, i8*, i8*, i32, %struct.clk_hw*, i32, i32, i32, i32*) #1

declare dso_local %struct.clk_hw* @clk_hw_register_gate(i32*, i8*, i8*, i32, %struct.clk_hw*, i32, i32, i32*) #1

declare dso_local %struct.clk_hw* @s3c24xx_register_clkout(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @clk_hw_register_clkdev(%struct.clk_hw*, i8*, i32*) #1

declare dso_local i32 @clk_notifier_register(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @clk_notifier_unregister(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @clk_hw_unregister(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
