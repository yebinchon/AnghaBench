; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_pm_terrain.c__terrain_load_tga_buffer.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_pm_terrain.c__terrain_load_tga_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8* }

@PICO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Only type 2 (RGB), 3 (gray), and 10 (RGB) TGA images supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Indexed color TGA images not supported\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Only 32 or 24 bit TGA images supported (not indexed color)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_terrain_load_tga_buffer(i8* %0, i8** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_2__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %30 = load i8**, i8*** %6, align 8
  store i8* null, i8** %30, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %556

34:                                               ; preds = %4
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %15, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %15, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %15, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %15, align 8
  %43 = load i8, i8* %41, align 1
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  store i32 %44, i32* %45, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %15, align 8
  %48 = load i8, i8* %46, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = bitcast i8* %51 to i16*
  %53 = load i16, i16* %52, align 2
  %54 = call i8* @_pico_little_short(i16 signext %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 11
  store i8* %54, i8** %55, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %57, i8** %15, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = bitcast i8* %58 to i16*
  %60 = load i16, i16* %59, align 2
  %61 = call i8* @_pico_little_short(i16 signext %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 10
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %64, i8** %15, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %15, align 8
  %67 = load i8, i8* %65, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 9
  store i32 %68, i32* %69, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = bitcast i8* %70 to i16*
  %72 = load i16, i16* %71, align 2
  %73 = call i8* @_pico_little_short(i16 signext %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 8
  store i8* %73, i8** %74, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  store i8* %76, i8** %15, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = bitcast i8* %77 to i16*
  %79 = load i16, i16* %78, align 2
  %80 = call i8* @_pico_little_short(i16 signext %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 7
  store i8* %80, i8** %81, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = bitcast i8* %84 to i16*
  %86 = load i16, i16* %85, align 2
  %87 = call i8* @_pico_little_short(i16 signext %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load i8*, i8** %15, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  store i8* %91, i8** %15, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = bitcast i8* %92 to i16*
  %94 = load i16, i16* %93, align 2
  %95 = call i8* @_pico_little_short(i16 signext %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  store i8* %99, i8** %15, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %15, align 8
  %102 = load i8, i8* %100, align 1
  %103 = zext i8 %102 to i32
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 %103, i32* %104, align 4
  %105 = load i8*, i8** %15, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %15, align 8
  %107 = load i8, i8* %105, align 1
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  store i32 %108, i32* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 2
  br i1 %112, label %113, label %124

113:                                              ; preds = %34
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 10
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 3
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i32, i32* @PICO_ERROR, align 4
  %123 = call i32 @_pico_printf(i32 %122, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i8** null, i8*** %6, align 8
  br label %556

124:                                              ; preds = %117, %113, %34
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @PICO_ERROR, align 4
  %130 = call i32 @_pico_printf(i32 %129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %556

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 32
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 24
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 3
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i32, i32* @PICO_ERROR, align 4
  %145 = call i32 @_pico_printf(i32 %144, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  store i8** null, i8*** %6, align 8
  br label %556

146:                                              ; preds = %139, %135, %131
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %11, align 4
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %12, align 4
  %153 = mul nsw i32 %151, %152
  store i32 %153, i32* %13, align 4
  %154 = load i32*, i32** %7, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32, i32* %11, align 4
  %158 = load i32*, i32** %7, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %146
  %160 = load i32*, i32** %8, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %12, align 4
  %164 = load i32*, i32** %8, align 8
  store i32 %163, i32* %164, align 4
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %13, align 4
  %167 = mul nsw i32 %166, 4
  %168 = call i8* @_pico_alloc(i32 %167)
  store i8* %168, i8** %17, align 8
  %169 = load i8*, i8** %17, align 8
  %170 = load i8**, i8*** %6, align 8
  store i8* %169, i8** %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %165
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load i8*, i8** %15, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8* %179, i8** %15, align 8
  br label %180

180:                                              ; preds = %174, %165
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %186, 3
  br i1 %187, label %188, label %282

188:                                              ; preds = %184, %180
  %189 = load i32, i32* %12, align 4
  %190 = sub nsw i32 %189, 1
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %278, %188
  %192 = load i32, i32* %9, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %281

194:                                              ; preds = %191
  %195 = load i8*, i8** %17, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %11, align 4
  %198 = mul nsw i32 %196, %197
  %199 = mul nsw i32 %198, 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %195, i64 %200
  store i8* %201, i8** %14, align 8
  store i32 0, i32* %10, align 4
  br label %202

202:                                              ; preds = %274, %194
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %11, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %277

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  switch i32 %208, label %272 [
    i32 8, label %209
    i32 24, label %226
    i32 32, label %247
  ]

209:                                              ; preds = %206
  %210 = load i8*, i8** %15, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %15, align 8
  %212 = load i8, i8* %210, align 1
  store i8 %212, i8* %20, align 1
  %213 = load i8, i8* %20, align 1
  store i8 %213, i8* %19, align 1
  %214 = load i8, i8* %20, align 1
  store i8 %214, i8* %18, align 1
  %215 = load i8, i8* %18, align 1
  %216 = load i8*, i8** %14, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %14, align 8
  store i8 %215, i8* %216, align 1
  %218 = load i8, i8* %19, align 1
  %219 = load i8*, i8** %14, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %14, align 8
  store i8 %218, i8* %219, align 1
  %221 = load i8, i8* %20, align 1
  %222 = load i8*, i8** %14, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %14, align 8
  store i8 %221, i8* %222, align 1
  %224 = load i8*, i8** %14, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %14, align 8
  store i8 -1, i8* %224, align 1
  br label %273

226:                                              ; preds = %206
  %227 = load i8*, i8** %15, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %15, align 8
  %229 = load i8, i8* %227, align 1
  store i8 %229, i8* %20, align 1
  %230 = load i8*, i8** %15, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %15, align 8
  %232 = load i8, i8* %230, align 1
  store i8 %232, i8* %19, align 1
  %233 = load i8*, i8** %15, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %15, align 8
  %235 = load i8, i8* %233, align 1
  store i8 %235, i8* %18, align 1
  %236 = load i8, i8* %18, align 1
  %237 = load i8*, i8** %14, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %14, align 8
  store i8 %236, i8* %237, align 1
  %239 = load i8, i8* %19, align 1
  %240 = load i8*, i8** %14, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %14, align 8
  store i8 %239, i8* %240, align 1
  %242 = load i8, i8* %20, align 1
  %243 = load i8*, i8** %14, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %14, align 8
  store i8 %242, i8* %243, align 1
  %245 = load i8*, i8** %14, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %14, align 8
  store i8 -1, i8* %245, align 1
  br label %273

247:                                              ; preds = %206
  %248 = load i8*, i8** %15, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %15, align 8
  %250 = load i8, i8* %248, align 1
  store i8 %250, i8* %20, align 1
  %251 = load i8*, i8** %15, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %15, align 8
  %253 = load i8, i8* %251, align 1
  store i8 %253, i8* %19, align 1
  %254 = load i8*, i8** %15, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %15, align 8
  %256 = load i8, i8* %254, align 1
  store i8 %256, i8* %18, align 1
  %257 = load i8*, i8** %15, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %15, align 8
  %259 = load i8, i8* %257, align 1
  store i8 %259, i8* %21, align 1
  %260 = load i8, i8* %18, align 1
  %261 = load i8*, i8** %14, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %14, align 8
  store i8 %260, i8* %261, align 1
  %263 = load i8, i8* %19, align 1
  %264 = load i8*, i8** %14, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %14, align 8
  store i8 %263, i8* %264, align 1
  %266 = load i8, i8* %20, align 1
  %267 = load i8*, i8** %14, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %14, align 8
  store i8 %266, i8* %267, align 1
  %269 = load i8, i8* %21, align 1
  %270 = load i8*, i8** %14, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %14, align 8
  store i8 %269, i8* %270, align 1
  br label %273

272:                                              ; preds = %206
  br label %273

273:                                              ; preds = %272, %247, %226, %209
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %10, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %10, align 4
  br label %202

277:                                              ; preds = %202
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %9, align 4
  %280 = add nsw i32 %279, -1
  store i32 %280, i32* %9, align 4
  br label %191

281:                                              ; preds = %191
  br label %480

282:                                              ; preds = %184
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %284, 10
  br i1 %285, label %286, label %479

286:                                              ; preds = %282
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %24, align 1
  store i8 -1, i8* %25, align 1
  %287 = load i32, i32* %12, align 4
  %288 = sub nsw i32 %287, 1
  store i32 %288, i32* %9, align 4
  br label %289

289:                                              ; preds = %475, %286
  %290 = load i32, i32* %9, align 4
  %291 = icmp sge i32 %290, 0
  br i1 %291, label %292, label %478

292:                                              ; preds = %289
  %293 = load i8*, i8** %17, align 8
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* %11, align 4
  %296 = mul nsw i32 %294, %295
  %297 = mul nsw i32 %296, 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %293, i64 %298
  store i8* %299, i8** %14, align 8
  store i32 0, i32* %10, align 4
  br label %300

300:                                              ; preds = %472, %292
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* %11, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %473

304:                                              ; preds = %300
  %305 = load i8*, i8** %15, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %15, align 8
  %307 = load i8, i8* %305, align 1
  store i8 %307, i8* %26, align 1
  %308 = load i8, i8* %26, align 1
  %309 = zext i8 %308 to i32
  %310 = and i32 %309, 127
  %311 = add nsw i32 1, %310
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %27, align 1
  %313 = load i8, i8* %26, align 1
  %314 = zext i8 %313 to i32
  %315 = and i32 %314, 128
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %389

317:                                              ; preds = %304
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  switch i32 %319, label %343 [
    i32 24, label %320
    i32 32, label %330
  ]

320:                                              ; preds = %317
  %321 = load i8*, i8** %15, align 8
  %322 = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %322, i8** %15, align 8
  %323 = load i8, i8* %321, align 1
  store i8 %323, i8* %24, align 1
  %324 = load i8*, i8** %15, align 8
  %325 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %325, i8** %15, align 8
  %326 = load i8, i8* %324, align 1
  store i8 %326, i8* %23, align 1
  %327 = load i8*, i8** %15, align 8
  %328 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %328, i8** %15, align 8
  %329 = load i8, i8* %327, align 1
  store i8 %329, i8* %22, align 1
  store i8 -1, i8* %25, align 1
  br label %344

330:                                              ; preds = %317
  %331 = load i8*, i8** %15, align 8
  %332 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %332, i8** %15, align 8
  %333 = load i8, i8* %331, align 1
  store i8 %333, i8* %24, align 1
  %334 = load i8*, i8** %15, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %15, align 8
  %336 = load i8, i8* %334, align 1
  store i8 %336, i8* %23, align 1
  %337 = load i8*, i8** %15, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %15, align 8
  %339 = load i8, i8* %337, align 1
  store i8 %339, i8* %22, align 1
  %340 = load i8*, i8** %15, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %15, align 8
  %342 = load i8, i8* %340, align 1
  store i8 %342, i8* %25, align 1
  br label %344

343:                                              ; preds = %317
  br label %344

344:                                              ; preds = %343, %330, %320
  store i8 0, i8* %28, align 1
  br label %345

345:                                              ; preds = %385, %344
  %346 = load i8, i8* %28, align 1
  %347 = zext i8 %346 to i32
  %348 = load i8, i8* %27, align 1
  %349 = zext i8 %348 to i32
  %350 = icmp slt i32 %347, %349
  br i1 %350, label %351, label %388

351:                                              ; preds = %345
  %352 = load i8, i8* %22, align 1
  %353 = load i8*, i8** %14, align 8
  %354 = getelementptr inbounds i8, i8* %353, i32 1
  store i8* %354, i8** %14, align 8
  store i8 %352, i8* %353, align 1
  %355 = load i8, i8* %23, align 1
  %356 = load i8*, i8** %14, align 8
  %357 = getelementptr inbounds i8, i8* %356, i32 1
  store i8* %357, i8** %14, align 8
  store i8 %355, i8* %356, align 1
  %358 = load i8, i8* %24, align 1
  %359 = load i8*, i8** %14, align 8
  %360 = getelementptr inbounds i8, i8* %359, i32 1
  store i8* %360, i8** %14, align 8
  store i8 %358, i8* %359, align 1
  %361 = load i8, i8* %25, align 1
  %362 = load i8*, i8** %14, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %363, i8** %14, align 8
  store i8 %361, i8* %362, align 1
  %364 = load i32, i32* %10, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %10, align 4
  %366 = load i32, i32* %10, align 4
  %367 = load i32, i32* %11, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %384

369:                                              ; preds = %351
  store i32 0, i32* %10, align 4
  %370 = load i32, i32* %9, align 4
  %371 = icmp sgt i32 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %369
  %373 = load i32, i32* %9, align 4
  %374 = add nsw i32 %373, -1
  store i32 %374, i32* %9, align 4
  br label %376

375:                                              ; preds = %369
  br label %474

376:                                              ; preds = %372
  %377 = load i8*, i8** %17, align 8
  %378 = load i32, i32* %9, align 4
  %379 = load i32, i32* %11, align 4
  %380 = mul nsw i32 %378, %379
  %381 = mul nsw i32 %380, 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8, i8* %377, i64 %382
  store i8* %383, i8** %14, align 8
  br label %384

384:                                              ; preds = %376, %351
  br label %385

385:                                              ; preds = %384
  %386 = load i8, i8* %28, align 1
  %387 = add i8 %386, 1
  store i8 %387, i8* %28, align 1
  br label %345

388:                                              ; preds = %345
  br label %472

389:                                              ; preds = %304
  store i8 0, i8* %28, align 1
  br label %390

390:                                              ; preds = %468, %389
  %391 = load i8, i8* %28, align 1
  %392 = zext i8 %391 to i32
  %393 = load i8, i8* %27, align 1
  %394 = zext i8 %393 to i32
  %395 = icmp slt i32 %392, %394
  br i1 %395, label %396, label %471

396:                                              ; preds = %390
  %397 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %398 = load i32, i32* %397, align 4
  switch i32 %398, label %445 [
    i32 24, label %399
    i32 32, label %420
  ]

399:                                              ; preds = %396
  %400 = load i8*, i8** %15, align 8
  %401 = getelementptr inbounds i8, i8* %400, i32 1
  store i8* %401, i8** %15, align 8
  %402 = load i8, i8* %400, align 1
  store i8 %402, i8* %24, align 1
  %403 = load i8*, i8** %15, align 8
  %404 = getelementptr inbounds i8, i8* %403, i32 1
  store i8* %404, i8** %15, align 8
  %405 = load i8, i8* %403, align 1
  store i8 %405, i8* %23, align 1
  %406 = load i8*, i8** %15, align 8
  %407 = getelementptr inbounds i8, i8* %406, i32 1
  store i8* %407, i8** %15, align 8
  %408 = load i8, i8* %406, align 1
  store i8 %408, i8* %22, align 1
  %409 = load i8, i8* %22, align 1
  %410 = load i8*, i8** %14, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %14, align 8
  store i8 %409, i8* %410, align 1
  %412 = load i8, i8* %23, align 1
  %413 = load i8*, i8** %14, align 8
  %414 = getelementptr inbounds i8, i8* %413, i32 1
  store i8* %414, i8** %14, align 8
  store i8 %412, i8* %413, align 1
  %415 = load i8, i8* %24, align 1
  %416 = load i8*, i8** %14, align 8
  %417 = getelementptr inbounds i8, i8* %416, i32 1
  store i8* %417, i8** %14, align 8
  store i8 %415, i8* %416, align 1
  %418 = load i8*, i8** %14, align 8
  %419 = getelementptr inbounds i8, i8* %418, i32 1
  store i8* %419, i8** %14, align 8
  store i8 -1, i8* %418, align 1
  br label %446

420:                                              ; preds = %396
  %421 = load i8*, i8** %15, align 8
  %422 = getelementptr inbounds i8, i8* %421, i32 1
  store i8* %422, i8** %15, align 8
  %423 = load i8, i8* %421, align 1
  store i8 %423, i8* %24, align 1
  %424 = load i8*, i8** %15, align 8
  %425 = getelementptr inbounds i8, i8* %424, i32 1
  store i8* %425, i8** %15, align 8
  %426 = load i8, i8* %424, align 1
  store i8 %426, i8* %23, align 1
  %427 = load i8*, i8** %15, align 8
  %428 = getelementptr inbounds i8, i8* %427, i32 1
  store i8* %428, i8** %15, align 8
  %429 = load i8, i8* %427, align 1
  store i8 %429, i8* %22, align 1
  %430 = load i8*, i8** %15, align 8
  %431 = getelementptr inbounds i8, i8* %430, i32 1
  store i8* %431, i8** %15, align 8
  %432 = load i8, i8* %430, align 1
  store i8 %432, i8* %25, align 1
  %433 = load i8, i8* %22, align 1
  %434 = load i8*, i8** %14, align 8
  %435 = getelementptr inbounds i8, i8* %434, i32 1
  store i8* %435, i8** %14, align 8
  store i8 %433, i8* %434, align 1
  %436 = load i8, i8* %23, align 1
  %437 = load i8*, i8** %14, align 8
  %438 = getelementptr inbounds i8, i8* %437, i32 1
  store i8* %438, i8** %14, align 8
  store i8 %436, i8* %437, align 1
  %439 = load i8, i8* %24, align 1
  %440 = load i8*, i8** %14, align 8
  %441 = getelementptr inbounds i8, i8* %440, i32 1
  store i8* %441, i8** %14, align 8
  store i8 %439, i8* %440, align 1
  %442 = load i8, i8* %25, align 1
  %443 = load i8*, i8** %14, align 8
  %444 = getelementptr inbounds i8, i8* %443, i32 1
  store i8* %444, i8** %14, align 8
  store i8 %442, i8* %443, align 1
  br label %446

445:                                              ; preds = %396
  br label %446

446:                                              ; preds = %445, %420, %399
  %447 = load i32, i32* %10, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %10, align 4
  %449 = load i32, i32* %10, align 4
  %450 = load i32, i32* %11, align 4
  %451 = icmp eq i32 %449, %450
  br i1 %451, label %452, label %467

452:                                              ; preds = %446
  store i32 0, i32* %10, align 4
  %453 = load i32, i32* %9, align 4
  %454 = icmp sgt i32 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %452
  %456 = load i32, i32* %9, align 4
  %457 = add nsw i32 %456, -1
  store i32 %457, i32* %9, align 4
  br label %459

458:                                              ; preds = %452
  br label %474

459:                                              ; preds = %455
  %460 = load i8*, i8** %17, align 8
  %461 = load i32, i32* %9, align 4
  %462 = load i32, i32* %11, align 4
  %463 = mul nsw i32 %461, %462
  %464 = mul nsw i32 %463, 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8, i8* %460, i64 %465
  store i8* %466, i8** %14, align 8
  br label %467

467:                                              ; preds = %459, %446
  br label %468

468:                                              ; preds = %467
  %469 = load i8, i8* %28, align 1
  %470 = add i8 %469, 1
  store i8 %470, i8* %28, align 1
  br label %390

471:                                              ; preds = %390
  br label %472

472:                                              ; preds = %471, %388
  br label %300

473:                                              ; preds = %300
  br label %474

474:                                              ; preds = %473, %458, %375
  br label %475

475:                                              ; preds = %474
  %476 = load i32, i32* %9, align 4
  %477 = add nsw i32 %476, -1
  store i32 %477, i32* %9, align 4
  br label %289

478:                                              ; preds = %289
  br label %479

479:                                              ; preds = %478, %282
  br label %480

480:                                              ; preds = %479, %281
  %481 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %482 = load i32, i32* %481, align 8
  %483 = and i32 %482, 32
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %556

485:                                              ; preds = %480
  store i32 0, i32* %9, align 4
  br label %486

486:                                              ; preds = %552, %485
  %487 = load i32, i32* %9, align 4
  %488 = sitofp i32 %487 to float
  %489 = load i32, i32* %12, align 4
  %490 = sitofp i32 %489 to float
  %491 = fmul float 5.000000e-01, %490
  %492 = fcmp olt float %488, %491
  br i1 %492, label %493, label %555

493:                                              ; preds = %486
  store i32 0, i32* %10, align 4
  br label %494

494:                                              ; preds = %548, %493
  %495 = load i32, i32* %10, align 4
  %496 = load i32, i32* %11, align 4
  %497 = icmp slt i32 %495, %496
  br i1 %497, label %498, label %551

498:                                              ; preds = %494
  %499 = load i8*, i8** %17, align 8
  %500 = bitcast i8* %499 to i32*
  %501 = load i32, i32* %9, align 4
  %502 = load i32, i32* %11, align 4
  %503 = mul nsw i32 %501, %502
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %500, i64 %504
  %506 = load i32, i32* %10, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %505, i64 %507
  %509 = load i32, i32* %508, align 4
  store i32 %509, i32* %29, align 4
  %510 = load i8*, i8** %17, align 8
  %511 = bitcast i8* %510 to i32*
  %512 = load i32, i32* %12, align 4
  %513 = sub nsw i32 %512, 1
  %514 = load i32, i32* %9, align 4
  %515 = sub nsw i32 %513, %514
  %516 = load i32, i32* %11, align 4
  %517 = mul nsw i32 %515, %516
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %511, i64 %518
  %520 = load i32, i32* %10, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %519, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = load i8*, i8** %17, align 8
  %525 = bitcast i8* %524 to i32*
  %526 = load i32, i32* %9, align 4
  %527 = load i32, i32* %11, align 4
  %528 = mul nsw i32 %526, %527
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32, i32* %525, i64 %529
  %531 = load i32, i32* %10, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  store i32 %523, i32* %533, align 4
  %534 = load i32, i32* %29, align 4
  %535 = load i8*, i8** %17, align 8
  %536 = bitcast i8* %535 to i32*
  %537 = load i32, i32* %12, align 4
  %538 = sub nsw i32 %537, 1
  %539 = load i32, i32* %9, align 4
  %540 = sub nsw i32 %538, %539
  %541 = load i32, i32* %11, align 4
  %542 = mul nsw i32 %540, %541
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds i32, i32* %536, i64 %543
  %545 = load i32, i32* %10, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %544, i64 %546
  store i32 %534, i32* %547, align 4
  br label %548

548:                                              ; preds = %498
  %549 = load i32, i32* %10, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %10, align 4
  br label %494

551:                                              ; preds = %494
  br label %552

552:                                              ; preds = %551
  %553 = load i32, i32* %9, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %9, align 4
  br label %486

555:                                              ; preds = %486
  br label %556

556:                                              ; preds = %33, %121, %128, %143, %555, %480
  ret void
}

declare dso_local i8* @_pico_little_short(i16 signext) #1

declare dso_local i32 @_pico_printf(i32, i8*) #1

declare dso_local i8* @_pico_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
