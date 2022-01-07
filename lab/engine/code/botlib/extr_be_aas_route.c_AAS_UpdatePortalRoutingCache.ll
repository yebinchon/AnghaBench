; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_UpdatePortalRoutingCache.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_UpdatePortalRoutingCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32*, i16*, %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64, i16, i64, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i16, i16*, i32 }

@aasworld = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@qfalse = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@numportalcacheupdates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_UpdatePortalRoutingCache(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 3), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 %16
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %13, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i16, i16* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i16 %30, i16* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 6), align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i16, i16* %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = load i16*, i16** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 0, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %48, i64 %51
  store i16 %45, i16* %52, align 2
  br label %53

53:                                               ; preds = %42, %1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %11, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %12, align 8
  br label %60

60:                                               ; preds = %256, %53
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %62 = icmp ne %struct.TYPE_10__* %61, null
  br i1 %62, label %63, label %257

63:                                               ; preds = %60
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %13, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 5
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %73, align 8
  br label %75

74:                                               ; preds = %63
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  br label %75

75:                                               ; preds = %74, %69
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %11, align 8
  %79 = load i64, i64* @qfalse, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 5), align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 %85
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %9, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.TYPE_11__* @AAS_GetAreaRoutingCache(i64 %89, i64 %92, i32 %95)
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %10, align 8
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %253, %75
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %256

103:                                              ; preds = %97
  %104 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 1), align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %104, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %4, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 4), align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 %115
  store %struct.TYPE_12__* %116, %struct.TYPE_12__** %8, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %103
  br label %253

125:                                              ; preds = %103
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @AAS_ClusterAreaNum(i64 %128, i64 %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp sge i32 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %125
  br label %253

139:                                              ; preds = %125
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  %142 = load i16*, i16** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i16, i16* %142, i64 %144
  %146 = load i16, i16* %145, align 2
  store i16 %146, i16* %7, align 2
  %147 = load i16, i16* %7, align 2
  %148 = icmp ne i16 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %139
  br label %253

150:                                              ; preds = %139
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load i16, i16* %152, align 8
  %154 = zext i16 %153 to i32
  %155 = load i16, i16* %7, align 2
  %156 = zext i16 %155 to i32
  %157 = add nsw i32 %156, %154
  %158 = trunc i32 %157 to i16
  store i16 %158, i16* %7, align 2
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 3
  %161 = load i16*, i16** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i16, i16* %161, i64 %163
  %165 = load i16, i16* %164, align 2
  %166 = icmp ne i16 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %150
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 3
  %170 = load i16*, i16** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i16, i16* %170, i64 %172
  %174 = load i16, i16* %173, align 2
  %175 = zext i16 %174 to i32
  %176 = load i16, i16* %7, align 2
  %177 = zext i16 %176 to i32
  %178 = icmp sgt i32 %175, %177
  br i1 %178, label %179, label %252

179:                                              ; preds = %167, %150
  %180 = load i16, i16* %7, align 2
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 3
  %183 = load i16*, i16** %182, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i16, i16* %183, i64 %185
  store i16 %180, i16* %186, align 2
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 3), align 8
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i64 %189
  store %struct.TYPE_10__* %190, %struct.TYPE_10__** %14, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %193, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %179
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  store i64 %201, i64* %203, align 8
  br label %210

204:                                              ; preds = %179
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %204, %198
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  store i64 %213, i64* %215, align 8
  %216 = load i16, i16* %7, align 2
  %217 = zext i16 %216 to i32
  %218 = load i16*, i16** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 2), align 8
  %219 = load i32, i32* %4, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i16, i16* %218, i64 %220
  %222 = load i16, i16* %221, align 2
  %223 = zext i16 %222 to i32
  %224 = add nsw i32 %217, %223
  %225 = trunc i32 %224 to i16
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 2
  store i16 %225, i16* %227, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %251, label %232

232:                                              ; preds = %210
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %234, align 8
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 5
  store %struct.TYPE_10__* %235, %struct.TYPE_10__** %237, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %239 = icmp ne %struct.TYPE_10__* %238, null
  br i1 %239, label %240, label %244

240:                                              ; preds = %232
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 4
  store %struct.TYPE_10__* %241, %struct.TYPE_10__** %243, align 8
  br label %246

244:                                              ; preds = %232
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %245, %struct.TYPE_10__** %11, align 8
  br label %246

246:                                              ; preds = %244, %240
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %247, %struct.TYPE_10__** %12, align 8
  %248 = load i64, i64* @qtrue, align 8
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 3
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %246, %210
  br label %252

252:                                              ; preds = %251, %167
  br label %253

253:                                              ; preds = %252, %149, %138, %124
  %254 = load i32, i32* %3, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %3, align 4
  br label %97

256:                                              ; preds = %97
  br label %60

257:                                              ; preds = %60
  ret void
}

declare dso_local %struct.TYPE_11__* @AAS_GetAreaRoutingCache(i64, i64, i32) #1

declare dso_local i32 @AAS_ClusterAreaNum(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
