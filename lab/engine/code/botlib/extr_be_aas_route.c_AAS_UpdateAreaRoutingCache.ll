; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_UpdateAreaRoutingCache.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_UpdateAreaRoutingCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i16***, %struct.TYPE_11__*, %struct.TYPE_12__*, %struct.TYPE_16__*, %struct.TYPE_14__*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i16*, i16, i64, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { i64, i16, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i16, i16*, i32* }

@aasworld = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@qfalse = common dso_local global i64 0, align 8
@AREA_DISABLED = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@numareacacheupdates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_UpdateAreaRoutingCache(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca [128 x i16], align 16
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 6), align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 5), align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 5), align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = xor i32 %30, -1
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @AAS_ClusterAreaNum(i64 %34, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %1
  br label %301

43:                                               ; preds = %1
  %44 = getelementptr inbounds [128 x i16], [128 x i16]* %11, i64 0, i64 0
  %45 = call i32 @Com_Memset(i16* %44, i32 0, i32 256)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 2), align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i64 %48
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %14, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = getelementptr inbounds [128 x i16], [128 x i16]* %11, i64 0, i64 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  store i16* %55, i16** %57, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  %60 = load i16, i16* %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  store i16 %60, i16* %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = load i16, i16* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 4
  %68 = load i16*, i16** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %68, i64 %70
  store i16 %65, i16* %71, align 2
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %75, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %12, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %13, align 8
  br label %78

78:                                               ; preds = %300, %43
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %80 = icmp ne %struct.TYPE_12__* %79, null
  br i1 %80, label %81, label %301

81:                                               ; preds = %78
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %14, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = icmp ne %struct.TYPE_12__* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %91, align 8
  br label %93

92:                                               ; preds = %81
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %13, align 8
  br label %93

93:                                               ; preds = %92, %87
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %12, align 8
  %97 = load i64, i64* @qfalse, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 4), align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i64 %104
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %17, align 8
  store i32 0, i32* %3, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %18, align 8
  br label %109

109:                                              ; preds = %294, %93
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %111 = icmp ne %struct.TYPE_15__* %110, null
  br i1 %111, label %112, label %300

112:                                              ; preds = %109
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %8, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 3), align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i64 %118
  store %struct.TYPE_16__* %119, %struct.TYPE_16__** %16, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @AAS_TravelFlagForType_inline(i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %112
  br label %294

128:                                              ; preds = %112
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 1), align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @AREA_DISABLED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %294

140:                                              ; preds = %128
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @AAS_AreaContentsTravelFlags_inline(i64 %143)
  %145 = load i32, i32* %6, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %294

149:                                              ; preds = %140
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %4, align 4
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 1), align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %149
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %163, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %294

169:                                              ; preds = %161, %149
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @AAS_ClusterAreaNum(i64 %172, i32 %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp sge i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  br label %294

179:                                              ; preds = %169
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = load i16, i16* %181, align 8
  %183 = zext i16 %182 to i32
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i16*, i16** %185, align 8
  %187 = load i32, i32* %3, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i16, i16* %186, i64 %188
  %190 = load i16, i16* %189, align 2
  %191 = zext i16 %190 to i32
  %192 = add nsw i32 %183, %191
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load i16, i16* %194, align 8
  %196 = zext i16 %195 to i32
  %197 = add nsw i32 %192, %196
  %198 = trunc i32 %197 to i16
  store i16 %198, i16* %10, align 2
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 4
  %201 = load i16*, i16** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i16, i16* %201, i64 %203
  %205 = load i16, i16* %204, align 2
  %206 = icmp ne i16 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %179
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 4
  %210 = load i16*, i16** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i16, i16* %210, i64 %212
  %214 = load i16, i16* %213, align 2
  %215 = zext i16 %214 to i32
  %216 = load i16, i16* %10, align 2
  %217 = zext i16 %216 to i32
  %218 = icmp sgt i32 %215, %217
  br i1 %218, label %219, label %293

219:                                              ; preds = %207, %179
  %220 = load i16, i16* %10, align 2
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 4
  %223 = load i16*, i16** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i16, i16* %223, i64 %225
  store i16 %220, i16* %226, align 2
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 1), align 8
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %227, %233
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 5
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %7, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %234, i32* %240, align 4
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 2), align 8
  %242 = load i32, i32* %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i64 %243
  store %struct.TYPE_12__* %244, %struct.TYPE_12__** %15, align 8
  %245 = load i32, i32* %4, align 4
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 8
  %248 = load i16, i16* %10, align 2
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 2
  store i16 %248, i16* %250, align 8
  %251 = load i16***, i16**** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 0), align 8
  %252 = load i32, i32* %4, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i16**, i16*** %251, i64 %253
  %255 = load i16**, i16*** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @aasworld, i32 0, i32 1), align 8
  %258 = load i32, i32* %4, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = sub nsw i32 %256, %262
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i16*, i16** %255, i64 %264
  %266 = load i16*, i16** %265, align 8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 1
  store i16* %266, i16** %268, align 8
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %292, label %273

273:                                              ; preds = %219
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %275, align 8
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 5
  store %struct.TYPE_12__* %276, %struct.TYPE_12__** %278, align 8
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %280 = icmp ne %struct.TYPE_12__* %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %273
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 4
  store %struct.TYPE_12__* %282, %struct.TYPE_12__** %284, align 8
  br label %287

285:                                              ; preds = %273
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %286, %struct.TYPE_12__** %12, align 8
  br label %287

287:                                              ; preds = %285, %281
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %288, %struct.TYPE_12__** %13, align 8
  %289 = load i64, i64* @qtrue, align 8
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 3
  store i64 %289, i64* %291, align 8
  br label %292

292:                                              ; preds = %287, %219
  br label %293

293:                                              ; preds = %292, %207
  br label %294

294:                                              ; preds = %293, %178, %168, %148, %139, %127
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %296, align 8
  store %struct.TYPE_15__* %297, %struct.TYPE_15__** %18, align 8
  %298 = load i32, i32* %3, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %3, align 4
  br label %109

300:                                              ; preds = %109
  br label %78

301:                                              ; preds = %42, %78
  ret void
}

declare dso_local i32 @AAS_ClusterAreaNum(i64, i32) #1

declare dso_local i32 @Com_Memset(i16*, i32, i32) #1

declare dso_local i32 @AAS_TravelFlagForType_inline(i32) #1

declare dso_local i32 @AAS_AreaContentsTravelFlags_inline(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
