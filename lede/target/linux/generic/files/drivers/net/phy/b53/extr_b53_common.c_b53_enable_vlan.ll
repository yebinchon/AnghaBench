; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_enable_vlan.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_enable_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i64 }

@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@B53_SWITCH_MODE = common dso_local global i32 0, align 4
@B53_VLAN_PAGE = common dso_local global i32 0, align 4
@B53_VLAN_CTRL0 = common dso_local global i32 0, align 4
@B53_VLAN_CTRL1 = common dso_local global i32 0, align 4
@B53_VLAN_CTRL4_25 = common dso_local global i32 0, align 4
@B53_VLAN_CTRL5_25 = common dso_local global i32 0, align 4
@B53_VLAN_CTRL4_63XX = common dso_local global i32 0, align 4
@B53_VLAN_CTRL5_63XX = common dso_local global i32 0, align 4
@B53_VLAN_CTRL4 = common dso_local global i32 0, align 4
@B53_VLAN_CTRL5 = common dso_local global i32 0, align 4
@SM_SW_FWD_MODE = common dso_local global i32 0, align 4
@VC0_VLAN_EN = common dso_local global i32 0, align 4
@VC0_VID_CHK_EN = common dso_local global i32 0, align 4
@VC0_VID_HASH_VID = common dso_local global i32 0, align 4
@VC1_RX_MCST_UNTAG_EN = common dso_local global i32 0, align 4
@VC1_RX_MCST_FWD_EN = common dso_local global i32 0, align 4
@VC4_ING_VID_CHECK_MASK = common dso_local global i32 0, align 4
@VC4_ING_VID_VIO_DROP = common dso_local global i32 0, align 4
@VC4_ING_VID_CHECK_S = common dso_local global i32 0, align 4
@VC5_DROP_VTABLE_MISS = common dso_local global i32 0, align 4
@VC0_RESERVED_1 = common dso_local global i32 0, align 4
@VC1_RX_MCST_TAG_EN = common dso_local global i32 0, align 4
@VC5_VID_FFF_EN = common dso_local global i32 0, align 4
@VC4_ING_VID_VIO_FWD = common dso_local global i32 0, align 4
@VC4_ING_VID_VIO_TO_IMP = common dso_local global i32 0, align 4
@B53_VLAN_CTRL3 = common dso_local global i32 0, align 4
@VC3_HIGH_8BIT_EN = common dso_local global i32 0, align 4
@B53_VLAN_CTRL3_63XX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b53_device*, i32)* @b53_enable_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_enable_vlan(%struct.b53_device* %0, i32 %1) #0 {
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %11 = load i32, i32* @B53_CTRL_PAGE, align 4
  %12 = load i32, i32* @B53_SWITCH_MODE, align 4
  %13 = call i32 @b53_read8(%struct.b53_device* %10, i32 %11, i32 %12, i32* %5)
  %14 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %15 = load i32, i32* @B53_VLAN_PAGE, align 4
  %16 = load i32, i32* @B53_VLAN_CTRL0, align 4
  %17 = call i32 @b53_read8(%struct.b53_device* %14, i32 %15, i32 %16, i32* %6)
  %18 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %19 = load i32, i32* @B53_VLAN_PAGE, align 4
  %20 = load i32, i32* @B53_VLAN_CTRL1, align 4
  %21 = call i32 @b53_read8(%struct.b53_device* %18, i32 %19, i32 %20, i32* %7)
  %22 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %23 = call i64 @is5325(%struct.b53_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %27 = call i64 @is5365(%struct.b53_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25, %2
  %30 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %31 = load i32, i32* @B53_VLAN_PAGE, align 4
  %32 = load i32, i32* @B53_VLAN_CTRL4_25, align 4
  %33 = call i32 @b53_read8(%struct.b53_device* %30, i32 %31, i32 %32, i32* %8)
  %34 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %35 = load i32, i32* @B53_VLAN_PAGE, align 4
  %36 = load i32, i32* @B53_VLAN_CTRL5_25, align 4
  %37 = call i32 @b53_read8(%struct.b53_device* %34, i32 %35, i32 %36, i32* %9)
  br label %61

38:                                               ; preds = %25
  %39 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %40 = call i64 @is63xx(%struct.b53_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %44 = load i32, i32* @B53_VLAN_PAGE, align 4
  %45 = load i32, i32* @B53_VLAN_CTRL4_63XX, align 4
  %46 = call i32 @b53_read8(%struct.b53_device* %43, i32 %44, i32 %45, i32* %8)
  %47 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %48 = load i32, i32* @B53_VLAN_PAGE, align 4
  %49 = load i32, i32* @B53_VLAN_CTRL5_63XX, align 4
  %50 = call i32 @b53_read8(%struct.b53_device* %47, i32 %48, i32 %49, i32* %9)
  br label %60

51:                                               ; preds = %38
  %52 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %53 = load i32, i32* @B53_VLAN_PAGE, align 4
  %54 = load i32, i32* @B53_VLAN_CTRL4, align 4
  %55 = call i32 @b53_read8(%struct.b53_device* %52, i32 %53, i32 %54, i32* %8)
  %56 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %57 = load i32, i32* @B53_VLAN_PAGE, align 4
  %58 = load i32, i32* @B53_VLAN_CTRL5, align 4
  %59 = call i32 @b53_read8(%struct.b53_device* %56, i32 %57, i32 %58, i32* %9)
  br label %60

60:                                               ; preds = %51, %42
  br label %61

61:                                               ; preds = %60, %29
  %62 = load i32, i32* @SM_SW_FWD_MODE, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %137

68:                                               ; preds = %61
  %69 = load i32, i32* @VC0_VLAN_EN, align 4
  %70 = load i32, i32* @VC0_VID_CHK_EN, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @VC0_VID_HASH_VID, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @VC1_RX_MCST_UNTAG_EN, align 4
  %77 = load i32, i32* @VC1_RX_MCST_FWD_EN, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* @VC4_ING_VID_CHECK_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* @VC4_ING_VID_VIO_DROP, align 4
  %86 = load i32, i32* @VC4_ING_VID_CHECK_S, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @VC5_DROP_VTABLE_MISS, align 4
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %94 = call i64 @is5325(%struct.b53_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %68
  %97 = load i32, i32* @VC0_RESERVED_1, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %96, %68
  %102 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %103 = call i64 @is5325(%struct.b53_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %107 = call i64 @is5365(%struct.b53_device* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105, %101
  %110 = load i32, i32* @VC1_RX_MCST_TAG_EN, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %109, %105
  %114 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %115 = call i64 @is5325(%struct.b53_device* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %113
  %118 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %119 = call i64 @is5365(%struct.b53_device* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %117
  %122 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %123 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* @VC5_VID_FFF_EN, align 4
  %128 = load i32, i32* %9, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %9, align 4
  br label %135

130:                                              ; preds = %121
  %131 = load i32, i32* @VC5_VID_FFF_EN, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %9, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %130, %126
  br label %136

136:                                              ; preds = %135, %117, %113
  br label %206

137:                                              ; preds = %61
  %138 = load i32, i32* @VC0_VLAN_EN, align 4
  %139 = load i32, i32* @VC0_VID_CHK_EN, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @VC0_VID_HASH_VID, align 4
  %142 = or i32 %140, %141
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* @VC1_RX_MCST_UNTAG_EN, align 4
  %147 = load i32, i32* @VC1_RX_MCST_FWD_EN, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* @VC4_ING_VID_CHECK_MASK, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* @VC5_DROP_VTABLE_MISS, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %9, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %9, align 4
  %160 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %161 = call i64 @is5325(%struct.b53_device* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %137
  %164 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %165 = call i64 @is5365(%struct.b53_device* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %163, %137
  %168 = load i32, i32* @VC4_ING_VID_VIO_FWD, align 4
  %169 = load i32, i32* @VC4_ING_VID_CHECK_S, align 4
  %170 = shl i32 %168, %169
  %171 = load i32, i32* %8, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %8, align 4
  br label %179

173:                                              ; preds = %163
  %174 = load i32, i32* @VC4_ING_VID_VIO_TO_IMP, align 4
  %175 = load i32, i32* @VC4_ING_VID_CHECK_S, align 4
  %176 = shl i32 %174, %175
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %173, %167
  %180 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %181 = call i64 @is5325(%struct.b53_device* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %179
  %184 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %185 = call i64 @is5365(%struct.b53_device* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %183, %179
  %188 = load i32, i32* @VC1_RX_MCST_TAG_EN, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %7, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %7, align 4
  br label %192

192:                                              ; preds = %187, %183
  %193 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %194 = call i64 @is5325(%struct.b53_device* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %192
  %197 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %198 = call i64 @is5365(%struct.b53_device* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* @VC5_VID_FFF_EN, align 4
  %202 = xor i32 %201, -1
  %203 = load i32, i32* %9, align 4
  %204 = and i32 %203, %202
  store i32 %204, i32* %9, align 4
  br label %205

205:                                              ; preds = %200, %196, %192
  br label %206

206:                                              ; preds = %205, %136
  %207 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %208 = load i32, i32* @B53_VLAN_PAGE, align 4
  %209 = load i32, i32* @B53_VLAN_CTRL0, align 4
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @b53_write8(%struct.b53_device* %207, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %213 = load i32, i32* @B53_VLAN_PAGE, align 4
  %214 = load i32, i32* @B53_VLAN_CTRL1, align 4
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @b53_write8(%struct.b53_device* %212, i32 %213, i32 %214, i32 %215)
  %217 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %218 = call i64 @is5325(%struct.b53_device* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %206
  %221 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %222 = call i64 @is5365(%struct.b53_device* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %253

224:                                              ; preds = %220, %206
  %225 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %226 = call i64 @is5325(%struct.b53_device* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %224
  %229 = load i32, i32* %4, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %233 = load i32, i32* @B53_VLAN_PAGE, align 4
  %234 = load i32, i32* @B53_VLAN_CTRL3, align 4
  %235 = load i32, i32* @VC3_HIGH_8BIT_EN, align 4
  %236 = call i32 @b53_write8(%struct.b53_device* %232, i32 %233, i32 %234, i32 %235)
  br label %242

237:                                              ; preds = %228, %224
  %238 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %239 = load i32, i32* @B53_VLAN_PAGE, align 4
  %240 = load i32, i32* @B53_VLAN_CTRL3, align 4
  %241 = call i32 @b53_write8(%struct.b53_device* %238, i32 %239, i32 %240, i32 0)
  br label %242

242:                                              ; preds = %237, %231
  %243 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %244 = load i32, i32* @B53_VLAN_PAGE, align 4
  %245 = load i32, i32* @B53_VLAN_CTRL4_25, align 4
  %246 = load i32, i32* %8, align 4
  %247 = call i32 @b53_write8(%struct.b53_device* %243, i32 %244, i32 %245, i32 %246)
  %248 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %249 = load i32, i32* @B53_VLAN_PAGE, align 4
  %250 = load i32, i32* @B53_VLAN_CTRL5_25, align 4
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @b53_write8(%struct.b53_device* %248, i32 %249, i32 %250, i32 %251)
  br label %288

253:                                              ; preds = %220
  %254 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %255 = call i64 @is63xx(%struct.b53_device* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %272

257:                                              ; preds = %253
  %258 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %259 = load i32, i32* @B53_VLAN_PAGE, align 4
  %260 = load i32, i32* @B53_VLAN_CTRL3_63XX, align 4
  %261 = call i32 @b53_write16(%struct.b53_device* %258, i32 %259, i32 %260, i32 0)
  %262 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %263 = load i32, i32* @B53_VLAN_PAGE, align 4
  %264 = load i32, i32* @B53_VLAN_CTRL4_63XX, align 4
  %265 = load i32, i32* %8, align 4
  %266 = call i32 @b53_write8(%struct.b53_device* %262, i32 %263, i32 %264, i32 %265)
  %267 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %268 = load i32, i32* @B53_VLAN_PAGE, align 4
  %269 = load i32, i32* @B53_VLAN_CTRL5_63XX, align 4
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @b53_write8(%struct.b53_device* %267, i32 %268, i32 %269, i32 %270)
  br label %287

272:                                              ; preds = %253
  %273 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %274 = load i32, i32* @B53_VLAN_PAGE, align 4
  %275 = load i32, i32* @B53_VLAN_CTRL3, align 4
  %276 = call i32 @b53_write16(%struct.b53_device* %273, i32 %274, i32 %275, i32 0)
  %277 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %278 = load i32, i32* @B53_VLAN_PAGE, align 4
  %279 = load i32, i32* @B53_VLAN_CTRL4, align 4
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @b53_write8(%struct.b53_device* %277, i32 %278, i32 %279, i32 %280)
  %282 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %283 = load i32, i32* @B53_VLAN_PAGE, align 4
  %284 = load i32, i32* @B53_VLAN_CTRL5, align 4
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @b53_write8(%struct.b53_device* %282, i32 %283, i32 %284, i32 %285)
  br label %287

287:                                              ; preds = %272, %257
  br label %288

288:                                              ; preds = %287, %242
  %289 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %290 = load i32, i32* @B53_CTRL_PAGE, align 4
  %291 = load i32, i32* @B53_SWITCH_MODE, align 4
  %292 = load i32, i32* %5, align 4
  %293 = call i32 @b53_write8(%struct.b53_device* %289, i32 %290, i32 %291, i32 %292)
  ret void
}

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i64 @is63xx(%struct.b53_device*) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_write16(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
