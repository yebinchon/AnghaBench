; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_mac_port_setup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_mac_port_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i32 }

@MHWSTRAP = common dso_local global i32 0, align 4
@P6_INTF_DIS = common dso_local global i32 0, align 4
@P5_INTF_MODE_RGMII = common dso_local global i32 0, align 4
@P5_INTF_DIS_S = common dso_local global i32 0, align 4
@P5_INTF_SEL_GMAC5 = common dso_local global i32 0, align 4
@FORCE_MODE = common dso_local global i32 0, align 4
@IPG_96BIT_WITH_SHORT_IPG = common dso_local global i32 0, align 4
@IPG_CFG_S = common dso_local global i32 0, align 4
@MAC_MODE = common dso_local global i32 0, align 4
@MAC_TX_EN = common dso_local global i32 0, align 4
@MAC_RX_EN = common dso_local global i32 0, align 4
@BKOFF_EN = common dso_local global i32 0, align 4
@BACKPR_EN = common dso_local global i32 0, align 4
@FORCE_LINK = common dso_local global i32 0, align 4
@FORCE_RX_FC = common dso_local global i32 0, align 4
@FORCE_TX_FC = common dso_local global i32 0, align 4
@FORCE_SPD_S = common dso_local global i32 0, align 4
@FORCE_DPX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s is not supported by port5\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"phy-address\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Only PHY 0/4 can be connected to Port 5\0A\00", align 1
@P5_PHY0_SEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s is not supported by port6\0A\00", align 1
@P6ECR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*)* @mt7530_mac_port_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_mac_port_setup(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %9 = load i32, i32* @MHWSTRAP, align 4
  %10 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @P6_INTF_DIS, align 4
  %12 = load i32, i32* @P5_INTF_MODE_RGMII, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @P5_INTF_DIS_S, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @P5_INTF_SEL_GMAC5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %23 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @FORCE_MODE, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @P5_INTF_DIS_S, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %139

32:                                               ; preds = %1
  %33 = load i32, i32* @IPG_96BIT_WITH_SHORT_IPG, align 4
  %34 = load i32, i32* @IPG_CFG_S, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @MAC_MODE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MAC_TX_EN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MAC_RX_EN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @BKOFF_EN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @BACKPR_EN, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %47 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %32
  %52 = load i32, i32* @FORCE_MODE, align 4
  %53 = load i32, i32* @FORCE_LINK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FORCE_RX_FC, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FORCE_TX_FC, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %62 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FORCE_SPD_S, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %70 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %51
  %75 = load i32, i32* @FORCE_DPX, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %51
  br label %79

79:                                               ; preds = %78, %32
  %80 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %81 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %89 [
    i32 130, label %84
    i32 131, label %84
    i32 129, label %85
  ]

84:                                               ; preds = %79, %79
  br label %103

85:                                               ; preds = %79
  %86 = load i32, i32* @P5_INTF_MODE_RGMII, align 4
  %87 = load i32, i32* %3, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %3, align 4
  br label %103

89:                                               ; preds = %79
  %90 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %91 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %94 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @phy_modes(i32 %96)
  %98 = call i32 (i32, i8*, ...) @dev_info(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @FORCE_MODE, align 4
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @P5_INTF_DIS_S, align 4
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %89, %85, %84
  %104 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %105 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @of_property_read_u32(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %140

111:                                              ; preds = %103
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 4
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %119 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i32, i8*, ...) @dev_info(i32 %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %140

122:                                              ; preds = %114, %111
  %123 = load i32, i32* @P5_INTF_SEL_GMAC5, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %3, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %3, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i32, i32* @P5_PHY0_SEL, align 4
  %131 = load i32, i32* %3, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %3, align 4
  br label %138

133:                                              ; preds = %122
  %134 = load i32, i32* @P5_PHY0_SEL, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %3, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %133, %129
  br label %139

139:                                              ; preds = %138, %27
  br label %140

140:                                              ; preds = %139, %117, %110
  %141 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %142 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %140
  %147 = load i32, i32* @FORCE_MODE, align 4
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* @P6_INTF_DIS, align 4
  %149 = load i32, i32* %3, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %3, align 4
  br label %222

151:                                              ; preds = %140
  %152 = load i32, i32* @IPG_96BIT_WITH_SHORT_IPG, align 4
  %153 = load i32, i32* @IPG_CFG_S, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* @MAC_MODE, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @MAC_TX_EN, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @MAC_RX_EN, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @BKOFF_EN, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @BACKPR_EN, align 4
  %164 = or i32 %162, %163
  store i32 %164, i32* %6, align 4
  %165 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %166 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %151
  %171 = load i32, i32* @FORCE_MODE, align 4
  %172 = load i32, i32* @FORCE_LINK, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @FORCE_RX_FC, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @FORCE_TX_FC, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* %6, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %6, align 4
  %180 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %181 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @FORCE_SPD_S, align 4
  %185 = shl i32 %183, %184
  %186 = load i32, i32* %6, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %6, align 4
  %188 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %189 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %170
  %194 = load i32, i32* @FORCE_DPX, align 4
  %195 = load i32, i32* %6, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %6, align 4
  br label %197

197:                                              ; preds = %193, %170
  br label %198

198:                                              ; preds = %197, %151
  %199 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %200 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  switch i32 %202, label %207 [
    i32 129, label %203
    i32 128, label %205
  ]

203:                                              ; preds = %198
  %204 = call i32 @BIT(i32 1)
  store i32 %204, i32* %4, align 4
  br label %221

205:                                              ; preds = %198
  %206 = call i32 @BIT(i32 0)
  store i32 %206, i32* %4, align 4
  br label %221

207:                                              ; preds = %198
  %208 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %209 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %212 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @phy_modes(i32 %214)
  %216 = call i32 (i32, i8*, ...) @dev_info(i32 %210, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* @FORCE_MODE, align 4
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* @P6_INTF_DIS, align 4
  %219 = load i32, i32* %3, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %207, %205, %203
  br label %222

222:                                              ; preds = %221, %146
  %223 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %224 = load i32, i32* @MHWSTRAP, align 4
  %225 = load i32, i32* %3, align 4
  %226 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %223, i32 %224, i32 %225)
  %227 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %228 = load i32, i32* @P6ECR, align 4
  %229 = load i32, i32* %4, align 4
  %230 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %227, i32 %228, i32 %229)
  %231 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %232 = call i32 @PMCR(i32 5)
  %233 = load i32, i32* %5, align 4
  %234 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %231, i32 %232, i32 %233)
  %235 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %236 = call i32 @PMCR(i32 6)
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %235, i32 %236, i32 %237)
  ret i32 0
}

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @PMCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
