; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_ListBox_Paint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_ListBox_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (i32)*, i64 (i32, i32)*, i8* (i32, i32, i32, i64*)*, i32 (float, float, float, float, i32)*, i32 (float, float, i32, i32, i8*, i32, i32, i32)*, i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i32, i32)*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, float }
%struct.TYPE_14__ = type { i32, i32, i64, i32, i32, float, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { float, i32, i32 }

@DC = common dso_local global %struct.TYPE_16__* null, align 8
@WINDOW_HORIZONTAL = common dso_local global i32 0, align 4
@SCROLLBAR_SIZE = common dso_local global i32 0, align 4
@LISTBOX_IMAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_ListBox_Paint(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %20(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WINDOW_HORIZONTAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %269

32:                                               ; preds = %1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = sitofp i32 %38 to float
  store float %39, float* %3, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %44, %49
  %51 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  %54 = sitofp i32 %53 to float
  store float %54, float* %4, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 5
  %57 = load i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i64)** %56, align 8
  %58 = load float, float* %3, align 4
  %59 = load float, float* %4, align 4
  %60 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %61 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 7
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 %57(float %58, float %59, i32 %60, i32 %61, i64 %65)
  %67 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sitofp i32 %68 to float
  %70 = load float, float* %3, align 4
  %71 = fadd float %70, %69
  store float %71, float* %3, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load float, float* %75, align 4
  %77 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %78 = mul nsw i32 %77, 2
  %79 = sitofp i32 %78 to float
  %80 = fsub float %76, %79
  store float %80, float* %5, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 5
  %83 = load i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i64)** %82, align 8
  %84 = load float, float* %3, align 4
  %85 = load float, float* %4, align 4
  %86 = load float, float* %5, align 4
  %87 = fadd float %86, 1.000000e+00
  %88 = fptosi float %87 to i32
  %89 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 %83(float %84, float %85, i32 %88, i32 %89, i64 %93)
  %95 = load float, float* %5, align 4
  %96 = fsub float %95, 1.000000e+00
  %97 = load float, float* %3, align 4
  %98 = fadd float %97, %96
  store float %98, float* %3, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 5
  %101 = load i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i64)** %100, align 8
  %102 = load float, float* %3, align 4
  %103 = load float, float* %4, align 4
  %104 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %105 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = call i32 %101(float %102, float %103, i32 %104, i32 %105, i64 %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %112 = call float @Item_ListBox_ThumbDrawPosition(%struct.TYPE_15__* %111)
  store float %112, float* %6, align 4
  %113 = load float, float* %6, align 4
  %114 = load float, float* %3, align 4
  %115 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %116 = sitofp i32 %115 to float
  %117 = fsub float %114, %116
  %118 = fsub float %117, 1.000000e+00
  %119 = fcmp ogt float %113, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %32
  %121 = load float, float* %3, align 4
  %122 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %123 = sitofp i32 %122 to float
  %124 = fsub float %121, %123
  %125 = fsub float %124, 1.000000e+00
  store float %125, float* %6, align 4
  br label %126

126:                                              ; preds = %120, %32
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 5
  %129 = load i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i64)** %128, align 8
  %130 = load float, float* %6, align 4
  %131 = load float, float* %4, align 4
  %132 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %133 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 7
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = call i32 %129(float %130, float %131, i32 %132, i32 %133, i64 %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 3
  %148 = load float, float* %147, align 4
  %149 = fsub float %148, 2.000000e+00
  store float %149, float* %5, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @LISTBOX_IMAGE, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %267

155:                                              ; preds = %126
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  %162 = sitofp i32 %161 to float
  store float %162, float* %3, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  %169 = sitofp i32 %168 to float
  store float %169, float* %4, align 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %263, %155
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %266

177:                                              ; preds = %173
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i64 (i32, i32)*, i64 (i32, i32)** %179, align 8
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i64 %180(i32 %183, i32 %184)
  store i64 %185, i64* %9, align 8
  %186 = load i64, i64* %9, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %177
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 5
  %191 = load i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i64)** %190, align 8
  %192 = load float, float* %3, align 4
  %193 = fadd float %192, 1.000000e+00
  %194 = load float, float* %4, align 4
  %195 = fadd float %194, 1.000000e+00
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = sub nsw i32 %198, 2
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = sub nsw i32 %202, 2
  %204 = load i64, i64* %9, align 8
  %205 = call i32 %191(float %193, float %195, i32 %199, i32 %203, i64 %204)
  br label %206

