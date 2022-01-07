; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_hw_config_pdata.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_hw_config_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32, i32, %struct.ar8327_data* }
%struct.ar8327_data = type { i32, i8*, i8* }
%struct.ar8327_platform_data = type { i32, i32*, %struct.TYPE_3__*, %struct.ar8327_led_cfg*, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ar8327_led_cfg = type { i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR8337_PAD_MAC06_EXCHANGE_EN = common dso_local global i32 0, align 4
@AR8327_REG_PAD0_MODE = common dso_local global i32 0, align 4
@AR8327_REG_PAD5_MODE = common dso_local global i32 0, align 4
@AR8327_REG_PAD6_MODE = common dso_local global i32 0, align 4
@AR8327_REG_POWER_ON_STRIP = common dso_local global i32 0, align 4
@AR8327_POWER_ON_STRIP_LED_OPEN_EN = common dso_local global i32 0, align 4
@AR8327_REG_LED_CTRL0 = common dso_local global i32 0, align 4
@AR8327_REG_LED_CTRL1 = common dso_local global i32 0, align 4
@AR8327_REG_LED_CTRL2 = common dso_local global i32 0, align 4
@AR8327_REG_LED_CTRL3 = common dso_local global i32 0, align 4
@AR8327_POWER_ON_STRIP_POWER_ON_SEL = common dso_local global i32 0, align 4
@AR8327_SGMII_CTRL_EN_PLL = common dso_local global i32 0, align 4
@AR8327_SGMII_CTRL_EN_RX = common dso_local global i32 0, align 4
@AR8327_SGMII_CTRL_EN_TX = common dso_local global i32 0, align 4
@AR8327_REG_SGMII_CTRL = common dso_local global i32 0, align 4
@AR8327_POWER_ON_STRIP_SERDES_AEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8xxx_priv*, %struct.ar8327_platform_data*)* @ar8327_hw_config_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_hw_config_pdata(%struct.ar8xxx_priv* %0, %struct.ar8327_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca %struct.ar8327_platform_data*, align 8
  %6 = alloca %struct.ar8327_led_cfg*, align 8
  %7 = alloca %struct.ar8327_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store %struct.ar8327_platform_data* %1, %struct.ar8327_platform_data** %5, align 8
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %12, i32 0, i32 2
  %14 = load %struct.ar8327_data*, %struct.ar8327_data** %13, align 8
  store %struct.ar8327_data* %14, %struct.ar8327_data** %7, align 8
  %15 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %16 = icmp ne %struct.ar8327_platform_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %237

20:                                               ; preds = %2
  %21 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %22 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %25 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %27 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %26, i32 0, i32 8
  %28 = call i8* @ar8327_get_port_init_status(i32* %27)
  %29 = load %struct.ar8327_data*, %struct.ar8327_data** %7, align 8
  %30 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %32 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %31, i32 0, i32 7
  %33 = call i8* @ar8327_get_port_init_status(i32* %32)
  %34 = load %struct.ar8327_data*, %struct.ar8327_data** %7, align 8
  %35 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %37 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %36, i32 0, i32 6
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @ar8327_get_pad_cfg(%struct.TYPE_4__* %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %41 = call i64 @chip_is_ar8337(%struct.ar8xxx_priv* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %20
  %44 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %45 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %44, i32 0, i32 6
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @AR8337_PAD_MAC06_EXCHANGE_EN, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %50, %43, %20
  %55 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %56 = load i32, i32* @AR8327_REG_PAD0_MODE, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %55, i32 %56, i32 %57)
  %59 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %60 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %59, i32 0, i32 5
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @ar8327_get_pad_cfg(%struct.TYPE_4__* %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %64 = load i32, i32* @AR8327_REG_PAD5_MODE, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %63, i32 %64, i32 %65)
  %67 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %68 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %67, i32 0, i32 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @ar8327_get_pad_cfg(%struct.TYPE_4__* %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %72 = load i32, i32* @AR8327_REG_PAD6_MODE, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %71, i32 %72, i32 %73)
  %75 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %76 = load i32, i32* @AR8327_REG_POWER_ON_STRIP, align 4
  %77 = call i32 @ar8xxx_read(%struct.ar8xxx_priv* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %9, align 4
  %79 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %80 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %79, i32 0, i32 3
  %81 = load %struct.ar8327_led_cfg*, %struct.ar8327_led_cfg** %80, align 8
  store %struct.ar8327_led_cfg* %81, %struct.ar8327_led_cfg** %6, align 8
  %82 = load %struct.ar8327_led_cfg*, %struct.ar8327_led_cfg** %6, align 8
  %83 = icmp ne %struct.ar8327_led_cfg* %82, null
  br i1 %83, label %84, label %131

84:                                               ; preds = %54
  %85 = load %struct.ar8327_led_cfg*, %struct.ar8327_led_cfg** %6, align 8
  %86 = getelementptr inbounds %struct.ar8327_led_cfg, %struct.ar8327_led_cfg* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @AR8327_POWER_ON_STRIP_LED_OPEN_EN, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %98

93:                                               ; preds = %84
  %94 = load i32, i32* @AR8327_POWER_ON_STRIP_LED_OPEN_EN, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %93, %89
  %99 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %100 = load i32, i32* @AR8327_REG_LED_CTRL0, align 4
  %101 = load %struct.ar8327_led_cfg*, %struct.ar8327_led_cfg** %6, align 8
  %102 = getelementptr inbounds %struct.ar8327_led_cfg, %struct.ar8327_led_cfg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %99, i32 %100, i32 %103)
  %105 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %106 = load i32, i32* @AR8327_REG_LED_CTRL1, align 4
  %107 = load %struct.ar8327_led_cfg*, %struct.ar8327_led_cfg** %6, align 8
  %108 = getelementptr inbounds %struct.ar8327_led_cfg, %struct.ar8327_led_cfg* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %105, i32 %106, i32 %109)
  %111 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %112 = load i32, i32* @AR8327_REG_LED_CTRL2, align 4
  %113 = load %struct.ar8327_led_cfg*, %struct.ar8327_led_cfg** %6, align 8
  %114 = getelementptr inbounds %struct.ar8327_led_cfg, %struct.ar8327_led_cfg* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %111, i32 %112, i32 %115)
  %117 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %118 = load i32, i32* @AR8327_REG_LED_CTRL3, align 4
  %119 = load %struct.ar8327_led_cfg*, %struct.ar8327_led_cfg** %6, align 8
  %120 = getelementptr inbounds %struct.ar8327_led_cfg, %struct.ar8327_led_cfg* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %117, i32 %118, i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %98
  %127 = load i32, i32* @AR8327_POWER_ON_STRIP_POWER_ON_SEL, align 4
  %128 = load i32, i32* %9, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %126, %98
  br label %131

131:                                              ; preds = %130, %54
  %132 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %133 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %132, i32 0, i32 2
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = icmp ne %struct.TYPE_3__* %134, null
  br i1 %135, label %136, label %184

136:                                              ; preds = %131
  %137 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %138 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %137, i32 0, i32 2
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %10, align 4
  %142 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %143 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %154

146:                                              ; preds = %136
  %147 = load i32, i32* @AR8327_SGMII_CTRL_EN_PLL, align 4
  %148 = load i32, i32* @AR8327_SGMII_CTRL_EN_RX, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @AR8327_SGMII_CTRL_EN_TX, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %10, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %10, align 4
  br label %163

154:                                              ; preds = %136
  %155 = load i32, i32* @AR8327_SGMII_CTRL_EN_PLL, align 4
  %156 = load i32, i32* @AR8327_SGMII_CTRL_EN_RX, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @AR8327_SGMII_CTRL_EN_TX, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %10, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %154, %146
  %164 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %165 = load i32, i32* @AR8327_REG_SGMII_CTRL, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %164, i32 %165, i32 %166)
  %168 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %169 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %168, i32 0, i32 2
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %163
  %175 = load i32, i32* @AR8327_POWER_ON_STRIP_SERDES_AEN, align 4
  %176 = xor i32 %175, -1
  %177 = load i32, i32* %9, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* %9, align 4
  br label %183

