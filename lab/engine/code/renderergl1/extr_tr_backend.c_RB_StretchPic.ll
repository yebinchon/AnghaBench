; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RB_StretchPic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_backend.c_RB_StretchPic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, i32***, i64**, i64*, i32* }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i32, i64, i32, i32* }

@backEnd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @RB_StretchPic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %3, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backEnd, i32 0, i32 3), align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 (...) @RB_SetGL2D()
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 6), align 8
  %19 = icmp ne i32* %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 0), align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @RB_EndSurface()
  br label %25

25:                                               ; preds = %23, %20
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backEnd, i32 0, i32 1), i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backEnd, i32 0, i32 2), align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @RB_BeginSurface(i32* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %13
  %29 = call i32 @RB_CHECKOVERFLOW(i32 4, i32 6)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 1), align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 0), align 8
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 1), align 4
  %33 = add nsw i32 %32, 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 1), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 0), align 8
  %35 = add nsw i32 %34, 6
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 0), align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 3
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 2), align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 0
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 2), align 8
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 2
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 2), align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 2
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 2), align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 0
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 2), align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 2), align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 5
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %71, i32* %76, align 4
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backEnd, i32 0, i32 0), align 8
  %78 = inttoptr i64 %77 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 5), align 8
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  store i32 %79, i32* %86, align 4
  %87 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 5), align 8
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i32*
  store i32 %79, i32* %93, align 4
  %94 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 5), align 8
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32*
  store i32 %79, i32* %100, align 4
  %101 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 5), align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  store i32 %79, i32* %106, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64*, i64** %110, i64 %112
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 0
  store i64 %109, i64* %115, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64*, i64** %119, i64 %121
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 1
  store i64 %118, i64* %124, align 8
  %125 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64*, i64** %125, i64 %127
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 2
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 3), align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32**, i32*** %134, i64 %136
  %138 = load i32**, i32*** %137, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 %133, i32* %141, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 3), align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32**, i32*** %145, i64 %147
  %149 = load i32**, i32*** %148, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  store i32 %144, i32* %152, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %155, %158
  %160 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64*, i64** %160, i64 %163
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  store i64 %159, i64* %166, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64*, i64** %170, i64 %173
  %175 = load i64*, i64** %174, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 1
  store i64 %169, i64* %176, align 8
  %177 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %178 = load i32, i32* %5, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64*, i64** %177, i64 %180
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 2
  store i64 0, i64* %183, align 8
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 3), align 8
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32**, i32*** %187, i64 %190
  %192 = load i32**, i32*** %191, align 8
  %193 = getelementptr inbounds i32*, i32** %192, i64 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  store i32 %186, i32* %195, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 3), align 8
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32**, i32*** %199, i64 %202
  %204 = load i32**, i32*** %203, align 8
  %205 = getelementptr inbounds i32*, i32** %204, i64 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 %198, i32* %207, align 4
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %210, %213
  %215 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %216, 2
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64*, i64** %215, i64 %218
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 0
  store i64 %214, i64* %221, align 8
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %224, %227
  %229 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 2
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64*, i64** %229, i64 %232
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 1
  store i64 %228, i64* %235, align 8
  %236 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %237 = load i32, i32* %5, align 4
  %238 = add nsw i32 %237, 2
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64*, i64** %236, i64 %239
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 2
  store i64 0, i64* %242, align 8
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 8
  %246 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 3), align 8
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %247, 2
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32**, i32*** %246, i64 %249
  %251 = load i32**, i32*** %250, align 8
  %252 = getelementptr inbounds i32*, i32** %251, i64 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  store i32 %245, i32* %254, align 4
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 3), align 8
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %259, 2
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32**, i32*** %258, i64 %261
  %263 = load i32**, i32*** %262, align 8
  %264 = getelementptr inbounds i32*, i32** %263, i64 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  store i32 %257, i32* %266, align 4
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %271 = load i32, i32* %5, align 4
  %272 = add nsw i32 %271, 3
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64*, i64** %270, i64 %273
  %275 = load i64*, i64** %274, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 0
  store i64 %269, i64* %276, align 8
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = add nsw i64 %279, %282
  %284 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %285 = load i32, i32* %5, align 4
  %286 = add nsw i32 %285, 3
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64*, i64** %284, i64 %287
  %289 = load i64*, i64** %288, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 1
  store i64 %283, i64* %290, align 8
  %291 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 4), align 8
  %292 = load i32, i32* %5, align 4
  %293 = add nsw i32 %292, 3
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64*, i64** %291, i64 %294
  %296 = load i64*, i64** %295, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 2
  store i64 0, i64* %297, align 8
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 3), align 8
  %302 = load i32, i32* %5, align 4
  %303 = add nsw i32 %302, 3
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32**, i32*** %301, i64 %304
  %306 = load i32**, i32*** %305, align 8
  %307 = getelementptr inbounds i32*, i32** %306, i64 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 0
  store i32 %300, i32* %309, align 4
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tess, i32 0, i32 3), align 8
  %314 = load i32, i32* %5, align 4
  %315 = add nsw i32 %314, 3
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32**, i32*** %313, i64 %316
  %318 = load i32**, i32*** %317, align 8
  %319 = getelementptr inbounds i32*, i32** %318, i64 0
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 1
  store i32 %312, i32* %321, align 4
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i64 1
  %324 = bitcast %struct.TYPE_4__* %323 to i8*
  ret i8* %324
}

declare dso_local i32 @RB_SetGL2D(...) #1

declare dso_local i32 @RB_EndSurface(...) #1

declare dso_local i32 @RB_BeginSurface(i32*, i32) #1

declare dso_local i32 @RB_CHECKOVERFLOW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
