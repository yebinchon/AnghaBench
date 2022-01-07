; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_mt7620.c_mt7620_port_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_mt7620.c_mt7620_port_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32*, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32*, i64*, i32** }
%struct.TYPE_3__ = type { i64 }
%struct.device_node = type { i32 }
%struct.mt7620_gsw = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@PORT4_EPHY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: invalid port id %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: invalid port id\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"mediatek,fixed-link\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: invalid fixed link property\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"port %d - invalid phy mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@SYSC_REG_CFG1 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid link speed: %d\0A\00", align 1
@PMCR_LINK = common dso_local global i32 0, align 4
@PMCR_BACKPRES = common dso_local global i32 0, align 4
@PMCR_BACKOFF = common dso_local global i32 0, align 4
@PMCR_RX_EN = common dso_local global i32 0, align 4
@PMCR_TX_EN = common dso_local global i32 0, align 4
@PMCR_FORCE = common dso_local global i32 0, align 4
@PMCR_MAC_MODE = common dso_local global i32 0, align 4
@PMCR_IPG = common dso_local global i32 0, align 4
@PMCR_TX_FC = common dso_local global i32 0, align 4
@PMCR_RX_FC = common dso_local global i32 0, align 4
@PMCR_DUPLEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"using fixed link parameters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fe_priv*, %struct.device_node*)* @mt7620_port_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7620_port_init(%struct.fe_priv* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.fe_priv*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mt7620_gsw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %19 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %20 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.mt7620_gsw*
  store %struct.mt7620_gsw* %24, %struct.mt7620_gsw** %5, align 8
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call i8* @of_get_property(%struct.device_node* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %6, align 8
  store i32 12, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %29 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PORT4_EPHY, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 5, i32 4
  store i32 %34, i32* %13, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %2
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be32_to_cpu(i32 %45)
  %47 = icmp sgt i32 %46, 5
  br i1 %47, label %48, label %65

48:                                               ; preds = %43, %37, %2
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.device_node*, %struct.device_node** %4, align 8
  %53 = getelementptr inbounds %struct.device_node, %struct.device_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be32_to_cpu(i32 %56)
  %58 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  br label %64

59:                                               ; preds = %48
  %60 = load %struct.device_node*, %struct.device_node** %4, align 8
  %61 = getelementptr inbounds %struct.device_node, %struct.device_node* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %51
  br label %381

65:                                               ; preds = %43
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be32_to_cpu(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 14, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %65
  %73 = load %struct.device_node*, %struct.device_node** %4, align 8
  %74 = call i8* @of_get_property(%struct.device_node* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %77 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  store i32* %75, i32** %83, align 8
  %84 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %85 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %72
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %96, 16
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load %struct.device_node*, %struct.device_node** %4, align 8
  %100 = getelementptr inbounds %struct.device_node, %struct.device_node* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %104 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32**, i32*** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  store i32* null, i32** %110, align 8
  br label %381

111:                                              ; preds = %94, %72
  %112 = load %struct.device_node*, %struct.device_node** %4, align 8
  %113 = call i32 @of_get_phy_mode(%struct.device_node* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  switch i32 %114, label %118 [
    i32 132, label %115
    i32 133, label %116
    i32 131, label %117
  ]

115:                                              ; preds = %111
  store i32 0, i32* %12, align 4
  br label %124

116:                                              ; preds = %111
  store i32 1, i32* %12, align 4
  br label %124

117:                                              ; preds = %111
  store i32 2, i32* %12, align 4
  br label %124

118:                                              ; preds = %111
  %119 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %120 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  br label %381

124:                                              ; preds = %117, %116, %115
  %125 = load %struct.device_node*, %struct.device_node** %4, align 8
  %126 = call i64 @of_parse_phandle(%struct.device_node* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %127 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %128 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  store i64 %126, i64* %134, align 8
  %135 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %136 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %124
  %146 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %147 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %145
  br label %381

157:                                              ; preds = %145, %124
  %158 = load i32, i32* @SYSC_REG_CFG1, align 4
  %159 = call i32 @rt_sysc_r32(i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %10, align 4
  %161 = shl i32 3, %160
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %11, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %10, align 4
  %167 = shl i32 %165, %166
  %168 = load i32, i32* %11, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* @SYSC_REG_CFG1, align 4
  %172 = call i32 @rt_sysc_w32(i32 %170, i32 %171)
  %173 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %174 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %173, i32 0, i32 1
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  %177 = load i32**, i32*** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %327

183:                                              ; preds = %157
  %184 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %185 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 3
  %188 = load i32**, i32*** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  store i32* %192, i32** %14, align 8
  store i32 0, i32* %17, align 4
  %193 = load i32*, i32** %14, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %14, align 8
  %195 = ptrtoint i32* %193 to i32
  %196 = call i8* @be32_to_cpup(i32 %195)
  %197 = ptrtoint i8* %196 to i32
  %198 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %199 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %198, i32 0, i32 1
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %197, i32* %205, align 4
  %206 = load i32*, i32** %14, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %14, align 8
  %208 = ptrtoint i32* %206 to i32
  %209 = call i8* @be32_to_cpup(i32 %208)
  %210 = ptrtoint i8* %209 to i32
  store i32 %210, i32* %15, align 4
  %211 = load i32*, i32** %14, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %14, align 8
  %213 = ptrtoint i32* %211 to i32
  %214 = call i8* @be32_to_cpup(i32 %213)
  %215 = ptrtoint i8* %214 to i32
  store i32 %215, i32* %16, align 4
  %216 = load i32*, i32** %14, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %14, align 8
  %218 = ptrtoint i32* %216 to i32
  %219 = call i8* @be32_to_cpup(i32 %218)
  %220 = ptrtoint i8* %219 to i32
  %221 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %222 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %221, i32 0, i32 1
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %220, i32* %228, align 4
  %229 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %230 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 1, i32* %234, align 4
  %235 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %236 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %235, i32 0, i32 1
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  switch i32 %243, label %247 [
    i32 130, label %244
    i32 129, label %245
    i32 128, label %246
  ]

244:                                              ; preds = %183
  store i32 0, i32* %17, align 4
  br label %269

245:                                              ; preds = %183
  store i32 1, i32* %17, align 4
  br label %269

246:                                              ; preds = %183
  store i32 2, i32* %17, align 4
  br label %269

247:                                              ; preds = %183
  %248 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %249 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %252 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %251, i32 0, i32 1
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @dev_err(i32 %250, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %259)
  %261 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %262 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %261, i32 0, i32 1
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 3
  %265 = load i32**, i32*** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32*, i32** %265, i64 %267
  store i32* null, i32** %268, align 8
  br label %381

269:                                              ; preds = %246, %245, %244
  %270 = load i32, i32* %17, align 4
  %271 = call i32 @PMCR_SPEED(i32 %270)
  store i32 %271, i32* %17, align 4
  %272 = load i32, i32* @PMCR_LINK, align 4
  %273 = load i32, i32* @PMCR_BACKPRES, align 4
  %274 = or i32 %272, %273
  %275 = load i32, i32* @PMCR_BACKOFF, align 4
  %276 = or i32 %274, %275
  %277 = load i32, i32* @PMCR_RX_EN, align 4
  %278 = or i32 %276, %277
  %279 = load i32, i32* @PMCR_TX_EN, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @PMCR_FORCE, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @PMCR_MAC_MODE, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @PMCR_IPG, align 4
  %286 = or i32 %284, %285
  %287 = load i32, i32* %17, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %17, align 4
  %289 = load i32, i32* %15, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %269
  %292 = load i32, i32* @PMCR_TX_FC, align 4
  %293 = load i32, i32* %17, align 4
  %294 = or i32 %293, %292
  store i32 %294, i32* %17, align 4
  br label %295

295:                                              ; preds = %291, %269
  %296 = load i32, i32* %16, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %295
  %299 = load i32, i32* @PMCR_RX_FC, align 4
  %300 = load i32, i32* %17, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %17, align 4
  br label %302

302:                                              ; preds = %298, %295
  %303 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %304 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %303, i32 0, i32 1
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %302
  %314 = load i32, i32* @PMCR_DUPLEX, align 4
  %315 = load i32, i32* %17, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %17, align 4
  br label %317

317:                                              ; preds = %313, %302
  %318 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %319 = load i32, i32* %17, align 4
  %320 = load i32, i32* %9, align 4
  %321 = call i32 @GSW_REG_PORT_PMCR(i32 %320)
  %322 = call i32 @mtk_switch_w32(%struct.mt7620_gsw* %318, i32 %319, i32 %321)
  %323 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %324 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @dev_info(i32 %325, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %381

327:                                              ; preds = %157
  %328 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %329 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %328, i32 0, i32 1
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 2
  %332 = load i64*, i64** %331, align 8
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i64, i64* %332, i64 %334
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %381

338:                                              ; preds = %327
  %339 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %340 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %9, align 4
  %343 = call i64 @mdiobus_get_phy(i32 %341, i32 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %381

345:                                              ; preds = %338
  %346 = load i32, i32* @PMCR_BACKPRES, align 4
  %347 = load i32, i32* @PMCR_BACKOFF, align 4
  %348 = or i32 %346, %347
  %349 = load i32, i32* @PMCR_RX_EN, align 4
  %350 = or i32 %348, %349
  %351 = load i32, i32* @PMCR_TX_EN, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* @PMCR_MAC_MODE, align 4
  %354 = or i32 %352, %353
  %355 = load i32, i32* @PMCR_IPG, align 4
  %356 = or i32 %354, %355
  store i32 %356, i32* %18, align 4
  %357 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %358 = load i32, i32* %18, align 4
  %359 = load i32, i32* %9, align 4
  %360 = call i32 @GSW_REG_PORT_PMCR(i32 %359)
  %361 = call i32 @mtk_switch_w32(%struct.mt7620_gsw* %357, i32 %358, i32 %360)
  %362 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %363 = load %struct.fe_priv*, %struct.fe_priv** %3, align 8
  %364 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %363, i32 0, i32 1
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 2
  %367 = load i64*, i64** %366, align 8
  %368 = load i32, i32* %9, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %367, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = call i32 @fe_connect_phy_node(%struct.fe_priv* %362, i64 %371)
  %373 = load i32, i32* %9, align 4
  %374 = call i32 @BIT(i32 %373)
  %375 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %376 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 8
  %379 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %5, align 8
  %380 = call i32 @mt7620_auto_poll(%struct.mt7620_gsw* %379)
  br label %381

381:                                              ; preds = %64, %98, %118, %156, %247, %317, %345, %338, %327
  ret void
}

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @of_get_phy_mode(%struct.device_node*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @rt_sysc_r32(i32) #1

declare dso_local i32 @rt_sysc_w32(i32, i32) #1

declare dso_local i8* @be32_to_cpup(i32) #1

declare dso_local i32 @PMCR_SPEED(i32) #1

declare dso_local i32 @mtk_switch_w32(%struct.mt7620_gsw*, i32, i32) #1

declare dso_local i32 @GSW_REG_PORT_PMCR(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @mdiobus_get_phy(i32, i32) #1

declare dso_local i32 @fe_connect_phy_node(%struct.fe_priv*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt7620_auto_poll(%struct.mt7620_gsw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
