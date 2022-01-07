; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-pic32mzda.c_pic32mzda_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/microchip/extr_clk-pic32mzda.c_pic32mzda_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pic32mzda_clk_data = type { %struct.TYPE_8__, %struct.TYPE_9__, %struct.clk**, %struct.pic32_clk_common }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.clk** }
%struct.clk = type { i32 }
%struct.pic32_clk_common = type { i32, %struct.clk*, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [9 x i8] c"posc_clk\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"frc_clk\00", align 1
@__const.pic32mzda_clk_probe.pll_mux_parents = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"pic32-clk: failed to map registers\0A\00", align 1
@POSCCLK = common dso_local global i64 0, align 8
@FRCCLK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"bfrc_clk\00", align 1
@BFRCCLK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"lprc_clk\00", align 1
@LPRCCLK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"usbphy_clk\00", align 1
@UPLLCLK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"microchip,pic32mzda-sosc\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"pic32-clk: dt requests SOSC.\0A\00", align 1
@sosc_clk = common dso_local global i32 0, align 4
@SOSCCLK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"frcdiv_clk\00", align 1
@OSC_FRCDIV_SHIFT = common dso_local global i32 0, align 4
@OSC_FRCDIV_MASK = common dso_local global i32 0, align 4
@CLK_DIVIDER_POWER_OF_TWO = common dso_local global i32 0, align 4
@FRCDIVCLK = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"spll_mux_clk\00", align 1
@PLL_ICLK_SHIFT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"spll_mux_clk: clk register failed\0A\00", align 1
@sys_pll = common dso_local global i32 0, align 4
@PLLCLK = common dso_local global i64 0, align 8
@sys_mux_clk = common dso_local global i32 0, align 4
@SCLK = common dso_local global i64 0, align 8
@PB1CLK = common dso_local global i32 0, align 4
@PB7CLK = common dso_local global i32 0, align 4
@periph_clocks = common dso_local global i32* null, align 8
@REF1CLK = common dso_local global i32 0, align 4
@REF5CLK = common dso_local global i32 0, align 4
@ref_clks = common dso_local global i32* null, align 8
@MAXCLKS = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@pic32mzda_critical_clks = common dso_local global i64* null, align 8
@.str.11 = private unnamed_addr constant [31 x i8] c"clk_prepare_enable(%s) failed\0A\00", align 1
@pic32_fscm_nmi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pic32mzda_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32mzda_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca [2 x i8*], align 16
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pic32mzda_clk_data*, align 8
  %7 = alloca %struct.pic32_clk_common*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca %struct.clk**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([2 x i8*]* @__const.pic32mzda_clk_probe.pll_mux_parents to i8*), i64 16, i1 false)
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.pic32mzda_clk_data* @devm_kzalloc(%struct.TYPE_10__* %20, i32 56, i32 %21)
  store %struct.pic32mzda_clk_data* %22, %struct.pic32mzda_clk_data** %6, align 8
  %23 = load %struct.pic32mzda_clk_data*, %struct.pic32mzda_clk_data** %6, align 8
  %24 = icmp ne %struct.pic32mzda_clk_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %271

