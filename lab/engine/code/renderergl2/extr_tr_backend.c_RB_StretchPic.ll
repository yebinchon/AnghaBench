; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_StretchPic.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_backend.c_RB_StretchPic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, i64 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32*, i32**, i64**, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64, i32, i64, i32, i32* }

@glRefConfig = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @RB_StretchPic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %3, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @glRefConfig, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 3), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %18

16:                                               ; preds = %12
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 8
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32* [ null, %15 ], [ %17, %16 ]
  %20 = call i32 @FBO_Bind(i32* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = call i32 (...) @RB_SetGL2D()
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 6), align 8
  %28 = icmp ne i32* %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @RB_EndSurface()
  br label %34

34:                                               ; preds = %32, %29
  store i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 1), i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 2), align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @RB_BeginSurface(i32* %35, i32 0, i32 0)
  br label %37

37:                                               ; preds = %34, %21
  %38 = call i32 @RB_CHECKOVERFLOW(i32 4, i32 6)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 4
  %42 = add nsw i32 %41, 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %44 = add nsw i32 %43, 6
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 3
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 0
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %52, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 2
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 2
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 0
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 5
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0), align 8
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %88 = call i32 @VectorScale4(i32 %86, i32 257, i32* %87)
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 5), align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @VectorCopy4(i32* %89, i32 %94)
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 5), align 8
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @VectorCopy4(i32* %96, i32 %102)
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 5), align 8
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @VectorCopy4(i32* %104, i32 %110)
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 5), align 8
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 3
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @VectorCopy4(i32* %112, i32 %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64*, i64** %123, i64 %125
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  store i64 %122, i64* %128, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64*, i64** %132, i64 %134
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 1
  store i64 %131, i64* %137, align 8
  %138 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64*, i64** %138, i64 %140
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 2
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %146, i32* %152, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  store i32 %155, i32* %161, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %164, %167
  %169 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64*, i64** %169, i64 %172
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 0
  store i64 %168, i64* %175, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64*, i64** %179, i64 %182
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 1
  store i64 %178, i64* %185, align 8
  %186 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64*, i64** %186, i64 %189
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 2
  store i64 0, i64* %192, align 8
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %196, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 %195, i32* %202, align 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %206, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  store i32 %205, i32* %212, align 4
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %215, %218
  %220 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %221 = load i32, i32* %5, align 4
  %222 = add nsw i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64*, i64** %220, i64 %223
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 0
  store i64 %219, i64* %226, align 8
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %229, %232
  %234 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, 2
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64*, i64** %234, i64 %237
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 1
  store i64 %233, i64* %240, align 8
  %241 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %242 = load i32, i32* %5, align 4
  %243 = add nsw i32 %242, 2
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64*, i64** %241, i64 %244
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 2
  store i64 0, i64* %247, align 8
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %252 = load i32, i32* %5, align 4
  %253 = add nsw i32 %252, 2
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %251, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  store i32 %250, i32* %257, align 4
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %262 = load i32, i32* %5, align 4
  %263 = add nsw i32 %262, 2
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %261, i64 %264
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  store i32 %260, i32* %267, align 4
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %272 = load i32, i32* %5, align 4
  %273 = add nsw i32 %272, 3
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64*, i64** %271, i64 %274
  %276 = load i64*, i64** %275, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 0
  store i64 %270, i64* %277, align 8
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %280, %283
  %285 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %286 = load i32, i32* %5, align 4
  %287 = add nsw i32 %286, 3
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64*, i64** %285, i64 %288
  %290 = load i64*, i64** %289, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 1
  store i64 %284, i64* %291, align 8
  %292 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %293 = load i32, i32* %5, align 4
  %294 = add nsw i32 %293, 3
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64*, i64** %292, i64 %295
  %297 = load i64*, i64** %296, align 8
  %298 = getelementptr inbounds i64, i64* %297, i64 2
  store i64 0, i64* %298, align 8
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %303 = load i32, i32* %5, align 4
  %304 = add nsw i32 %303, 3
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32*, i32** %302, i64 %305
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  store i32 %301, i32* %308, align 4
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %313 = load i32, i32* %5, align 4
  %314 = add nsw i32 %313, 3
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32*, i32** %312, i64 %315
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 1
  store i32 %311, i32* %318, align 4
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i64 1
  %321 = bitcast %struct.TYPE_6__* %320 to i8*
  ret i8* %321
}

declare dso_local i32 @FBO_Bind(i32*) #1

declare dso_local i32 @RB_SetGL2D(...) #1

declare dso_local i32 @RB_EndSurface(...) #1

declare dso_local i32 @RB_BeginSurface(i32*, i32, i32) #1

declare dso_local i32 @RB_CHECKOVERFLOW(i32, i32) #1

declare dso_local i32 @VectorScale4(i32, i32, i32*) #1

declare dso_local i32 @VectorCopy4(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
