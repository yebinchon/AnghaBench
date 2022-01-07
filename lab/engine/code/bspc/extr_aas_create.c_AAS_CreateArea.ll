; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_create.c_AAS_CreateArea.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_create.c_AAS_CreateArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__*, i64*, i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__**, i32, %struct.TYPE_19__*, %struct.TYPE_21__** }
%struct.TYPE_19__ = type { i32, i32, i64, i32 }

@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@FACE_SOLID = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@FACE_LIQUID = common dso_local global i32 0, align 4
@FACE_LIQUIDSURFACE = common dso_local global i32 0, align 4
@CONTENTS_LADDER = common dso_local global i32 0, align 4
@FACE_LADDER = common dso_local global i32 0, align 4
@FACE_GROUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0D%6d\00", align 1
@cfg = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@CONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@AREACONTENTS_CLUSTERPORTAL = common dso_local global i32 0, align 4
@CONTENTS_MOVER = common dso_local global i32 0, align 4
@AREACONTENTS_MOVER = common dso_local global i32 0, align 4
@CONTENTS_TELEPORTER = common dso_local global i32 0, align 4
@AREACONTENTS_TELEPORTER = common dso_local global i32 0, align 4
@CONTENTS_JUMPPAD = common dso_local global i32 0, align 4
@AREACONTENTS_JUMPPAD = common dso_local global i32 0, align 4
@CONTENTS_DONOTENTER = common dso_local global i32 0, align 4
@AREACONTENTS_DONOTENTER = common dso_local global i32 0, align 4
@AREACONTENTS_WATER = common dso_local global i32 0, align 4
@AREACONTENTS_LAVA = common dso_local global i32 0, align 4
@AREACONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_NOTTEAM1 = common dso_local global i32 0, align 4
@AREACONTENTS_NOTTEAM1 = common dso_local global i32 0, align 4
@CONTENTS_NOTTEAM2 = common dso_local global i32 0, align 4
@AREACONTENTS_NOTTEAM2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @AAS_CreateArea(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %9 = call %struct.TYPE_20__* (...) @AAS_AllocTmpArea()
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %7, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 4
  store i32* null, i32** %11, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %5, align 8
  br label %15

15:                                               ; preds = %190, %1
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = icmp ne %struct.TYPE_21__* %16, null
  br i1 %17, label %18, label %198

18:                                               ; preds = %15
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %21, i64 1
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %25 = icmp eq %struct.TYPE_22__* %23, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = icmp ne %struct.TYPE_19__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %36 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_19__* %34, i32 1, %struct.TYPE_20__* %35)
  br label %189

37:                                               ; preds = %18
  %38 = call %struct.TYPE_19__* (...) @AAS_AllocTmpFace()
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %6, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 3
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %41, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = xor i32 %44, %45
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ReverseWinding(i32 %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  br label %65

58:                                               ; preds = %37
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CopyWinding(i32 %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %68, i64 %73
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CONTENTS_SOLID, align 4
  %79 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %65
  %84 = load i32, i32* @FACE_SOLID, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %133

89:                                               ; preds = %65
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @CONTENTS_WATER, align 4
  %94 = load i32, i32* @CONTENTS_SLIME, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @CONTENTS_LAVA, align 4
  %97 = or i32 %95, %96
  %98 = and i32 %92, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %89
  %101 = load i32, i32* @FACE_LIQUID, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %108, i64 %113
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @CONTENTS_WATER, align 4
  %119 = load i32, i32* @CONTENTS_SLIME, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @CONTENTS_LAVA, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %117, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %100
  %126 = load i32, i32* @FACE_LIQUIDSURFACE, align 4
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %125, %100
  br label %132

132:                                              ; preds = %131, %89
  br label %133

133:                                              ; preds = %132, %83
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %136, i64 %138
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @CONTENTS_LADDER, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %162, label %146

146:                                              ; preds = %133
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = icmp ne i32 %150, 0
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %149, i64 %154
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @CONTENTS_LADDER, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %146, %133
  %163 = load i32, i32* @FACE_LADDER, align 4
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %162, %146
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %170 = call i64 @AAS_GroundFace(%struct.TYPE_19__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i32, i32* @FACE_GROUND, align 4
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %168
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %4, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %4, align 4
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %188 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_19__* %186, i32 0, %struct.TYPE_20__* %187)
  br label %189

189:                                              ; preds = %178, %31
  br label %190

190:                                              ; preds = %189
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 4
  %193 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %192, align 8
  %194 = load i32, i32* %3, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %193, i64 %195
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %196, align 8
  store %struct.TYPE_21__* %197, %struct.TYPE_21__** %5, align 8
  br label %15

198:                                              ; preds = %15
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %201)
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = xor i32 %205, -1
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @cfg, i32 0, i32 0), align 4
  %208 = and i32 %206, %207
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 2
  store i32 0, i32* %212, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @CONTENTS_CLUSTERPORTAL, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %198
  %220 = load i32, i32* @AREACONTENTS_CLUSTERPORTAL, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %219, %198
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @CONTENTS_MOVER, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = load i32, i32* @AREACONTENTS_MOVER, align 4
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %232, %225
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @CONTENTS_TELEPORTER, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %238
  %246 = load i32, i32* @AREACONTENTS_TELEPORTER, align 4
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %245, %238
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @CONTENTS_JUMPPAD, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %251
  %259 = load i32, i32* @AREACONTENTS_JUMPPAD, align 4
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %258, %251
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @CONTENTS_DONOTENTER, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %264
  %272 = load i32, i32* @AREACONTENTS_DONOTENTER, align 4
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %277

