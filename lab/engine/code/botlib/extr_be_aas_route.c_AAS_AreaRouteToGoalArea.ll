; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_AreaRouteToGoalArea.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_route.c_AAS_AreaRouteToGoalArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_12__*, %struct.TYPE_10__*, i64*, %struct.TYPE_13__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_11__ = type { i32*, i32* }

@aasworld = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@botDeveloper = common dso_local global i64 0, align 8
@botimport = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"AAS_AreaTravelTimeToGoalArea: areanum %d out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"AAS_AreaTravelTimeToGoalArea: goalareanum %d out of range\0A\00", align 1
@TFL_DONOTENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_AreaRouteToGoalArea(i32 %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca %struct.TYPE_13__*, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  %24 = alloca %struct.TYPE_11__*, align 8
  %25 = alloca %struct.TYPE_11__*, align 8
  %26 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 7), align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %7, align 4
  br label %473

31:                                               ; preds = %6
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32*, i32** %12, align 8
  store i32 1, i32* %36, align 4
  %37 = load i32*, i32** %13, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @qtrue, align 4
  store i32 %38, i32* %7, align 4
  br label %473

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 0), align 8
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42, %39
  %47 = load i64, i64* @botDeveloper, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @botimport, i32 0, i32 0), align 8
  %51 = load i32, i32* @PRT_ERROR, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 %50(i32 %51, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32, i32* @qfalse, align 4
  store i32 %55, i32* %7, align 4
  br label %473

56:                                               ; preds = %42
  %57 = load i32, i32* %10, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 0), align 8
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59, %56
  %64 = load i64, i64* @botDeveloper, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @botimport, i32 0, i32 0), align 8
  %68 = load i32, i32* @PRT_ERROR, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 %67(i32 %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* @qfalse, align 4
  store i32 %72, i32* %7, align 4
  br label %473

73:                                               ; preds = %59
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %81, %73
  %90 = load i32, i32* @qfalse, align 4
  store i32 %90, i32* %7, align 4
  br label %473

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %99, %91
  %93 = call i32 (...) @AvailableMemory()
  %94 = icmp slt i32 %93, 1048576
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = call i32 (...) @AAS_FreeOldestCache()
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %100

99:                                               ; preds = %95
  br label %92

100:                                              ; preds = %98, %92
  %101 = load i32, i32* %8, align 4
  %102 = call i64 @AAS_AreaDoNotEnter(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %10, align 4
  %106 = call i64 @AAS_AreaDoNotEnter(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104, %100
  %109 = load i32, i32* @TFL_DONOTENTER, align 4
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %14, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %112
  %128 = load i32, i32* %15, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %127
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 5), align 8
  %132 = load i32, i32* %14, align 4
  %133 = sub nsw i32 0, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i64 %134
  store %struct.TYPE_13__* %135, %struct.TYPE_13__** %22, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %15, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %130
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141, %130
  %148 = load i32, i32* %15, align 4
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %147, %141
  br label %177

150:                                              ; preds = %127, %112
  %151 = load i32, i32* %14, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %150
  %154 = load i32, i32* %15, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %153
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 5), align 8
  %158 = load i32, i32* %15, align 4
  %159 = sub nsw i32 0, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i64 %160
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %22, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %14, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %173, label %167

167:                                              ; preds = %156
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %14, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %167, %156
  %174 = load i32, i32* %14, align 4
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %173, %167
  br label %176

176:                                              ; preds = %175, %153, %150
  br label %177

177:                                              ; preds = %176, %149
  %178 = load i32, i32* %14, align 4
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %266

180:                                              ; preds = %177
  %181 = load i32, i32* %15, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %266

183:                                              ; preds = %180
  %184 = load i32, i32* %14, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %266

187:                                              ; preds = %183
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %11, align 4
  %191 = call %struct.TYPE_11__* @AAS_GetAreaRoutingCache(i32 %188, i32 %189, i32 %190)
  store %struct.TYPE_11__* %191, %struct.TYPE_11__** %24, align 8
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @AAS_ClusterAreaNum(i32 %192, i32 %193)
  store i32 %194, i32* %18, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 6), align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i64 %197
  store %struct.TYPE_14__* %198, %struct.TYPE_14__** %23, align 8
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp sge i32 %199, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %187
  store i32 0, i32* %7, align 4
  br label %473