206:                                              ; preds = %188, %177
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %207, %210
  br i1 %211, label %212, label %235

212:                                              ; preds = %206
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 6
  %215 = load i32 (float, float, i32, i32, i32, i32)*, i32 (float, float, i32, i32, i32, i32)** %214, align 8
  %216 = load float, float* %3, align 4
  %217 = load float, float* %4, align 4
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %220, 1
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = sub nsw i32 %224, 1
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = call i32 %215(float %216, float %217, i32 %221, i32 %225, i32 %229, i32 %233)
  br label %235

235:                                              ; preds = %212, %206
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = sitofp i32 %238 to float
  %240 = load float, float* %5, align 4
  %241 = fsub float %240, %239
  store float %241, float* %5, align 4
  %242 = load float, float* %5, align 4
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = sitofp i32 %245 to float
  %247 = fcmp olt float %242, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %235
  %249 = load float, float* %5, align 4
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 5
  store float %249, float* %251, align 8
  br label %266

252:                                              ; preds = %235
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = sitofp i32 %255 to float
  %257 = load float, float* %3, align 4
  %258 = fadd float %257, %256
  store float %258, float* %3, align 4
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %260, align 8
  br label %263

263:                                              ; preds = %252
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %173

266:                                              ; preds = %248, %173
  br label %268

267:                                              ; preds = %126
  br label %268

268:                                              ; preds = %267, %266
  br label %760

269:                                              ; preds = %1
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = sitofp i32 %274 to float
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 3
  %280 = load float, float* %279, align 4
  %281 = fadd float %275, %280
  %282 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %283 = sitofp i32 %282 to float
  %284 = fsub float %281, %283
  %285 = fsub float %284, 1.000000e+00
  store float %285, float* %3, align 4
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, 1
  %292 = sitofp i32 %291 to float
  store float %292, float* %4, align 4
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 5
  %295 = load i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i64)** %294, align 8
  %296 = load float, float* %3, align 4
  %297 = load float, float* %4, align 4
  %298 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %299 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 7
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 4
  %303 = load i64, i64* %302, align 8
  %304 = call i32 %295(float %296, float %297, i32 %298, i32 %299, i64 %303)
  %305 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %306 = sub nsw i32 %305, 1
  %307 = sitofp i32 %306 to float
  %308 = load float, float* %4, align 4
  %309 = fadd float %308, %307
  store float %309, float* %4, align 4
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 0
  store i32 %312, i32* %314, align 8
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %321 = mul nsw i32 %320, 2
  %322 = sub nsw i32 %319, %321
  %323 = sitofp i32 %322 to float
  store float %323, float* %5, align 4
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 5
  %326 = load i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i64)** %325, align 8
  %327 = load float, float* %3, align 4
  %328 = load float, float* %4, align 4
  %329 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %330 = load float, float* %5, align 4
  %331 = fadd float %330, 1.000000e+00
  %332 = fptosi float %331 to i32
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 7
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = call i32 %326(float %327, float %328, i32 %329, i32 %332, i64 %336)
  %338 = load float, float* %5, align 4
  %339 = fsub float %338, 1.000000e+00
  %340 = load float, float* %4, align 4
  %341 = fadd float %340, %339
  store float %341, float* %4, align 4
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 5
  %344 = load i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i64)** %343, align 8
  %345 = load float, float* %3, align 4
  %346 = load float, float* %4, align 4
  %347 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %348 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %349 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %350 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %349, i32 0, i32 7
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 5
  %352 = load i64, i64* %351, align 8
  %353 = call i32 %344(float %345, float %346, i32 %347, i32 %348, i64 %352)
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %355 = call float @Item_ListBox_ThumbDrawPosition(%struct.TYPE_15__* %354)
  store float %355, float* %6, align 4
  %356 = load float, float* %6, align 4
  %357 = load float, float* %4, align 4
  %358 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %359 = sitofp i32 %358 to float
  %360 = fsub float %357, %359
  %361 = fsub float %360, 1.000000e+00
  %362 = fcmp ogt float %356, %361
  br i1 %362, label %363, label %369

