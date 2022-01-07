; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_core99_scc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_core99_scc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.macio_chip = type { i64 }

@ENODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ch-a\00", align 1
@MACIO_FLAG_SCCA_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"ch-b\00", align 1
@MACIO_FLAG_SCCB_ON = common dso_local global i64 0, align 8
@KEYLARGO_FCR0 = common dso_local global i32 0, align 4
@KL0_SCC_CELL_ENABLE = common dso_local global i32 0, align 4
@KL0_SCCA_ENABLE = common dso_local global i32 0, align 4
@PMAC_SCC_I2S1 = common dso_local global i64 0, align 8
@KL0_SCC_A_INTF_ENABLE = common dso_local global i32 0, align 4
@KL0_SCCB_ENABLE = common dso_local global i32 0, align 4
@PMAC_SCC_IRDA = common dso_local global i64 0, align 8
@KL0_SCC_B_INTF_ENABLE = common dso_local global i32 0, align 4
@KL0_IRDA_ENABLE = common dso_local global i32 0, align 4
@KL0_IRDA_CLK32_ENABLE = common dso_local global i32 0, align 4
@KL0_IRDA_CLK19_ENABLE = common dso_local global i32 0, align 4
@KL0_IRDA_SOURCE1_SEL = common dso_local global i32 0, align 4
@KL0_IRDA_FAST_CONNECT = common dso_local global i32 0, align 4
@KL0_IRDA_DEFAULT1 = common dso_local global i32 0, align 4
@KL0_IRDA_DEFAULT0 = common dso_local global i32 0, align 4
@KL0_IRDA_SOURCE2_SEL = common dso_local global i32 0, align 4
@KL0_IRDA_HIGH_BAND = common dso_local global i32 0, align 4
@KL0_SCC_RESET = common dso_local global i32 0, align 4
@KL0_IRDA_RESET = common dso_local global i32 0, align 4
@PMAC_SCC_FLAG_XMON = common dso_local global i64 0, align 8
@MACIO_FLAG_SCC_LOCKED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @core99_scc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_scc_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.macio_chip*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call %struct.macio_chip* @macio_find(%struct.device_node* %14, i32 0)
  store %struct.macio_chip* %15, %struct.macio_chip** %8, align 8
  %16 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %17 = icmp ne %struct.macio_chip* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @ENODEV, align 8
  %20 = sub nsw i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %277