179:                                              ; preds = %163
  %180 = load i32, i32* @AR8327_POWER_ON_STRIP_SERDES_AEN, align 4
  %181 = load i32, i32* %9, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %179, %174
  br label %184

184:                                              ; preds = %183, %131
  %185 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %186 = load i32, i32* @AR8327_REG_POWER_ON_STRIP, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @ar8xxx_write(%struct.ar8xxx_priv* %185, i32 %186, i32 %187)
  %189 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %190 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %236

193:                                              ; preds = %184
  %194 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %195 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %236

198:                                              ; preds = %193
  %199 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %200 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = sext i32 %201 to i64
  %203 = mul i64 %202, 8
  %204 = trunc i64 %203 to i32
  %205 = load i32, i32* @GFP_KERNEL, align 4
  %206 = call i32 @kzalloc(i32 %204, i32 %205)
  %207 = load %struct.ar8327_data*, %struct.ar8327_data** %7, align 8
  %208 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load %struct.ar8327_data*, %struct.ar8327_data** %7, align 8
  %210 = getelementptr inbounds %struct.ar8327_data, %struct.ar8327_data* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %198
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %3, align 4
  br label %237

216:                                              ; preds = %198
  store i32 0, i32* %11, align 4
  br label %217

217:                                              ; preds = %232, %216
  %218 = load i32, i32* %11, align 4
  %219 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %220 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %235

223:                                              ; preds = %217
  %224 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %225 = load %struct.ar8327_platform_data*, %struct.ar8327_platform_data** %5, align 8
  %226 = getelementptr inbounds %struct.ar8327_platform_data, %struct.ar8327_platform_data* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = call i32 @ar8327_led_create(%struct.ar8xxx_priv* %224, i32* %230)
  br label %232

232:                                              ; preds = %223
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %11, align 4
  br label %217

235:                                              ; preds = %217
  br label %236

236:                                              ; preds = %235, %193, %184
  store i32 0, i32* %3, align 4
  br label %237

237:                                              ; preds = %236, %213, %17
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i8* @ar8327_get_port_init_status(i32*) #1

declare dso_local i32 @ar8327_get_pad_cfg(%struct.TYPE_4__*) #1

declare dso_local i64 @chip_is_ar8337(%struct.ar8xxx_priv*) #1

declare dso_local i32 @ar8xxx_write(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @ar8xxx_read(%struct.ar8xxx_priv*, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @ar8327_led_create(%struct.ar8xxx_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