363:                                              ; preds = %269
  %364 = load float, float* %4, align 4
  %365 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %366 = sitofp i32 %365 to float
  %367 = fsub float %364, %366
  %368 = fsub float %367, 1.000000e+00
  store float %368, float* %6, align 4
  br label %369

369:                                              ; preds = %363, %269
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 5
  %372 = load i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i64)** %371, align 8
  %373 = load float, float* %3, align 4
  %374 = load float, float* %6, align 4
  %375 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %376 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %377 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 7
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 3
  %380 = load i64, i64* %379, align 8
  %381 = call i32 %372(float %373, float %374, i32 %375, i32 %376, i64 %380)
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = sub nsw i32 %386, 2
  %388 = sitofp i32 %387 to float
  store float %388, float* %5, align 4
  %389 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @LISTBOX_IMAGE, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %394, label %511

394:                                              ; preds = %369
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 1
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, 1
  %401 = sitofp i32 %400 to float
  store float %401, float* %3, align 4
  %402 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 2
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %406, 1
  %408 = sitofp i32 %407 to float
  store float %408, float* %4, align 4
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  store i32 %411, i32* %8, align 4
  br label %412

412:                                              ; preds = %507, %394
  %413 = load i32, i32* %8, align 4
  %414 = load i32, i32* %7, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %510

416:                                              ; preds = %412
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %418 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %417, i32 0, i32 1
  %419 = load i64 (i32, i32)*, i64 (i32, i32)** %418, align 8
  %420 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %421 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* %8, align 4
  %424 = call i64 %419(i32 %422, i32 %423)
  store i64 %424, i64* %9, align 8
  %425 = load i64, i64* %9, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %445

427:                                              ; preds = %416
  %428 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %429 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %428, i32 0, i32 5
  %430 = load i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i64)** %429, align 8
  %431 = load float, float* %3, align 4
  %432 = fadd float %431, 1.000000e+00
  %433 = load float, float* %4, align 4
  %434 = fadd float %433, 1.000000e+00
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 8
  %438 = sub nsw i32 %437, 2
  %439 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %440 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 4
  %442 = sub nsw i32 %441, 2
  %443 = load i64, i64* %9, align 8
  %444 = call i32 %430(float %432, float %434, i32 %438, i32 %442, i64 %443)
  br label %445

445:                                              ; preds = %427, %416
  %446 = load i32, i32* %8, align 4
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = icmp eq i32 %446, %449
  br i1 %450, label %451, label %474

451:                                              ; preds = %445
  %452 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 6
  %454 = load i32 (float, float, i32, i32, i32, i32)*, i32 (float, float, i32, i32, i32, i32)** %453, align 8
  %455 = load float, float* %3, align 4
  %456 = load float, float* %4, align 4
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %458 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 8
  %460 = sub nsw i32 %459, 1
  %461 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %462 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 4
  %464 = sub nsw i32 %463, 1
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 5
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i32 0, i32 4
  %472 = load i32, i32* %471, align 4
  %473 = call i32 %454(float %455, float %456, i32 %460, i32 %464, i32 %468, i32 %472)
  br label %474

474:                                              ; preds = %451, %445
  %475 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %476 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %476, align 8
  %479 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %480 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %479, i32 0, i32 3
  %481 = load i32, i32* %480, align 8
  %482 = sitofp i32 %481 to float
  %483 = load float, float* %5, align 4
  %484 = fsub float %483, %482
  store float %484, float* %5, align 4
  %485 = load float, float* %5, align 4
  %486 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %487 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %486, i32 0, i32 4
  %488 = load i32, i32* %487, align 4
  %489 = sitofp i32 %488 to float
  %490 = fcmp olt float %485, %489
  br i1 %490, label %491, label %500

