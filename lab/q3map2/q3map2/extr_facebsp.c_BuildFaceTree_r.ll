; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_facebsp.c_BuildFaceTree_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_facebsp.c_BuildFaceTree_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_14__**, i32*, i32*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, i32, i32, i32* }

@PLANENUM_LEAF = common dso_local global i32 0, align 4
@c_faceLeafs = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_13__* null, align 8
@SIDE_CROSS = common dso_local global i32 0, align 4
@CLIP_EPSILON = common dso_local global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BuildFaceTree_r(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca [2 x %struct.TYPE_15__*], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = call i32 @CountFaceList(%struct.TYPE_15__* %16)
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = call i32 @SelectSplitPlaneNum(%struct.TYPE_14__* %18, %struct.TYPE_15__* %19, i32* %14, i32* %15)
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @PLANENUM_LEAF, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @c_faceLeafs, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @c_faceLeafs, align 4
  br label %287

29:                                               ; preds = %2
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i64 %38
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %8, align 8
  %40 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %40, align 16
  %41 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %41, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %42, %struct.TYPE_15__** %5, align 8
  br label %43

43:                                               ; preds = %172, %29
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = icmp ne %struct.TYPE_15__* %44, null
  br i1 %45, label %46, label %174

46:                                               ; preds = %43
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %6, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = call i32 @FreeBspFace(%struct.TYPE_15__* %58)
  br label %172

60:                                               ; preds = %46
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @WindingOnPlaneSide(i32* %63, i32* %66, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SIDE_CROSS, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %147

74:                                               ; preds = %60
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CLIP_EPSILON, align 4
  %85 = mul nsw i32 %84, 2
  %86 = call i32 @ClipWindingEpsilon(i32* %77, i32* %80, i32 %83, i32 %85, i32** %11, i32** %12)
  %87 = load i32*, i32** %11, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %115

89:                                               ; preds = %74
  %90 = call %struct.TYPE_15__* (...) @AllocBspFace()
  store %struct.TYPE_15__* %90, %struct.TYPE_15__** %9, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 4
  store i32* %91, i32** %93, align 8
  %94 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 0
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 16
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  store %struct.TYPE_15__* %95, %struct.TYPE_15__** %97, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 0
  store %struct.TYPE_15__* %113, %struct.TYPE_15__** %114, align 16
  br label %115

115:                                              ; preds = %89, %74
  %116 = load i32*, i32** %12, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %144

118:                                              ; preds = %115
  %119 = call %struct.TYPE_15__* (...) @AllocBspFace()
  store %struct.TYPE_15__* %119, %struct.TYPE_15__** %9, align 8
  %120 = load i32*, i32** %12, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 4
  store i32* %120, i32** %122, align 8
  %123 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 1
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  store %struct.TYPE_15__* %124, %struct.TYPE_15__** %126, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %143 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 1
  store %struct.TYPE_15__* %142, %struct.TYPE_15__** %143, align 8
  br label %144

144:                                              ; preds = %118, %115
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %146 = call i32 @FreeBspFace(%struct.TYPE_15__* %145)
  br label %171

147:                                              ; preds = %60
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @SIDE_FRONT, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %147
  %152 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 0
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 16
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  store %struct.TYPE_15__* %153, %struct.TYPE_15__** %155, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %157 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 0
  store %struct.TYPE_15__* %156, %struct.TYPE_15__** %157, align 16
  br label %170

158:                                              ; preds = %147
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @SIDE_BACK, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 1
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %163, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 1
  store %struct.TYPE_15__* %164, %struct.TYPE_15__** %166, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 1
  store %struct.TYPE_15__* %167, %struct.TYPE_15__** %168, align 8
  br label %169

169:                                              ; preds = %162, %158
  br label %170

170:                                              ; preds = %169, %151
  br label %171

171:                                              ; preds = %170, %144
  br label %172

172:                                              ; preds = %171, %57
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %173, %struct.TYPE_15__** %5, align 8
  br label %43

174:                                              ; preds = %43
  store i32 0, i32* %13, align 4
  br label %175

175:                                              ; preds = %221, %174
  %176 = load i32, i32* %13, align 4
  %177 = icmp slt i32 %176, 2
  br i1 %177, label %178, label %224

178:                                              ; preds = %175
  %179 = call %struct.TYPE_14__* (...) @AllocNode()
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %182, i64 %184
  store %struct.TYPE_14__* %179, %struct.TYPE_14__** %185, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %188, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %189, i64 %191
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 5
  store %struct.TYPE_14__* %186, %struct.TYPE_14__** %194, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %200, i64 %202
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 4
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @VectorCopy(i32* %197, i32* %206)
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %212, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %213, i64 %215
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @VectorCopy(i32* %210, i32* %219)
  br label %221

221:                                              ; preds = %178
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %13, align 4
  br label %175

224:                                              ; preds = %175
  store i32 0, i32* %13, align 4
  br label %225

225:                                              ; preds = %265, %224
  %226 = load i32, i32* %13, align 4
  %227 = icmp slt i32 %226, 3
  br i1 %227, label %228, label %268

228:                                              ; preds = %225
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %264

237:                                              ; preds = %228
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %243, i64 0
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store i32 %240, i32* %250, align 4
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 2
  %256 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %256, i64 1
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  store i32 %253, i32* %263, align 4
  br label %268

264:                                              ; preds = %228
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %13, align 4
  br label %225

268:                                              ; preds = %237, %225
  store i32 0, i32* %13, align 4
  br label %269

269:                                              ; preds = %284, %268
  %270 = load i32, i32* %13, align 4
  %271 = icmp slt i32 %270, 2
  br i1 %271, label %272, label %287

272:                                              ; preds = %269
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %274, align 8
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %275, i64 %277
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %278, align 8
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 %281
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %282, align 8
  call void @BuildFaceTree_r(%struct.TYPE_14__* %279, %struct.TYPE_15__* %283)
  br label %284

284:                                              ; preds = %272
  %285 = load i32, i32* %13, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %13, align 4
  br label %269

287:                                              ; preds = %23, %269
  ret void
}

declare dso_local i32 @CountFaceList(%struct.TYPE_15__*) #1

declare dso_local i32 @SelectSplitPlaneNum(%struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @FreeBspFace(%struct.TYPE_15__*) #1

declare dso_local i32 @WindingOnPlaneSide(i32*, i32*, i32) #1

declare dso_local i32 @ClipWindingEpsilon(i32*, i32*, i32, i32, i32**, i32**) #1

declare dso_local %struct.TYPE_15__* @AllocBspFace(...) #1

declare dso_local %struct.TYPE_14__* @AllocNode(...) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