205:                                              ; preds = %187
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %18, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %265

214:                                              ; preds = %205
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %18, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %220, %227
  %229 = load i32*, i32** %13, align 8
  store i32 %228, i32* %229, align 4
  %230 = load i64, i64* %9, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %214
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %12, align 8
  store i32 %239, i32* %240, align 4
  %241 = load i32, i32* @qtrue, align 4
  store i32 %241, i32* %7, align 4
  br label %473

242:                                              ; preds = %214
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 2), align 8
  %244 = load i32*, i32** %13, align 8
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i64 %246
  store %struct.TYPE_12__* %247, %struct.TYPE_12__** %26, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %18, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %8, align 4
  %256 = load i64, i64* %9, align 8
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call zeroext i16 @AAS_AreaTravelTime(i32 %255, i64 %256, i32 %259)
  %261 = zext i16 %260 to i32
  %262 = add nsw i32 %254, %261
  %263 = load i32*, i32** %12, align 8
  store i32 %262, i32* %263, align 4
  %264 = load i32, i32* @qtrue, align 4
  store i32 %264, i32* %7, align 4
  br label %473

265:                                              ; preds = %205
  br label %266

266:                                              ; preds = %265, %183, %180, %177
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %14, align 4
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %15, align 4
  %279 = load i32, i32* %15, align 4
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %266
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 5), align 8
  %283 = load i32, i32* %15, align 4
  %284 = sub nsw i32 0, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i64 %285
  store %struct.TYPE_13__* %286, %struct.TYPE_13__** %22, align 8
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %15, align 4
  br label %290

290:                                              ; preds = %281, %266
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %10, align 4
  %293 = load i32, i32* %11, align 4
  %294 = call %struct.TYPE_11__* @AAS_GetPortalRoutingCache(i32 %291, i32 %292, i32 %293)
  store %struct.TYPE_11__* %294, %struct.TYPE_11__** %25, align 8
  %295 = load i32, i32* %14, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %324

297:                                              ; preds = %290
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %14, align 4
  %302 = sub nsw i32 0, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %300, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %12, align 8
  store i32 %305, i32* %306, align 4
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %14, align 4
  %317 = sub nsw i32 0, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %312, %320
  %322 = load i32*, i32** %13, align 8
  store i32 %321, i32* %322, align 4
  %323 = load i32, i32* @qtrue, align 4
  store i32 %323, i32* %7, align 4
  br label %473

324:                                              ; preds = %290
  store i16 0, i16* %21, align 2
  store i32 -1, i32* %19, align 4
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 6), align 8
  %326 = load i32, i32* %14, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i64 %327
  store %struct.TYPE_14__* %328, %struct.TYPE_14__** %23, align 8
  store i32 0, i32* %17, align 4
  br label %329

329:                                              ; preds = %458, %324
  %330 = load i32, i32* %17, align 4
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp slt i32 %330, %333
  br i1 %334, label %335, label %461

335:                                              ; preds = %329
  %336 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 1), align 8
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %17, align 4
  %341 = add nsw i32 %339, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %336, i64 %342
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %16, align 4
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %16, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %335
  br label %458

354:                                              ; preds = %335
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 5), align 8
  %356 = load i32, i32* %16, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i64 %357
  store %struct.TYPE_13__* %358, %struct.TYPE_13__** %22, align 8
  %359 = load i32, i32* %14, align 4
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %11, align 4
  %364 = call %struct.TYPE_11__* @AAS_GetAreaRoutingCache(i32 %359, i32 %362, i32 %363)
  store %struct.TYPE_11__* %364, %struct.TYPE_11__** %24, align 8
  %365 = load i32, i32* %14, align 4
  %366 = load i32, i32* %8, align 4
  %367 = call i32 @AAS_ClusterAreaNum(i32 %365, i32 %366)
  store i32 %367, i32* %18, align 4
  %368 = load i32, i32* %18, align 4
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = icmp sge i32 %368, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %354
  br label %458

374:                                              ; preds = %354
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %18, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %384, label %383

