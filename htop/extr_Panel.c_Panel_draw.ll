; ModuleID = '/home/carl/AnghaBench/htop/extr_Panel.c_Panel_draw.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Panel.c_Panel_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CRT_colors = common dso_local global i32* null, align 8
@PANEL_HEADER_FOCUS = common dso_local global i64 0, align 8
@PANEL_HEADER_UNFOCUS = common dso_local global i64 0, align 8
@RESET_COLOR = common dso_local global i64 0, align 8
@PANEL_SELECTION_UNFOCUS = common dso_local global i64 0, align 8
@item = common dso_local global i32 0, align 4
@old = common dso_local global i32 0, align 4
@new = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Panel_draw(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @assert(i32* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @Vector_size(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @RichString_sizeVal(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %102

53:                                               ; preds = %2
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32*, i32** @CRT_colors, align 8
  %58 = load i64, i64* @PANEL_HEADER_FOCUS, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load i32*, i32** @CRT_colors, align 8
  %63 = load i64, i64* @PANEL_HEADER_UNFOCUS, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i32 [ %60, %56 ], [ %65, %61 ]
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @attrset(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mvhline(i32 %70, i32 %71, i8 signext 32, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %66
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 12
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @MIN(i32 %88, i32 %91)
  %93 = call i32 @RichString_printoffnVal(i32 %82, i32 %83, i32 %84, i32 %85, i32 %92)
  br label %94

94:                                               ; preds = %79, %66
  %95 = load i32*, i32** @CRT_colors, align 8
  %96 = load i64, i64* @RESET_COLOR, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @attrset(i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %94, %2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  store i32 0, i32* %109, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 6
  store i32 1, i32* %111, align 4
  br label %127

112:                                              ; preds = %102
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load i32, i32* %5, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @MAX(i32 %120, i32 0)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 6
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %118, %112
  br label %127

127:                                              ; preds = %126, %107
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 6
  store i32 1, i32* %142, align 4
  br label %165

143:                                              ; preds = %127
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %149, %150
  %152 = icmp sge i32 %146, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %143
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %9, align 4
  %158 = sub nsw i32 %156, %157
  %159 = add nsw i32 %158, 1
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 6
  store i32 1, i32* %163, align 4
  br label %164

164:                                              ; preds = %153, %143
  br label %165

165:                                              ; preds = %164, %135
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @MIN(i32 %171, i32 %172)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %4, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  br label %185

180:                                              ; preds = %165
  %181 = load i32*, i32** @CRT_colors, align 8
  %182 = load i64, i64* @PANEL_SELECTION_UNFOCUS, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  br label %185

185:                                              ; preds = %180, %176
  %186 = phi i32 [ %179, %176 ], [ %184, %180 ]
  store i32 %186, i32* %14, align 4
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %300

191:                                              ; preds = %185
  store i32 0, i32* %15, align 4
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %16, align 4
  br label %193

193:                                              ; preds = %278, %191
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %13, align 4
  %200 = icmp slt i32 %198, %199
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi i1 [ false, %193 ], [ %200, %197 ]
  br i1 %202, label %203, label %281

203:                                              ; preds = %201
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %16, align 4
  %208 = call i32* @Vector_get(i32 %206, i32 %207)
  store i32* %208, i32** %17, align 8
  %209 = load i32*, i32** %17, align 8
  %210 = call i32 @assert(i32* %209)
  %211 = load i32*, i32** %17, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %203
  br label %278

214:                                              ; preds = %203
  %215 = load i32, i32* @item, align 4
  %216 = call i32 @RichString_begin(i32 %215)
  %217 = load i32*, i32** %17, align 8
  %218 = call i32 @Object_display(i32* %217, i32* @item)
  %219 = load i32, i32* @item, align 4
  %220 = call i32 @RichString_sizeVal(i32 %219)
  store i32 %220, i32* %18, align 4
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* %6, align 4
  %223 = sub nsw i32 %221, %222
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @MIN(i32 %223, i32 %226)
  store i32 %227, i32* %19, align 4
  %228 = load i32, i32* %16, align 4
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %228, %231
  %233 = zext i1 %232 to i32
  store i32 %233, i32* %20, align 4
  %234 = load i32, i32* %20, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %214
  %237 = load i32, i32* %14, align 4
  %238 = call i32 @attrset(i32 %237)
  %239 = load i32, i32* %14, align 4
  %240 = call i32 @RichString_setAttr(i32* @item, i32 %239)
  %241 = load i32, i32* %18, align 4
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 9
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %236, %214
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %245, %246
  %248 = load i32, i32* %8, align 4
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @mvhline(i32 %247, i32 %248, i8 signext 32, i32 %251)
  %253 = load i32, i32* %19, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %264

255:                                              ; preds = %244
  %256 = load i32, i32* @item, align 4
  %257 = load i32, i32* %7, align 4
  %258 = load i32, i32* %15, align 4
  %259 = add nsw i32 %257, %258
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* %19, align 4
  %263 = call i32 @RichString_printoffnVal(i32 %256, i32 %259, i32 %260, i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %255, %244
  %265 = load i32, i32* %20, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %264
  %268 = load i32*, i32** @CRT_colors, align 8
  %269 = load i64, i64* @RESET_COLOR, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @attrset(i32 %271)
  br label %273

273:                                              ; preds = %267, %264
  %274 = load i32, i32* @item, align 4
  %275 = call i32 @RichString_end(i32 %274)
  %276 = load i32, i32* %15, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %15, align 4
  br label %278

278:                                              ; preds = %273, %213
  %279 = load i32, i32* %16, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %16, align 4
  br label %193

281:                                              ; preds = %201
  br label %282

282:                                              ; preds = %286, %281
  %283 = load i32, i32* %15, align 4
  %284 = load i32, i32* %9, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %297

286:                                              ; preds = %282
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* %15, align 4
  %289 = add nsw i32 %287, %288
  %290 = load i32, i32* %8, align 4
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @mvhline(i32 %289, i32 %290, i8 signext 32, i32 %293)
  %295 = load i32, i32* %15, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %15, align 4
  br label %282

297:                                              ; preds = %282
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 6
  store i32 0, i32* %299, align 4
  br label %417

300:                                              ; preds = %185
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 11
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 10
  %306 = load i32, i32* %305, align 4
  %307 = call i32* @Vector_get(i32 %303, i32 %306)
  store i32* %307, i32** %21, align 8
  %308 = load i32*, i32** %21, align 8
  %309 = call i32 @assert(i32* %308)
  %310 = load i32, i32* @old, align 4
  %311 = call i32 @RichString_begin(i32 %310)
  %312 = load i32*, i32** %21, align 8
  %313 = call i32 @Object_display(i32* %312, i32* @old)
  %314 = load i32, i32* @old, align 4
  %315 = call i32 @RichString_sizeVal(i32 %314)
  store i32 %315, i32* %22, align 4
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 11
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 4
  %322 = call i32* @Vector_get(i32 %318, i32 %321)
  store i32* %322, i32** %23, align 8
  %323 = load i32, i32* @new, align 4
  %324 = call i32 @RichString_begin(i32 %323)
  %325 = load i32*, i32** %23, align 8
  %326 = call i32 @Object_display(i32* %325, i32* @new)
  %327 = load i32, i32* @new, align 4
  %328 = call i32 @RichString_sizeVal(i32 %327)
  store i32 %328, i32* %24, align 4
  %329 = load i32, i32* %24, align 4
  %330 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i32 0, i32 9
  store i32 %329, i32* %331, align 4
  %332 = load i32, i32* %7, align 4
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 10
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %332, %335
  %337 = load i32, i32* %12, align 4
  %338 = sub nsw i32 %336, %337
  %339 = load i32, i32* %8, align 4
  %340 = add nsw i32 %339, 0
  %341 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @mvhline(i32 %338, i32 %340, i8 signext 32, i32 %343)
  %345 = load i32, i32* %6, align 4
  %346 = load i32, i32* %22, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %367

348:                                              ; preds = %300
  %349 = load i32, i32* @old, align 4
  %350 = load i32, i32* %7, align 4
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 10
  %353 = load i32, i32* %352, align 4
  %354 = add nsw i32 %350, %353
  %355 = load i32, i32* %12, align 4
  %356 = sub nsw i32 %354, %355
  %357 = load i32, i32* %8, align 4
  %358 = load i32, i32* %6, align 4
  %359 = load i32, i32* %22, align 4
  %360 = load i32, i32* %6, align 4
  %361 = sub nsw i32 %359, %360
  %362 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @MIN(i32 %361, i32 %364)
  %366 = call i32 @RichString_printoffnVal(i32 %349, i32 %356, i32 %357, i32 %358, i32 %365)
  br label %367

367:                                              ; preds = %348, %300
  %368 = load i32, i32* %14, align 4
  %369 = call i32 @attrset(i32 %368)
  %370 = load i32, i32* %7, align 4
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 7
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %370, %373
  %375 = load i32, i32* %12, align 4
  %376 = sub nsw i32 %374, %375
  %377 = load i32, i32* %8, align 4
  %378 = add nsw i32 %377, 0
  %379 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @mvhline(i32 %376, i32 %378, i8 signext 32, i32 %381)
  %383 = load i32, i32* %14, align 4
  %384 = call i32 @RichString_setAttr(i32* @new, i32 %383)
  %385 = load i32, i32* %6, align 4
  %386 = load i32, i32* %24, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %407

388:                                              ; preds = %367
  %389 = load i32, i32* @new, align 4
  %390 = load i32, i32* %7, align 4
  %391 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %391, i32 0, i32 7
  %393 = load i32, i32* %392, align 4
  %394 = add nsw i32 %390, %393
  %395 = load i32, i32* %12, align 4
  %396 = sub nsw i32 %394, %395
  %397 = load i32, i32* %8, align 4
  %398 = load i32, i32* %6, align 4
  %399 = load i32, i32* %24, align 4
  %400 = load i32, i32* %6, align 4
  %401 = sub nsw i32 %399, %400
  %402 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i32 0, i32 4
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @MIN(i32 %401, i32 %404)
  %406 = call i32 @RichString_printoffnVal(i32 %389, i32 %396, i32 %397, i32 %398, i32 %405)
  br label %407

407:                                              ; preds = %388, %367
  %408 = load i32*, i32** @CRT_colors, align 8
  %409 = load i64, i64* @RESET_COLOR, align 8
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @attrset(i32 %411)
  %413 = load i32, i32* @new, align 4
  %414 = call i32 @RichString_end(i32 %413)
  %415 = load i32, i32* @old, align 4
  %416 = call i32 @RichString_end(i32 %415)
  br label %417

417:                                              ; preds = %407, %297
  %418 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 7
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i32 0, i32 10
  store i32 %420, i32* %422, align 4
  %423 = call i32 @move(i32 0, i32 0)
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @Vector_size(i32) #1

declare dso_local i32 @RichString_sizeVal(i32) #1

declare dso_local i32 @attrset(i32) #1

declare dso_local i32 @mvhline(i32, i32, i8 signext, i32) #1

declare dso_local i32 @RichString_printoffnVal(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32* @Vector_get(i32, i32) #1

declare dso_local i32 @RichString_begin(i32) #1

declare dso_local i32 @Object_display(i32*, i32*) #1

declare dso_local i32 @RichString_setAttr(i32*, i32) #1

declare dso_local i32 @RichString_end(i32) #1

declare dso_local i32 @move(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
