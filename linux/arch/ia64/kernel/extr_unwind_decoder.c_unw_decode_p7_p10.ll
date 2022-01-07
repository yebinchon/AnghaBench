; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_p7_p10.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_p7_p10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P7 = common dso_local global i32 0, align 4
@UNW_REG_PSP = common dso_local global i32 0, align 4
@UNW_REG_RP = common dso_local global i32 0, align 4
@UNW_REG_PFS = common dso_local global i32 0, align 4
@UNW_REG_PR = common dso_local global i32 0, align 4
@UNW_REG_LC = common dso_local global i32 0, align 4
@UNW_REG_UNAT = common dso_local global i32 0, align 4
@UNW_REG_FPSR = common dso_local global i32 0, align 4
@P8 = common dso_local global i32 0, align 4
@UNW_REG_BSP = common dso_local global i32 0, align 4
@UNW_REG_BSPSTORE = common dso_local global i32 0, align 4
@UNW_REG_RNAT = common dso_local global i32 0, align 4
@P9 = common dso_local global i32 0, align 4
@P10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8, i8*)* @unw_decode_p7_p10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unw_decode_p7_p10(i8* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %124

17:                                               ; preds = %3
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 15
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %8, align 1
  %22 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %22, i32* %11, align 4
  %23 = load i8, i8* %8, align 1
  %24 = zext i8 %23 to i32
  switch i32 %24, label %120 [
    i32 0, label %25
    i32 1, label %32
    i32 2, label %37
    i32 3, label %42
    i32 4, label %48
    i32 5, label %54
    i32 6, label %60
    i32 7, label %66
    i32 8, label %72
    i32 9, label %78
    i32 10, label %84
    i32 11, label %90
    i32 12, label %96
    i32 13, label %102
    i32 14, label %108
    i32 15, label %114
  ]

25:                                               ; preds = %17
  %26 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @P7, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @UNW_DEC_MEM_STACK_F(i32 %27, i32 %28, i32 %29, i8* %30)
  br label %123

32:                                               ; preds = %17
  %33 = load i32, i32* @P7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @UNW_DEC_MEM_STACK_V(i32 %33, i32 %34, i8* %35)
  br label %123

37:                                               ; preds = %17
  %38 = load i32, i32* @P7, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @UNW_DEC_SPILL_BASE(i32 %38, i32 %39, i8* %40)
  br label %123

42:                                               ; preds = %17
  %43 = load i32, i32* @P7, align 4
  %44 = load i32, i32* @UNW_REG_PSP, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @UNW_DEC_REG_SPREL(i32 %43, i32 %44, i32 %45, i8* %46)
  br label %123

48:                                               ; preds = %17
  %49 = load i32, i32* @P7, align 4
  %50 = load i32, i32* @UNW_REG_RP, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @UNW_DEC_REG_WHEN(i32 %49, i32 %50, i32 %51, i8* %52)
  br label %123

54:                                               ; preds = %17
  %55 = load i32, i32* @P7, align 4
  %56 = load i32, i32* @UNW_REG_RP, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @UNW_DEC_REG_PSPREL(i32 %55, i32 %56, i32 %57, i8* %58)
  br label %123

60:                                               ; preds = %17
  %61 = load i32, i32* @P7, align 4
  %62 = load i32, i32* @UNW_REG_PFS, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @UNW_DEC_REG_WHEN(i32 %61, i32 %62, i32 %63, i8* %64)
  br label %123

66:                                               ; preds = %17
  %67 = load i32, i32* @P7, align 4
  %68 = load i32, i32* @UNW_REG_PFS, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @UNW_DEC_REG_PSPREL(i32 %67, i32 %68, i32 %69, i8* %70)
  br label %123

72:                                               ; preds = %17
  %73 = load i32, i32* @P7, align 4
  %74 = load i32, i32* @UNW_REG_PR, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @UNW_DEC_REG_WHEN(i32 %73, i32 %74, i32 %75, i8* %76)
  br label %123

78:                                               ; preds = %17
  %79 = load i32, i32* @P7, align 4
  %80 = load i32, i32* @UNW_REG_PR, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @UNW_DEC_REG_PSPREL(i32 %79, i32 %80, i32 %81, i8* %82)
  br label %123

84:                                               ; preds = %17
  %85 = load i32, i32* @P7, align 4
  %86 = load i32, i32* @UNW_REG_LC, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @UNW_DEC_REG_WHEN(i32 %85, i32 %86, i32 %87, i8* %88)
  br label %123

90:                                               ; preds = %17
  %91 = load i32, i32* @P7, align 4
  %92 = load i32, i32* @UNW_REG_LC, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @UNW_DEC_REG_PSPREL(i32 %91, i32 %92, i32 %93, i8* %94)
  br label %123

96:                                               ; preds = %17
  %97 = load i32, i32* @P7, align 4
  %98 = load i32, i32* @UNW_REG_UNAT, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @UNW_DEC_REG_WHEN(i32 %97, i32 %98, i32 %99, i8* %100)
  br label %123

102:                                              ; preds = %17
  %103 = load i32, i32* @P7, align 4
  %104 = load i32, i32* @UNW_REG_UNAT, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @UNW_DEC_REG_PSPREL(i32 %103, i32 %104, i32 %105, i8* %106)
  br label %123

108:                                              ; preds = %17
  %109 = load i32, i32* @P7, align 4
  %110 = load i32, i32* @UNW_REG_FPSR, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @UNW_DEC_REG_WHEN(i32 %109, i32 %110, i32 %111, i8* %112)
  br label %123

114:                                              ; preds = %17
  %115 = load i32, i32* @P7, align 4
  %116 = load i32, i32* @UNW_REG_FPSR, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @UNW_DEC_REG_PSPREL(i32 %115, i32 %116, i32 %117, i8* %118)
  br label %123

120:                                              ; preds = %17
  %121 = load i8, i8* %8, align 1
  %122 = call i32 @UNW_DEC_BAD_CODE(i8 zeroext %121)
  br label %123

123:                                              ; preds = %120, %114, %108, %102, %96, %90, %84, %78, %72, %66, %60, %54, %48, %42, %37, %32, %25
  br label %303

124:                                              ; preds = %3
  %125 = load i8, i8* %6, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 15
  switch i32 %127, label %299 [
    i32 0, label %128
    i32 1, label %249
    i32 15, label %267
    i32 9, label %279
    i32 10, label %284
    i32 11, label %289
    i32 12, label %294
  ]

128:                                              ; preds = %124
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %5, align 8
  %131 = load i8, i8* %129, align 1
  store i8 %131, i8* %8, align 1
  %132 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %132, i32* %11, align 4
  %133 = load i8, i8* %8, align 1
  %134 = zext i8 %133 to i32
  switch i32 %134, label %245 [
    i32 1, label %135
    i32 2, label %141
    i32 3, label %147
    i32 4, label %153
    i32 5, label %159
    i32 6, label %165
    i32 7, label %171
    i32 8, label %177
    i32 9, label %183
    i32 10, label %189
    i32 11, label %195
    i32 12, label %201
    i32 13, label %207
    i32 14, label %213
    i32 15, label %219
    i32 16, label %225
    i32 17, label %230
    i32 18, label %235
    i32 19, label %240
  ]

135:                                              ; preds = %128
  %136 = load i32, i32* @P8, align 4
  %137 = load i32, i32* @UNW_REG_RP, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @UNW_DEC_REG_SPREL(i32 %136, i32 %137, i32 %138, i8* %139)
  br label %248

141:                                              ; preds = %128
  %142 = load i32, i32* @P8, align 4
  %143 = load i32, i32* @UNW_REG_PFS, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @UNW_DEC_REG_SPREL(i32 %142, i32 %143, i32 %144, i8* %145)
  br label %248

147:                                              ; preds = %128
  %148 = load i32, i32* @P8, align 4
  %149 = load i32, i32* @UNW_REG_PR, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 @UNW_DEC_REG_SPREL(i32 %148, i32 %149, i32 %150, i8* %151)
  br label %248

153:                                              ; preds = %128
  %154 = load i32, i32* @P8, align 4
  %155 = load i32, i32* @UNW_REG_LC, align 4
  %156 = load i32, i32* %11, align 4
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 @UNW_DEC_REG_SPREL(i32 %154, i32 %155, i32 %156, i8* %157)
  br label %248

159:                                              ; preds = %128
  %160 = load i32, i32* @P8, align 4
  %161 = load i32, i32* @UNW_REG_UNAT, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load i8*, i8** %7, align 8
  %164 = call i32 @UNW_DEC_REG_SPREL(i32 %160, i32 %161, i32 %162, i8* %163)
  br label %248

165:                                              ; preds = %128
  %166 = load i32, i32* @P8, align 4
  %167 = load i32, i32* @UNW_REG_FPSR, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @UNW_DEC_REG_SPREL(i32 %166, i32 %167, i32 %168, i8* %169)
  br label %248

171:                                              ; preds = %128
  %172 = load i32, i32* @P8, align 4
  %173 = load i32, i32* @UNW_REG_BSP, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 @UNW_DEC_REG_WHEN(i32 %172, i32 %173, i32 %174, i8* %175)
  br label %248

177:                                              ; preds = %128
  %178 = load i32, i32* @P8, align 4
  %179 = load i32, i32* @UNW_REG_BSP, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 @UNW_DEC_REG_PSPREL(i32 %178, i32 %179, i32 %180, i8* %181)
  br label %248

183:                                              ; preds = %128
  %184 = load i32, i32* @P8, align 4
  %185 = load i32, i32* @UNW_REG_BSP, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load i8*, i8** %7, align 8
  %188 = call i32 @UNW_DEC_REG_SPREL(i32 %184, i32 %185, i32 %186, i8* %187)
  br label %248

189:                                              ; preds = %128
  %190 = load i32, i32* @P8, align 4
  %191 = load i32, i32* @UNW_REG_BSPSTORE, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i8*, i8** %7, align 8
  %194 = call i32 @UNW_DEC_REG_WHEN(i32 %190, i32 %191, i32 %192, i8* %193)
  br label %248

195:                                              ; preds = %128
  %196 = load i32, i32* @P8, align 4
  %197 = load i32, i32* @UNW_REG_BSPSTORE, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i8*, i8** %7, align 8
  %200 = call i32 @UNW_DEC_REG_PSPREL(i32 %196, i32 %197, i32 %198, i8* %199)
  br label %248

201:                                              ; preds = %128
  %202 = load i32, i32* @P8, align 4
  %203 = load i32, i32* @UNW_REG_BSPSTORE, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load i8*, i8** %7, align 8
  %206 = call i32 @UNW_DEC_REG_SPREL(i32 %202, i32 %203, i32 %204, i8* %205)
  br label %248

207:                                              ; preds = %128
  %208 = load i32, i32* @P8, align 4
  %209 = load i32, i32* @UNW_REG_RNAT, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i8*, i8** %7, align 8
  %212 = call i32 @UNW_DEC_REG_WHEN(i32 %208, i32 %209, i32 %210, i8* %211)
  br label %248

213:                                              ; preds = %128
  %214 = load i32, i32* @P8, align 4
  %215 = load i32, i32* @UNW_REG_RNAT, align 4
  %216 = load i32, i32* %11, align 4
  %217 = load i8*, i8** %7, align 8
  %218 = call i32 @UNW_DEC_REG_PSPREL(i32 %214, i32 %215, i32 %216, i8* %217)
  br label %248

219:                                              ; preds = %128
  %220 = load i32, i32* @P8, align 4
  %221 = load i32, i32* @UNW_REG_RNAT, align 4
  %222 = load i32, i32* %11, align 4
  %223 = load i8*, i8** %7, align 8
  %224 = call i32 @UNW_DEC_REG_SPREL(i32 %220, i32 %221, i32 %222, i8* %223)
  br label %248

225:                                              ; preds = %128
  %226 = load i32, i32* @P8, align 4
  %227 = load i32, i32* %11, align 4
  %228 = load i8*, i8** %7, align 8
  %229 = call i32 @UNW_DEC_PRIUNAT_WHEN_GR(i32 %226, i32 %227, i8* %228)
  br label %248

230:                                              ; preds = %128
  %231 = load i32, i32* @P8, align 4
  %232 = load i32, i32* %11, align 4
  %233 = load i8*, i8** %7, align 8
  %234 = call i32 @UNW_DEC_PRIUNAT_PSPREL(i32 %231, i32 %232, i8* %233)
  br label %248

235:                                              ; preds = %128
  %236 = load i32, i32* @P8, align 4
  %237 = load i32, i32* %11, align 4
  %238 = load i8*, i8** %7, align 8
  %239 = call i32 @UNW_DEC_PRIUNAT_SPREL(i32 %236, i32 %237, i8* %238)
  br label %248

240:                                              ; preds = %128
  %241 = load i32, i32* @P8, align 4
  %242 = load i32, i32* %11, align 4
  %243 = load i8*, i8** %7, align 8
  %244 = call i32 @UNW_DEC_PRIUNAT_WHEN_MEM(i32 %241, i32 %242, i8* %243)
  br label %248

245:                                              ; preds = %128
  %246 = load i8, i8* %8, align 1
  %247 = call i32 @UNW_DEC_BAD_CODE(i8 zeroext %246)
  br label %248

248:                                              ; preds = %245, %240, %235, %230, %225, %219, %213, %207, %201, %195, %189, %183, %177, %171, %165, %159, %153, %147, %141, %135
  br label %302

249:                                              ; preds = %124
  %250 = load i8*, i8** %5, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %5, align 8
  %252 = load i8, i8* %250, align 1
  store i8 %252, i8* %9, align 1
  %253 = load i8*, i8** %5, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %5, align 8
  %255 = load i8, i8* %253, align 1
  store i8 %255, i8* %10, align 1
  %256 = load i32, i32* @P9, align 4
  %257 = load i8, i8* %9, align 1
  %258 = zext i8 %257 to i32
  %259 = and i32 %258, 15
  %260 = trunc i32 %259 to i8
  %261 = load i8, i8* %10, align 1
  %262 = zext i8 %261 to i32
  %263 = and i32 %262, 127
  %264 = trunc i32 %263 to i8
  %265 = load i8*, i8** %7, align 8
  %266 = call i32 @UNW_DEC_GR_GR(i32 %256, i8 zeroext %260, i8 zeroext %264, i8* %265)
  br label %302

267:                                              ; preds = %124
  %268 = load i8*, i8** %5, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %5, align 8
  %270 = load i8, i8* %268, align 1
  store i8 %270, i8* %9, align 1
  %271 = load i8*, i8** %5, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %5, align 8
  %273 = load i8, i8* %271, align 1
  store i8 %273, i8* %10, align 1
  %274 = load i32, i32* @P10, align 4
  %275 = load i8, i8* %9, align 1
  %276 = load i8, i8* %10, align 1
  %277 = load i8*, i8** %7, align 8
  %278 = call i32 @UNW_DEC_ABI(i32 %274, i8 zeroext %275, i8 zeroext %276, i8* %277)
  br label %302

279:                                              ; preds = %124
  %280 = load i8*, i8** %5, align 8
  %281 = load i8, i8* %6, align 1
  %282 = load i8*, i8** %7, align 8
  %283 = call i8* @unw_decode_x1(i8* %280, i8 zeroext %281, i8* %282)
  store i8* %283, i8** %4, align 8
  br label %305

284:                                              ; preds = %124
  %285 = load i8*, i8** %5, align 8
  %286 = load i8, i8* %6, align 1
  %287 = load i8*, i8** %7, align 8
  %288 = call i8* @unw_decode_x2(i8* %285, i8 zeroext %286, i8* %287)
  store i8* %288, i8** %4, align 8
  br label %305

289:                                              ; preds = %124
  %290 = load i8*, i8** %5, align 8
  %291 = load i8, i8* %6, align 1
  %292 = load i8*, i8** %7, align 8
  %293 = call i8* @unw_decode_x3(i8* %290, i8 zeroext %291, i8* %292)
  store i8* %293, i8** %4, align 8
  br label %305

294:                                              ; preds = %124
  %295 = load i8*, i8** %5, align 8
  %296 = load i8, i8* %6, align 1
  %297 = load i8*, i8** %7, align 8
  %298 = call i8* @unw_decode_x4(i8* %295, i8 zeroext %296, i8* %297)
  store i8* %298, i8** %4, align 8
  br label %305

299:                                              ; preds = %124
  %300 = load i8, i8* %6, align 1
  %301 = call i32 @UNW_DEC_BAD_CODE(i8 zeroext %300)
  br label %302

302:                                              ; preds = %299, %267, %249, %248
  br label %303

303:                                              ; preds = %302, %123
  %304 = load i8*, i8** %5, align 8
  store i8* %304, i8** %4, align 8
  br label %305

305:                                              ; preds = %303, %294, %289, %284, %279
  %306 = load i8*, i8** %4, align 8
  ret i8* %306
}

declare dso_local i32 @unw_decode_uleb128(i8**) #1

declare dso_local i32 @UNW_DEC_MEM_STACK_F(i32, i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_MEM_STACK_V(i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_SPILL_BASE(i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_REG_SPREL(i32, i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_REG_WHEN(i32, i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_REG_PSPREL(i32, i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_BAD_CODE(i8 zeroext) #1

declare dso_local i32 @UNW_DEC_PRIUNAT_WHEN_GR(i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_PRIUNAT_PSPREL(i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_PRIUNAT_SPREL(i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_PRIUNAT_WHEN_MEM(i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_GR_GR(i32, i8 zeroext, i8 zeroext, i8*) #1

declare dso_local i32 @UNW_DEC_ABI(i32, i8 zeroext, i8 zeroext, i8*) #1

declare dso_local i8* @unw_decode_x1(i8*, i8 zeroext, i8*) #1

declare dso_local i8* @unw_decode_x2(i8*, i8 zeroext, i8*) #1

declare dso_local i8* @unw_decode_x3(i8*, i8 zeroext, i8*) #1

declare dso_local i8* @unw_decode_x4(i8*, i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