491:                                              ; preds = %474
  %492 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %493 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %492, i32 0, i32 4
  %494 = load i32, i32* %493, align 4
  %495 = sitofp i32 %494 to float
  %496 = load float, float* %5, align 4
  %497 = fsub float %495, %496
  %498 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %499 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %498, i32 0, i32 5
  store float %497, float* %499, align 8
  br label %510

500:                                              ; preds = %474
  %501 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %502 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %501, i32 0, i32 4
  %503 = load i32, i32* %502, align 4
  %504 = sitofp i32 %503 to float
  %505 = load float, float* %4, align 4
  %506 = fadd float %505, %504
  store float %506, float* %4, align 4
  br label %507

507:                                              ; preds = %500
  %508 = load i32, i32* %8, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %8, align 4
  br label %412

510:                                              ; preds = %491, %412
  br label %759

511:                                              ; preds = %369
  %512 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %513 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i32 0, i32 2
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 4
  %517 = add nsw i32 %516, 1
  %518 = sitofp i32 %517 to float
  store float %518, float* %3, align 4
  %519 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %520 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %520, i32 0, i32 2
  %522 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = add nsw i32 %523, 1
  %525 = sitofp i32 %524 to float
  store float %525, float* %4, align 4
  %526 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %527 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %526, i32 0, i32 1
  %528 = load i32, i32* %527, align 4
  store i32 %528, i32* %8, align 4
  br label %529

529:                                              ; preds = %755, %511
  %530 = load i32, i32* %8, align 4
  %531 = load i32, i32* %7, align 4
  %532 = icmp slt i32 %530, %531
  br i1 %532, label %533, label %758

533:                                              ; preds = %529
  %534 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %535 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %534, i32 0, i32 6
  %536 = load i64, i64* %535, align 8
  %537 = icmp sgt i64 %536, 0
  br i1 %537, label %538, label %649

538:                                              ; preds = %533
  store i32 0, i32* %13, align 4
  br label %539

539:                                              ; preds = %645, %538
  %540 = load i32, i32* %13, align 4
  %541 = sext i32 %540 to i64
  %542 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %543 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %542, i32 0, i32 6
  %544 = load i64, i64* %543, align 8
  %545 = icmp slt i64 %541, %544
  br i1 %545, label %546, label %648

546:                                              ; preds = %539
  %547 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %548 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %547, i32 0, i32 2
  %549 = load i8* (i32, i32, i32, i64*)*, i8* (i32, i32, i32, i64*)** %548, align 8
  %550 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %551 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %550, i32 0, i32 4
  %552 = load i32, i32* %551, align 8
  %553 = load i32, i32* %8, align 4
  %554 = load i32, i32* %13, align 4
  %555 = call i8* %549(i32 %552, i32 %553, i32 %554, i64* %10)
  store i8* %555, i8** %12, align 8
  %556 = load i64, i64* %10, align 8
  %557 = icmp sge i64 %556, 0
  br i1 %557, label %558, label %599

558:                                              ; preds = %546
  %559 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %560 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %559, i32 0, i32 5
  %561 = load i32 (float, float, i32, i32, i64)*, i32 (float, float, i32, i32, i64)** %560, align 8
  %562 = load float, float* %3, align 4
  %563 = fadd float %562, 4.000000e+00
  %564 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %565 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %564, i32 0, i32 7
  %566 = load %struct.TYPE_11__*, %struct.TYPE_11__** %565, align 8
  %567 = load i32, i32* %13, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %566, i64 %568
  %570 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %569, i32 0, i32 0
  %571 = load float, float* %570, align 4
  %572 = fadd float %563, %571
  %573 = load float, float* %4, align 4
  %574 = fsub float %573, 1.000000e+00
  %575 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %576 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %575, i32 0, i32 4
  %577 = load i32, i32* %576, align 4
  %578 = sdiv i32 %577, 2
  %579 = sitofp i32 %578 to float
  %580 = fadd float %574, %579
  %581 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %582 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %581, i32 0, i32 7
  %583 = load %struct.TYPE_11__*, %struct.TYPE_11__** %582, align 8
  %584 = load i32, i32* %13, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %583, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %590 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %589, i32 0, i32 7
  %591 = load %struct.TYPE_11__*, %struct.TYPE_11__** %590, align 8
  %592 = load i32, i32* %13, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %591, i64 %593
  %595 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %594, i32 0, i32 1
  %596 = load i32, i32* %595, align 4
  %597 = load i64, i64* %10, align 8
  %598 = call i32 %561(float %572, float %580, i32 %588, i32 %596, i64 %597)
  br label %644