21:                                               ; preds = %3
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = call i64 @of_node_name_eq(%struct.device_node* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  store i64 %26, i64* %10, align 8
  br label %37

27:                                               ; preds = %21
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i64 @of_node_name_eq(%struct.device_node* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  store i64 %32, i64* %10, align 8
  br label %36

33:                                               ; preds = %27
  %34 = load i64, i64* @ENODEV, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %4, align 8
  br label %277

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %181

40:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @LOCK(i64 %41)
  %43 = load i32, i32* @KEYLARGO_FCR0, align 4
  %44 = call i32 @MACIO_IN32(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @KL0_SCC_CELL_ENABLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @KL0_SCC_CELL_ENABLE, align 4
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %53

53:                                               ; preds = %49, %40
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %53
  %59 = load i32, i32* @KL0_SCCA_ENABLE, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load i64, i64* %6, align 8
  %63 = and i64 %62, 4095
  %64 = load i64, i64* @PMAC_SCC_I2S1, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* @KL0_SCC_A_INTF_ENABLE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %75

71:                                               ; preds = %58
  %72 = load i32, i32* @KL0_SCC_A_INTF_ENABLE, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75, %53
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %124

81:                                               ; preds = %76
  %82 = load i32, i32* @KL0_SCCB_ENABLE, align 4
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load i64, i64* %6, align 8
  %86 = and i64 %85, 4095
  %87 = load i64, i64* @PMAC_SCC_IRDA, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %119

89:                                               ; preds = %81
  %90 = load i32, i32* @KL0_SCC_B_INTF_ENABLE, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* @KL0_IRDA_ENABLE, align 4
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* @KL0_IRDA_CLK32_ENABLE, align 4
  %98 = load i32, i32* @KL0_IRDA_CLK19_ENABLE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* @KL0_IRDA_SOURCE1_SEL, align 4
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* @KL0_IRDA_FAST_CONNECT, align 4
  %106 = load i32, i32* @KL0_IRDA_DEFAULT1, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @KL0_IRDA_DEFAULT0, align 4
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %11, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* @KL0_IRDA_SOURCE2_SEL, align 4
  %114 = load i32, i32* @KL0_IRDA_HIGH_BAND, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %11, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %123

119:                                              ; preds = %81
  %120 = load i32, i32* @KL0_SCC_B_INTF_ENABLE, align 4
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %119, %89
  br label %124

124:                                              ; preds = %123, %76
  %125 = load i32, i32* @KEYLARGO_FCR0, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @MACIO_OUT32(i32 %125, i32 %126)
  %128 = load i64, i64* %10, align 8
  %129 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %130 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = or i64 %131, %128
  store i64 %132, i64* %130, align 8
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %124
  %136 = load i32, i32* @KEYLARGO_FCR0, align 4
  %137 = load i32, i32* @KL0_SCC_RESET, align 4
  %138 = call i32 @MACIO_BIS(i32 %136, i32 %137)
  %139 = load i32, i32* @KEYLARGO_FCR0, align 4
  %140 = call i32 @MACIO_IN32(i32 %139)
  %141 = load i64, i64* %9, align 8
  %142 = call i32 @UNLOCK(i64 %141)
  %143 = call i32 @mdelay(i32 15)
  %144 = load i64, i64* %9, align 8
  %145 = call i32 @LOCK(i64 %144)
  %146 = load i32, i32* @KEYLARGO_FCR0, align 4
  %147 = load i32, i32* @KL0_SCC_RESET, align 4
  %148 = call i32 @MACIO_BIC(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %135, %124
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %149
  %153 = load i32, i32* @KEYLARGO_FCR0, align 4
  %154 = load i32, i32* @KL0_IRDA_RESET, align 4
  %155 = call i32 @MACIO_BIS(i32 %153, i32 %154)
  %156 = load i32, i32* @KEYLARGO_FCR0, align 4
  %157 = call i32 @MACIO_IN32(i32 %156)
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @UNLOCK(i64 %158)
  %160 = call i32 @mdelay(i32 15)
  %161 = load i64, i64* %9, align 8
  %162 = call i32 @LOCK(i64 %161)
  %163 = load i32, i32* @KEYLARGO_FCR0, align 4
  %164 = load i32, i32* @KL0_IRDA_RESET, align 4
  %165 = call i32 @MACIO_BIC(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %152, %149
  %167 = load i64, i64* %9, align 8
  %168 = call i32 @UNLOCK(i64 %167)
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* @PMAC_SCC_FLAG_XMON, align 8
  %171 = and i64 %169, %170
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load i32, i32* @MACIO_FLAG_SCC_LOCKED, align 4
  %175 = sext i32 %174 to i64
  %176 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %177 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = or i64 %178, %175
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %173, %166
  br label %276

181:                                              ; preds = %37
  %182 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %183 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* @MACIO_FLAG_SCC_LOCKED, align 4
  %186 = sext i32 %185 to i64
  %187 = and i64 %184, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  %190 = load i64, i64* @EPERM, align 8
  %191 = sub nsw i64 0, %190
  store i64 %191, i64* %4, align 8
  br label %277

192:                                              ; preds = %181
  %193 = load i64, i64* %9, align 8
  %194 = call i32 @LOCK(i64 %193)
  %195 = load i32, i32* @KEYLARGO_FCR0, align 4
  %196 = call i32 @MACIO_IN32(i32 %195)
  store i32 %196, i32* %11, align 4
  %197 = load i64, i64* %10, align 8
  %198 = load i64, i64* @MACIO_FLAG_SCCA_ON, align 8
  %199 = and i64 %197, %198
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %192
  %202 = load i32, i32* @KL0_SCCA_ENABLE, align 4
  %203 = xor i32 %202, -1
  %204 = load i32, i32* %11, align 4
  %205 = and i32 %204, %203
  store i32 %205, i32* %11, align 4
  br label %206

206:                                              ; preds = %201, %192
  %207 = load i64, i64* %10, align 8
  %208 = load i64, i64* @MACIO_FLAG_SCCB_ON, align 8
  %209 = and i64 %207, %208
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %248

211:                                              ; preds = %206
  %212 = load i32, i32* @KL0_SCCB_ENABLE, align 4
  %213 = xor i32 %212, -1
  %214 = load i32, i32* %11, align 4
  %215 = and i32 %214, %213
  store i32 %215, i32* %11, align 4
  %216 = load i64, i64* %6, align 8
  %217 = and i64 %216, 4095
  %218 = load i64, i64* @PMAC_SCC_IRDA, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %247

220:                                              ; preds = %211
  %221 = load i32, i32* @KL0_IRDA_ENABLE, align 4
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %11, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %11, align 4
  %225 = load i32, i32* @KL0_IRDA_CLK32_ENABLE, align 4
  %226 = load i32, i32* @KL0_IRDA_CLK19_ENABLE, align 4
  %227 = or i32 %225, %226
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %11, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %11, align 4
  %231 = load i32, i32* @KL0_IRDA_FAST_CONNECT, align 4
  %232 = load i32, i32* @KL0_IRDA_DEFAULT1, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @KL0_IRDA_DEFAULT0, align 4
  %235 = or i32 %233, %234
  %236 = xor i32 %235, -1
  %237 = load i32, i32* %11, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %11, align 4
  %239 = load i32, i32* @KL0_IRDA_SOURCE1_SEL, align 4
  %240 = load i32, i32* @KL0_IRDA_SOURCE2_SEL, align 4
  %241 = or i32 %239, %240
  %242 = load i32, i32* @KL0_IRDA_HIGH_BAND, align 4
  %243 = or i32 %241, %242
  %244 = xor i32 %243, -1
  %245 = load i32, i32* %11, align 4
  %246 = and i32 %245, %244
  store i32 %246, i32* %11, align 4
  br label %247

247:                                              ; preds = %220, %211
  br label %248

248:                                              ; preds = %247, %206
  %249 = load i32, i32* @KEYLARGO_FCR0, align 4
  %250 = load i32, i32* %11, align 4
  %251 = call i32 @MACIO_OUT32(i32 %249, i32 %250)
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* @KL0_SCCA_ENABLE, align 4
  %254 = load i32, i32* @KL0_SCCB_ENABLE, align 4
  %255 = or i32 %253, %254
  %256 = and i32 %252, %255
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %248
  %259 = load i32, i32* @KL0_SCC_CELL_ENABLE, align 4
  %260 = xor i32 %259, -1
  %261 = load i32, i32* %11, align 4
  %262 = and i32 %261, %260
  store i32 %262, i32* %11, align 4
  %263 = load i32, i32* @KEYLARGO_FCR0, align 4
  %264 = load i32, i32* %11, align 4
  %265 = call i32 @MACIO_OUT32(i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %258, %248
  %267 = load i64, i64* %10, align 8
  %268 = xor i64 %267, -1
  %269 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %270 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = and i64 %271, %268
  store i64 %272, i64* %270, align 8
  %273 = load i64, i64* %9, align 8
  %274 = call i32 @UNLOCK(i64 %273)
  %275 = call i32 @mdelay(i32 10)
  br label %276

276:                                              ; preds = %266, %180
  store i64 0, i64* %4, align 8
  br label %277

277:                                              ; preds = %276, %189, %33, %18
  %278 = load i64, i64* %4, align 8
  ret i64 %278
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i64 @of_node_name_eq(%struct.device_node*, i8*) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_IN32(i32) #1

declare dso_local i32 @MACIO_OUT32(i32, i32) #1

declare dso_local i32 @MACIO_BIS(i32, i32) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @MACIO_BIC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