383:                                              ; preds = %374
  br label %458

384:                                              ; preds = %374
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 0
  %387 = load i32*, i32** %386, align 8
  %388 = load i32, i32* %16, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %387, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 0
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %18, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 %391, %398
  %400 = trunc i32 %399 to i16
  store i16 %400, i16* %20, align 2
  %401 = load i64*, i64** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 4), align 8
  %402 = load i32, i32* %16, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64, i64* %401, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = load i16, i16* %20, align 2
  %407 = zext i16 %406 to i64
  %408 = add nsw i64 %407, %405
  %409 = trunc i64 %408 to i16
  store i16 %409, i16* %20, align 2
  %410 = load i64, i64* %9, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %444

412:                                              ; preds = %384
  %413 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 3), align 8
  %414 = load i32, i32* %8, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 1
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %18, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = add nsw i32 %418, %425
  %427 = load i32*, i32** %13, align 8
  store i32 %426, i32* %427, align 4
  %428 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @aasworld, i32 0, i32 2), align 8
  %429 = load i32*, i32** %13, align 8
  %430 = load i32, i32* %429, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i64 %431
  store %struct.TYPE_12__* %432, %struct.TYPE_12__** %26, align 8
  %433 = load i32, i32* %8, align 4
  %434 = load i64, i64* %9, align 8
  %435 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = call zeroext i16 @AAS_AreaTravelTime(i32 %433, i64 %434, i32 %437)
  %439 = zext i16 %438 to i32
  %440 = load i16, i16* %20, align 2
  %441 = zext i16 %440 to i32
  %442 = add nsw i32 %441, %439
  %443 = trunc i32 %442 to i16
  store i16 %443, i16* %20, align 2
  br label %444

444:                                              ; preds = %412, %384
  %445 = load i16, i16* %21, align 2
  %446 = icmp ne i16 %445, 0
  br i1 %446, label %447, label %453

447:                                              ; preds = %444
  %448 = load i16, i16* %20, align 2
  %449 = zext i16 %448 to i32
  %450 = load i16, i16* %21, align 2
  %451 = zext i16 %450 to i32
  %452 = icmp slt i32 %449, %451
  br i1 %452, label %453, label %457

453:                                              ; preds = %447, %444
  %454 = load i32*, i32** %13, align 8
  %455 = load i32, i32* %454, align 4
  store i32 %455, i32* %19, align 4
  %456 = load i16, i16* %20, align 2
  store i16 %456, i16* %21, align 2
  br label %457

457:                                              ; preds = %453, %447
  br label %458

458:                                              ; preds = %457, %383, %373, %353
  %459 = load i32, i32* %17, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %17, align 4
  br label %329

461:                                              ; preds = %329
  %462 = load i32, i32* %19, align 4
  %463 = icmp slt i32 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %461
  %465 = load i32, i32* @qfalse, align 4
  store i32 %465, i32* %7, align 4
  br label %473

466:                                              ; preds = %461
  %467 = load i32, i32* %19, align 4
  %468 = load i32*, i32** %13, align 8
  store i32 %467, i32* %468, align 4
  %469 = load i16, i16* %21, align 2
  %470 = zext i16 %469 to i32
  %471 = load i32*, i32** %12, align 8
  store i32 %470, i32* %471, align 4
  %472 = load i32, i32* @qtrue, align 4
  store i32 %472, i32* %7, align 4
  br label %473

473:                                              ; preds = %466, %464, %297, %242, %232, %204, %89, %71, %54, %35, %29
  %474 = load i32, i32* %7, align 4
  ret i32 %474
}

declare dso_local i32 @AvailableMemory(...) #1

declare dso_local i32 @AAS_FreeOldestCache(...) #1

declare dso_local i64 @AAS_AreaDoNotEnter(i32) #1

declare dso_local %struct.TYPE_11__* @AAS_GetAreaRoutingCache(i32, i32, i32) #1

declare dso_local i32 @AAS_ClusterAreaNum(i32, i32) #1

declare dso_local zeroext i16 @AAS_AreaTravelTime(i32, i64, i32) #1

declare dso_local %struct.TYPE_11__* @AAS_GetPortalRoutingCache(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