599:                                              ; preds = %546
  %600 = load i8*, i8** %12, align 8
  %601 = icmp ne i8* %600, null
  br i1 %601, label %602, label %643

602:                                              ; preds = %599
  %603 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %604 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %603, i32 0, i32 4
  %605 = load i32 (float, float, i32, i32, i8*, i32, i32, i32)*, i32 (float, float, i32, i32, i8*, i32, i32, i32)** %604, align 8
  %606 = load float, float* %3, align 4
  %607 = fadd float %606, 4.000000e+00
  %608 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %609 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %608, i32 0, i32 7
  %610 = load %struct.TYPE_11__*, %struct.TYPE_11__** %609, align 8
  %611 = load i32, i32* %13, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %610, i64 %612
  %614 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %613, i32 0, i32 0
  %615 = load float, float* %614, align 4
  %616 = fadd float %607, %615
  %617 = load float, float* %4, align 4
  %618 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %619 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %618, i32 0, i32 4
  %620 = load i32, i32* %619, align 4
  %621 = sitofp i32 %620 to float
  %622 = fadd float %617, %621
  %623 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %624 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %623, i32 0, i32 3
  %625 = load i32, i32* %624, align 4
  %626 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %627 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %626, i32 0, i32 1
  %628 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %627, i32 0, i32 3
  %629 = load i32, i32* %628, align 4
  %630 = load i8*, i8** %12, align 8
  %631 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %632 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %631, i32 0, i32 7
  %633 = load %struct.TYPE_11__*, %struct.TYPE_11__** %632, align 8
  %634 = load i32, i32* %13, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %633, i64 %635
  %637 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %636, i32 0, i32 2
  %638 = load i32, i32* %637, align 4
  %639 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %640 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %639, i32 0, i32 2
  %641 = load i32, i32* %640, align 8
  %642 = call i32 %605(float %616, float %622, i32 %625, i32 %629, i8* %630, i32 0, i32 %638, i32 %641)
  br label %643

643:                                              ; preds = %602, %599
  br label %644

644:                                              ; preds = %643, %558
  br label %645

645:                                              ; preds = %644
  %646 = load i32, i32* %13, align 4
  %647 = add nsw i32 %646, 1
  store i32 %647, i32* %13, align 4
  br label %539

648:                                              ; preds = %539
  br label %690

649:                                              ; preds = %533
  %650 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %651 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %650, i32 0, i32 2
  %652 = load i8* (i32, i32, i32, i64*)*, i8* (i32, i32, i32, i64*)** %651, align 8
  %653 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %654 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %653, i32 0, i32 4
  %655 = load i32, i32* %654, align 8
  %656 = load i32, i32* %8, align 4
  %657 = call i8* %652(i32 %655, i32 %656, i32 0, i64* %10)
  store i8* %657, i8** %12, align 8
  %658 = load i64, i64* %10, align 8
  %659 = icmp sge i64 %658, 0
  br i1 %659, label %660, label %661

660:                                              ; preds = %649
  br label %689

661:                                              ; preds = %649
  %662 = load i8*, i8** %12, align 8
  %663 = icmp ne i8* %662, null
  br i1 %663, label %664, label %688