277:                                              ; preds = %271, %264
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @CONTENTS_WATER, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %277
  %285 = load i32, i32* @AREACONTENTS_WATER, align 4
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %284, %277
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @CONTENTS_LAVA, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %290
  %298 = load i32, i32* @AREACONTENTS_LAVA, align 4
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = or i32 %301, %298
  store i32 %302, i32* %300, align 8
  br label %303

303:                                              ; preds = %297, %290
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @CONTENTS_SLIME, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %316

310:                                              ; preds = %303
  %311 = load i32, i32* @AREACONTENTS_SLIME, align 4
  %312 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 8
  br label %316

316:                                              ; preds = %310, %303
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @CONTENTS_NOTTEAM1, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %316
  %324 = load i32, i32* @AREACONTENTS_NOTTEAM1, align 4
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = or i32 %327, %324
  store i32 %328, i32* %326, align 8
  br label %329

329:                                              ; preds = %323, %316
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @CONTENTS_NOTTEAM2, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %329
  %337 = load i32, i32* @AREACONTENTS_NOTTEAM2, align 4
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 8
  br label %342

342:                                              ; preds = %336, %329
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 4
  %348 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %349 = call i32 @AAS_FlipAreaFaces(%struct.TYPE_20__* %348)
  %350 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %351 = call i32 @AAS_CheckArea(%struct.TYPE_20__* %350)
  %352 = call %struct.TYPE_18__* (...) @AAS_AllocTmpNode()
  store %struct.TYPE_18__* %352, %struct.TYPE_18__** %8, align 8
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 2
  store i64 0, i64* %354, align 8
  %355 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 1
  %357 = load i64*, i64** %356, align 8
  %358 = getelementptr inbounds i64, i64* %357, i64 0
  store i64 0, i64* %358, align 8
  %359 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 1
  %361 = load i64*, i64** %360, align 8
  %362 = getelementptr inbounds i64, i64* %361, i64 1
  store i64 0, i64* %362, align 8
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 0
  store %struct.TYPE_20__* %363, %struct.TYPE_20__** %365, align 8
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  ret %struct.TYPE_18__* %366
}

declare dso_local %struct.TYPE_20__* @AAS_AllocTmpArea(...) #1

declare dso_local i32 @AAS_AddFaceSideToArea(%struct.TYPE_19__*, i32, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @AAS_AllocTmpFace(...) #1

declare dso_local i32 @ReverseWinding(i32) #1

declare dso_local i32 @CopyWinding(i32) #1

declare dso_local i64 @AAS_GroundFace(%struct.TYPE_19__*) #1

declare dso_local i32 @qprintf(i8*, i32) #1

declare dso_local i32 @AAS_FlipAreaFaces(%struct.TYPE_20__*) #1

declare dso_local i32 @AAS_CheckArea(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_18__* @AAS_AllocTmpNode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