28:                                               ; preds = %1
  %29 = load %struct.pic32mzda_clk_data*, %struct.pic32mzda_clk_data** %6, align 8
  %30 = getelementptr inbounds %struct.pic32mzda_clk_data, %struct.pic32mzda_clk_data* %29, i32 0, i32 3
  store %struct.pic32_clk_common* %30, %struct.pic32_clk_common** %7, align 8
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32 @of_node_full_name(%struct.device_node* %32)
  %34 = call %struct.clk* @of_io_request_and_map(%struct.device_node* %31, i32 0, i32 %33)
  %35 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %36 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %35, i32 0, i32 1
  store %struct.clk* %34, %struct.clk** %36, align 8
  %37 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %38 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %37, i32 0, i32 1
  %39 = load %struct.clk*, %struct.clk** %38, align 8
  %40 = call i64 @IS_ERR(%struct.clk* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %28
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %47 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %46, i32 0, i32 1
  %48 = load %struct.clk*, %struct.clk** %47, align 8
  %49 = call i32 @PTR_ERR(%struct.clk* %48)
  store i32 %49, i32* %2, align 4
  br label %271

50:                                               ; preds = %28
  %51 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %52 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %51, i32 0, i32 0
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %57 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %56, i32 0, i32 2
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %57, align 8
  %58 = load %struct.pic32mzda_clk_data*, %struct.pic32mzda_clk_data** %6, align 8
  %59 = getelementptr inbounds %struct.pic32mzda_clk_data, %struct.pic32mzda_clk_data* %58, i32 0, i32 2
  %60 = load %struct.clk**, %struct.clk*** %59, align 8
  %61 = getelementptr inbounds %struct.clk*, %struct.clk** %60, i64 0
  store %struct.clk** %61, %struct.clk*** %10, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call %struct.clk* @clk_register_fixed_rate(%struct.TYPE_10__* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 24000000)
  %65 = load %struct.clk**, %struct.clk*** %10, align 8
  %66 = load i64, i64* @POSCCLK, align 8
  %67 = getelementptr inbounds %struct.clk*, %struct.clk** %65, i64 %66
  store %struct.clk* %64, %struct.clk** %67, align 8
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call %struct.clk* @clk_register_fixed_rate(%struct.TYPE_10__* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 0, i32 8000000)
  %71 = load %struct.clk**, %struct.clk*** %10, align 8
  %72 = load i64, i64* @FRCCLK, align 8
  %73 = getelementptr inbounds %struct.clk*, %struct.clk** %71, i64 %72
  store %struct.clk* %70, %struct.clk** %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call %struct.clk* @clk_register_fixed_rate(%struct.TYPE_10__* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0, i32 8000000)
  %77 = load %struct.clk**, %struct.clk*** %10, align 8
  %78 = load i64, i64* @BFRCCLK, align 8
  %79 = getelementptr inbounds %struct.clk*, %struct.clk** %77, i64 %78
  store %struct.clk* %76, %struct.clk** %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call %struct.clk* @clk_register_fixed_rate(%struct.TYPE_10__* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 0, i32 32000)
  %83 = load %struct.clk**, %struct.clk*** %10, align 8
  %84 = load i64, i64* @LPRCCLK, align 8
  %85 = getelementptr inbounds %struct.clk*, %struct.clk** %83, i64 %84
  store %struct.clk* %82, %struct.clk** %85, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call %struct.clk* @clk_register_fixed_rate(%struct.TYPE_10__* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 0, i32 24000000)
  %89 = load %struct.clk**, %struct.clk*** %10, align 8
  %90 = load i64, i64* @UPLLCLK, align 8
  %91 = getelementptr inbounds %struct.clk*, %struct.clk** %89, i64 %90
  store %struct.clk* %88, %struct.clk** %91, align 8
  %92 = load %struct.device_node*, %struct.device_node** %5, align 8
  %93 = call i64 @of_find_property(%struct.device_node* %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %50
  %96 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %97 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %98 = call %struct.clk* @pic32_sosc_clk_register(i32* @sosc_clk, %struct.pic32_clk_common* %97)
  %99 = load %struct.clk**, %struct.clk*** %10, align 8
  %100 = load i64, i64* @SOSCCLK, align 8
  %101 = getelementptr inbounds %struct.clk*, %struct.clk** %99, i64 %100
  store %struct.clk* %98, %struct.clk** %101, align 8
  br label %102

102:                                              ; preds = %95, %50
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %106 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %105, i32 0, i32 1
  %107 = load %struct.clk*, %struct.clk** %106, align 8
  %108 = load i32, i32* @OSC_FRCDIV_SHIFT, align 4
  %109 = load i32, i32* @OSC_FRCDIV_MASK, align 4
  %110 = load i32, i32* @CLK_DIVIDER_POWER_OF_TWO, align 4
  %111 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %112 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %111, i32 0, i32 0
  %113 = call %struct.clk* @clk_register_divider(%struct.TYPE_10__* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.clk* %107, i32 %108, i32 %109, i32 %110, i32* %112)
  %114 = load %struct.clk**, %struct.clk*** %10, align 8
  %115 = load i64, i64* @FRCDIVCLK, align 8
  %116 = getelementptr inbounds %struct.clk*, %struct.clk** %114, i64 %115
  store %struct.clk* %113, %struct.clk** %116, align 8
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %120 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %121 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %120, i32 0, i32 1
  %122 = load %struct.clk*, %struct.clk** %121, align 8
  %123 = getelementptr inbounds %struct.clk, %struct.clk* %122, i64 32
  %124 = load i32, i32* @PLL_ICLK_SHIFT, align 4
  %125 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %126 = getelementptr inbounds %struct.pic32_clk_common, %struct.pic32_clk_common* %125, i32 0, i32 0
  %127 = call %struct.clk* @clk_register_mux(%struct.TYPE_10__* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %119, i32 2, i32 0, %struct.clk* %123, i32 %124, i32 1, i32 0, i32* %126)
  store %struct.clk* %127, %struct.clk** %8, align 8
  %128 = load %struct.clk*, %struct.clk** %8, align 8
  %129 = call i64 @IS_ERR(%struct.clk* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %102
  %132 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %102
  %134 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %135 = call %struct.clk* @pic32_spll_clk_register(i32* @sys_pll, %struct.pic32_clk_common* %134)
  %136 = load %struct.clk**, %struct.clk*** %10, align 8
  %137 = load i64, i64* @PLLCLK, align 8
  %138 = getelementptr inbounds %struct.clk*, %struct.clk** %136, i64 %137
  store %struct.clk* %135, %struct.clk** %138, align 8
  %139 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %140 = call %struct.clk* @pic32_sys_clk_register(i32* @sys_mux_clk, %struct.pic32_clk_common* %139)
  %141 = load %struct.clk**, %struct.clk*** %10, align 8
  %142 = load i64, i64* @SCLK, align 8
  %143 = getelementptr inbounds %struct.clk*, %struct.clk** %141, i64 %142
  store %struct.clk* %140, %struct.clk** %143, align 8
  %144 = load i32, i32* @PB1CLK, align 4
  store i32 %144, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %145

145:                                              ; preds = %160, %133
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @PB7CLK, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = load i32*, i32** @periph_clocks, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %155 = call %struct.clk* @pic32_periph_clk_register(i32* %153, %struct.pic32_clk_common* %154)
  %156 = load %struct.clk**, %struct.clk*** %10, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.clk*, %struct.clk** %156, i64 %158
  store %struct.clk* %155, %struct.clk** %159, align 8
  br label %160

160:                                              ; preds = %149
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %145

165:                                              ; preds = %145
  %166 = load i32, i32* @REF1CLK, align 4
  store i32 %166, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %167

167:                                              ; preds = %182, %165
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @REF5CLK, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %187

171:                                              ; preds = %167
  %172 = load i32*, i32** @ref_clks, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load %struct.pic32_clk_common*, %struct.pic32_clk_common** %7, align 8
  %177 = call %struct.clk* @pic32_refo_clk_register(i32* %175, %struct.pic32_clk_common* %176)
  %178 = load %struct.clk**, %struct.clk*** %10, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.clk*, %struct.clk** %178, i64 %180
  store %struct.clk* %177, %struct.clk** %181, align 8
  br label %182

182:                                              ; preds = %171
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  br label %167

187:                                              ; preds = %167
  store i32 0, i32* %12, align 4
  br label %188

188:                                              ; preds = %214, %187
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @MAXCLKS, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %217

192:                                              ; preds = %188
  %193 = load %struct.clk**, %struct.clk*** %10, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.clk*, %struct.clk** %193, i64 %195
  %197 = load %struct.clk*, %struct.clk** %196, align 8
  %198 = call i64 @IS_ERR(%struct.clk* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  br label %214

201:                                              ; preds = %192
  %202 = load %struct.clk**, %struct.clk*** %10, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.clk*, %struct.clk** %202, i64 %204
  %206 = load %struct.clk*, %struct.clk** %205, align 8
  %207 = load %struct.clk**, %struct.clk*** %10, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.clk*, %struct.clk** %207, i64 %209
  %211 = load %struct.clk*, %struct.clk** %210, align 8
  %212 = call i32 @__clk_get_name(%struct.clk* %211)
  %213 = call i32 @clk_register_clkdev(%struct.clk* %206, i32* null, i32 %212)
  br label %214

214:                                              ; preds = %201, %200
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %188

217:                                              ; preds = %188
  %218 = load %struct.clk**, %struct.clk*** %10, align 8
  %219 = load %struct.pic32mzda_clk_data*, %struct.pic32mzda_clk_data** %6, align 8
  %220 = getelementptr inbounds %struct.pic32mzda_clk_data, %struct.pic32mzda_clk_data* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  store %struct.clk** %218, %struct.clk*** %221, align 8
  %222 = load i32, i32* @MAXCLKS, align 4
  %223 = load %struct.pic32mzda_clk_data*, %struct.pic32mzda_clk_data** %6, align 8
  %224 = getelementptr inbounds %struct.pic32mzda_clk_data, %struct.pic32mzda_clk_data* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  store i32 %222, i32* %225, align 8
  %226 = load %struct.device_node*, %struct.device_node** %5, align 8
  %227 = load i32, i32* @of_clk_src_onecell_get, align 4
  %228 = load %struct.pic32mzda_clk_data*, %struct.pic32mzda_clk_data** %6, align 8
  %229 = getelementptr inbounds %struct.pic32mzda_clk_data, %struct.pic32mzda_clk_data* %228, i32 0, i32 1
  %230 = call i32 @of_clk_add_provider(%struct.device_node* %226, i32 %227, %struct.TYPE_9__* %229)
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %13, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %217
  %234 = load i32, i32* %13, align 4
  store i32 %234, i32* %2, align 4
  br label %271

235:                                              ; preds = %217
  store i32 0, i32* %12, align 4
  br label %236

236:                                              ; preds = %260, %235
  %237 = load i32, i32* %12, align 4
  %238 = load i64*, i64** @pic32mzda_critical_clks, align 8
  %239 = call i32 @ARRAY_SIZE(i64* %238)
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %241, label %263

241:                                              ; preds = %236
  %242 = load %struct.clk**, %struct.clk*** %10, align 8
  %243 = load i64*, i64** @pic32mzda_critical_clks, align 8
  %244 = load i32, i32* %12, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.clk*, %struct.clk** %242, i64 %247
  %249 = load %struct.clk*, %struct.clk** %248, align 8
  store %struct.clk* %249, %struct.clk** %9, align 8
  %250 = load %struct.clk*, %struct.clk** %9, align 8
  %251 = call i64 @clk_prepare_enable(%struct.clk* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %241
  %254 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %255 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %254, i32 0, i32 0
  %256 = load %struct.clk*, %struct.clk** %9, align 8
  %257 = call i32 @__clk_get_name(%struct.clk* %256)
  %258 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %255, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %253, %241
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %12, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %12, align 4
  br label %236

263:                                              ; preds = %236
  %264 = load i32, i32* @pic32_fscm_nmi, align 4
  %265 = load %struct.pic32mzda_clk_data*, %struct.pic32mzda_clk_data** %6, align 8
  %266 = getelementptr inbounds %struct.pic32mzda_clk_data, %struct.pic32mzda_clk_data* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  %268 = load %struct.pic32mzda_clk_data*, %struct.pic32mzda_clk_data** %6, align 8
  %269 = getelementptr inbounds %struct.pic32mzda_clk_data, %struct.pic32mzda_clk_data* %268, i32 0, i32 0
  %270 = call i32 @register_nmi_notifier(%struct.TYPE_8__* %269)
  store i32 %270, i32* %2, align 4
  br label %271

271:                                              ; preds = %263, %233, %42, %25
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.pic32mzda_clk_data* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #2

declare dso_local %struct.clk* @of_io_request_and_map(%struct.device_node*, i32, i32) #2

declare dso_local i32 @of_node_full_name(%struct.device_node*) #2

declare dso_local i64 @IS_ERR(%struct.clk*) #2

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #2

declare dso_local i32 @PTR_ERR(%struct.clk*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local %struct.clk* @clk_register_fixed_rate(%struct.TYPE_10__*, i8*, i32*, i32, i32) #2

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @pr_info(i8*) #2

declare dso_local %struct.clk* @pic32_sosc_clk_register(i32*, %struct.pic32_clk_common*) #2

declare dso_local %struct.clk* @clk_register_divider(%struct.TYPE_10__*, i8*, i8*, i32, %struct.clk*, i32, i32, i32, i32*) #2

declare dso_local %struct.clk* @clk_register_mux(%struct.TYPE_10__*, i8*, i8**, i32, i32, %struct.clk*, i32, i32, i32, i32*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local %struct.clk* @pic32_spll_clk_register(i32*, %struct.pic32_clk_common*) #2

declare dso_local %struct.clk* @pic32_sys_clk_register(i32*, %struct.pic32_clk_common*) #2

declare dso_local %struct.clk* @pic32_periph_clk_register(i32*, %struct.pic32_clk_common*) #2

declare dso_local %struct.clk* @pic32_refo_clk_register(i32*, %struct.pic32_clk_common*) #2

declare dso_local i32 @clk_register_clkdev(%struct.clk*, i32*, i32) #2

declare dso_local i32 @__clk_get_name(%struct.clk*) #2

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i64 @clk_prepare_enable(%struct.clk*) #2

declare dso_local i32 @register_nmi_notifier(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