664:                                              ; preds = %661
  %665 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %666 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %665, i32 0, i32 4
  %667 = load i32 (float, float, i32, i32, i8*, i32, i32, i32)*, i32 (float, float, i32, i32, i8*, i32, i32, i32)** %666, align 8
  %668 = load float, float* %3, align 4
  %669 = fadd float %668, 4.000000e+00
  %670 = load float, float* %4, align 4
  %671 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %672 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %671, i32 0, i32 4
  %673 = load i32, i32* %672, align 4
  %674 = sitofp i32 %673 to float
  %675 = fadd float %670, %674
  %676 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %677 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %676, i32 0, i32 3
  %678 = load i32, i32* %677, align 4
  %679 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %680 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %679, i32 0, i32 1
  %681 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %680, i32 0, i32 3
  %682 = load i32, i32* %681, align 4
  %683 = load i8*, i8** %12, align 8
  %684 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %685 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %684, i32 0, i32 2
  %686 = load i32, i32* %685, align 8
  %687 = call i32 %667(float %669, float %675, i32 %678, i32 %682, i8* %683, i32 0, i32 0, i32 %686)
  br label %688

688:                                              ; preds = %664, %661
  br label %689

689:                                              ; preds = %688, %660
  br label %690

690:                                              ; preds = %689, %648
  %691 = load i32, i32* %8, align 4
  %692 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %693 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %692, i32 0, i32 0
  %694 = load i32, i32* %693, align 8
  %695 = icmp eq i32 %691, %694
  br i1 %695, label %696, label %722

696:                                              ; preds = %690
  %697 = load %struct.TYPE_16__*, %struct.TYPE_16__** @DC, align 8
  %698 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %697, i32 0, i32 3
  %699 = load i32 (float, float, float, float, i32)*, i32 (float, float, float, float, i32)** %698, align 8
  %700 = load float, float* %3, align 4
  %701 = fadd float %700, 2.000000e+00
  %702 = load float, float* %4, align 4
  %703 = fadd float %702, 2.000000e+00
  %704 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %705 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %705, i32 0, i32 2
  %707 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %706, i32 0, i32 3
  %708 = load float, float* %707, align 4
  %709 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %710 = sitofp i32 %709 to float
  %711 = fsub float %708, %710
  %712 = fsub float %711, 4.000000e+00
  %713 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %714 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %713, i32 0, i32 4
  %715 = load i32, i32* %714, align 4
  %716 = sitofp i32 %715 to float
  %717 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %718 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %718, i32 0, i32 1
  %720 = load i32, i32* %719, align 4
  %721 = call i32 %699(float %701, float %703, float %712, float %716, i32 %720)
  br label %722

722:                                              ; preds = %696, %690
  %723 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %724 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %723, i32 0, i32 4
  %725 = load i32, i32* %724, align 4
  %726 = sitofp i32 %725 to float
  %727 = load float, float* %5, align 4
  %728 = fsub float %727, %726
  store float %728, float* %5, align 4
  %729 = load float, float* %5, align 4
  %730 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %731 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %730, i32 0, i32 4
  %732 = load i32, i32* %731, align 4
  %733 = sitofp i32 %732 to float
  %734 = fcmp olt float %729, %733
  br i1 %734, label %735, label %744

735:                                              ; preds = %722
  %736 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %737 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %736, i32 0, i32 4
  %738 = load i32, i32* %737, align 4
  %739 = sitofp i32 %738 to float
  %740 = load float, float* %5, align 4
  %741 = fsub float %739, %740
  %742 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %743 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %742, i32 0, i32 5
  store float %741, float* %743, align 8
  br label %758

744:                                              ; preds = %722
  %745 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %746 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %745, i32 0, i32 0
  %747 = load i32, i32* %746, align 8
  %748 = add nsw i32 %747, 1
  store i32 %748, i32* %746, align 8
  %749 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %750 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %749, i32 0, i32 4
  %751 = load i32, i32* %750, align 4
  %752 = sitofp i32 %751 to float
  %753 = load float, float* %4, align 4
  %754 = fadd float %753, %752
  store float %754, float* %4, align 4
  br label %755

755:                                              ; preds = %744
  %756 = load i32, i32* %8, align 4
  %757 = add nsw i32 %756, 1
  store i32 %757, i32* %8, align 4
  br label %529

758:                                              ; preds = %735, %529
  br label %759

759:                                              ; preds = %758, %510
  br label %760

760:                                              ; preds = %759, %268
  ret void
}

declare dso_local float @Item_ListBox_ThumbDrawPosition(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
