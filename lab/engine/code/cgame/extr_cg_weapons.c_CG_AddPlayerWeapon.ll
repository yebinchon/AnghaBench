; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_AddPlayerWeapon.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_AddPlayerWeapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64*, i64, i64, i64, i64, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32*, i32* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_27__, i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_34__ = type { i64, %struct.TYPE_29__, i32, %struct.TYPE_28__ }
%struct.TYPE_29__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_31__ = type { i32*, i32, i32*, i64, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_32__ = type { i32, i32* }

@cg_weapons = common dso_local global %struct.TYPE_30__* null, align 8
@WP_RAILGUN = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@cg = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@EF_FIRING = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"tag_weapon\00", align 1
@cg_drawGun = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"tag_barrel\00", align 1
@cg_entities = common dso_local global %struct.TYPE_34__* null, align 8
@WP_LIGHTNING = common dso_local global i64 0, align 8
@WP_GAUNTLET = common dso_local global i64 0, align 8
@WP_GRAPPLING_HOOK = common dso_local global i64 0, align 8
@MUZZLE_FLASH_TIME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"tag_flash\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddPlayerWeapon(%struct.TYPE_31__* %0, i32* %1, %struct.TYPE_34__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_31__, align 8
  %10 = alloca %struct.TYPE_31__, align 8
  %11 = alloca %struct.TYPE_31__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_34__*, align 8
  %16 = alloca %struct.TYPE_32__, align 8
  %17 = alloca %struct.TYPE_33__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @CG_RegisterWeapon(i64 %24)
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** @cg_weapons, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i64 %27
  store %struct.TYPE_30__* %28, %struct.TYPE_30__** %14, align 8
  %29 = call i32 @memset(%struct.TYPE_31__* %9, i32 0, i32 64)
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @VectorCopy(i32 %32, i32 %34)
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 5
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @WP_RAILGUN, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %115

47:                                               ; preds = %4
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cgs, i32 0, i32 0), align 8
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i64 %52
  store %struct.TYPE_33__* %53, %struct.TYPE_33__** %17, align 8
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1500
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cg, i32 0, i32 0), align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %107

61:                                               ; preds = %47
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cg, i32 0, i32 0), align 8
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %62, %66
  %68 = mul nsw i64 255, %67
  %69 = sdiv i64 %68, 1500
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %18, align 4
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %18, align 4
  %77 = mul nsw i32 %75, %76
  %78 = ashr i32 %77, 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %78, i32* %81, align 4
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %18, align 4
  %88 = mul nsw i32 %86, %87
  %89 = ashr i32 %88, 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %89, i32* %92, align 4
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %18, align 4
  %99 = mul nsw i32 %97, %98
  %100 = ashr i32 %99, 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32 %100, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  store i32 255, i32* %106, align 4
  br label %114

107:                                              ; preds = %47
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @Byte4Copy(i32* %110, i32* %112)
  br label %114

114:                                              ; preds = %107, %61
  br label %115

115:                                              ; preds = %114, %4
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 3
  store i64 %118, i64* %119, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %115
  br label %535

124:                                              ; preds = %115
  %125 = load i32*, i32** %6, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %181, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* @qfalse, align 4
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 8
  %132 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @EF_FIRING, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %161

139:                                              ; preds = %127
  %140 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %139
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @vec3_origin, align 4
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @trap_S_AddLoopingSound(i64 %148, i32 %151, i32 %152, i64 %155)
  %157 = load i32, i32* @qtrue, align 4
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 8
  br label %180

161:                                              ; preds = %139, %127
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %161
  %167 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @vec3_origin, align 4
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @trap_S_AddLoopingSound(i64 %170, i32 %173, i32 %174, i64 %177)
  br label %179

179:                                              ; preds = %166, %161
  br label %180

180:                                              ; preds = %179, %144
  br label %181

181:                                              ; preds = %180, %124
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 9
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 7
  %193 = load i64, i64* %192, align 8
  %194 = sitofp i64 %193 to double
  %195 = fsub double 1.000000e+00, %194
  %196 = fptosi double %195 to i64
  %197 = call i32 @trap_R_LerpTag(%struct.TYPE_32__* %16, i64 %184, i32 %187, i32 %190, i64 %196, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %198 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @VectorCopy(i32 %200, i32 %202)
  %204 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @VectorMA(i32 %205, i32 %209, i32 %214, i32 %216)
  %218 = load i32*, i32** %6, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %239

220:                                              ; preds = %181
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cg_drawGun, i32 0, i32 0), align 4
  %222 = icmp eq i32 %221, 2
  br i1 %222, label %223, label %239

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 0, %229
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @VectorMA(i32 %225, i32 %230, i32 %235, i32 %237)
  br label %261

239:                                              ; preds = %220, %181
  %240 = load i32*, i32** %6, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @cg_drawGun, i32 0, i32 0), align 4
  %244 = icmp ne i32 %243, 3
  br i1 %244, label %245, label %260

245:                                              ; preds = %242, %239
  %246 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 1
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @VectorMA(i32 %247, i32 %251, i32 %256, i32 %258)
  br label %260

260:                                              ; preds = %245, %242
  br label %261

261:                                              ; preds = %260, %223
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 2
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 2
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 2
  %272 = load i32, i32* %271, align 4
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @VectorMA(i32 %263, i32 %267, i32 %272, i32 %274)
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %16, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %278, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 2
  %282 = load i32*, i32** %281, align 8
  %283 = call i32 @MatrixMultiply(i32 %277, i32* %280, i32* %282)
  %284 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %284, i32 0, i32 7
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %9, i32 0, i32 7
  store i64 %286, i64* %287, align 8
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @CG_AddWeaponWithPowerups(%struct.TYPE_31__* %9, i32 %291)
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %341

297:                                              ; preds = %261
  %298 = call i32 @memset(%struct.TYPE_31__* %10, i32 0, i32 64)
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @VectorCopy(i32 %301, i32 %303)
  %305 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %305, i32 0, i32 5
  %307 = load i32, i32* %306, align 4
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 5
  store i32 %307, i32* %308, align 4
  %309 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 4
  store i32 %311, i32* %312, align 8
  %313 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %314 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 3
  store i64 %315, i64* %316, align 8
  %317 = load i32*, i32** %12, align 8
  %318 = load i64, i64* @YAW, align 8
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  store i32 0, i32* %319, align 4
  %320 = load i32*, i32** %12, align 8
  %321 = load i64, i64* @PITCH, align 8
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  store i32 0, i32* %322, align 4
  %323 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %324 = call i32 @CG_MachinegunSpinAngle(%struct.TYPE_34__* %323)
  %325 = load i32*, i32** %12, align 8
  %326 = load i64, i64* @ROLL, align 8
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  store i32 %324, i32* %327, align 4
  %328 = load i32*, i32** %12, align 8
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = call i32 @AnglesToAxis(i32* %328, i32* %330)
  %332 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %333 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = call i32 @CG_PositionRotatedEntityOnTag(%struct.TYPE_31__* %10, %struct.TYPE_31__* %9, i64 %334, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %336 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @CG_AddWeaponWithPowerups(%struct.TYPE_31__* %10, i32 %339)
  br label %341

341:                                              ; preds = %297, %261
  %342 = load %struct.TYPE_34__*, %struct.TYPE_34__** @cg_entities, align 8
  %343 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %342, i64 %346
  store %struct.TYPE_34__* %347, %struct.TYPE_34__** %15, align 8
  %348 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %349 = load %struct.TYPE_34__*, %struct.TYPE_34__** @cg_entities, align 8
  %350 = ptrtoint %struct.TYPE_34__* %348 to i64
  %351 = ptrtoint %struct.TYPE_34__* %349 to i64
  %352 = sub i64 %350, %351
  %353 = sdiv exact i64 %352, 72
  %354 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %353, %357
  br i1 %358, label %359, label %361

359:                                              ; preds = %341
  %360 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  store %struct.TYPE_34__* %360, %struct.TYPE_34__** %15, align 8
  br label %361

361:                                              ; preds = %359, %341
  %362 = load i64, i64* %13, align 8
  %363 = load i64, i64* @WP_LIGHTNING, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %373, label %365

365:                                              ; preds = %361
  %366 = load i64, i64* %13, align 8
  %367 = load i64, i64* @WP_GAUNTLET, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %373, label %369

369:                                              ; preds = %365
  %370 = load i64, i64* %13, align 8
  %371 = load i64, i64* @WP_GRAPPLING_HOOK, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %382

373:                                              ; preds = %369, %365, %361
  %374 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %375 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @EF_FIRING, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %373
  br label %392

382:                                              ; preds = %373, %369
  %383 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cg, i32 0, i32 0), align 8
  %384 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = sub nsw i64 %383, %386
  %388 = load i64, i64* @MUZZLE_FLASH_TIME, align 8
  %389 = icmp sgt i64 %387, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %382
  br label %535

391:                                              ; preds = %382
  br label %392

392:                                              ; preds = %391, %381
  %393 = call i32 @memset(%struct.TYPE_31__* %11, i32 0, i32 64)
  %394 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %394, i32 0, i32 6
  %396 = load i32, i32* %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 6
  %398 = load i32, i32* %397, align 8
  %399 = call i32 @VectorCopy(i32 %396, i32 %398)
  %400 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %400, i32 0, i32 5
  %402 = load i32, i32* %401, align 4
  %403 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 5
  store i32 %402, i32* %403, align 4
  %404 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 4
  store i32 %406, i32* %407, align 8
  %408 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %409 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 3
  store i64 %410, i64* %411, align 8
  %412 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 3
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %392
  br label %535

416:                                              ; preds = %392
  %417 = load i32*, i32** %12, align 8
  %418 = load i64, i64* @YAW, align 8
  %419 = getelementptr inbounds i32, i32* %417, i64 %418
  store i32 0, i32* %419, align 4
  %420 = load i32*, i32** %12, align 8
  %421 = load i64, i64* @PITCH, align 8
  %422 = getelementptr inbounds i32, i32* %420, i64 %421
  store i32 0, i32* %422, align 4
  %423 = call i32 (...) @crandom()
  %424 = mul nsw i32 %423, 10
  %425 = load i32*, i32** %12, align 8
  %426 = load i64, i64* @ROLL, align 8
  %427 = getelementptr inbounds i32, i32* %425, i64 %426
  store i32 %424, i32* %427, align 4
  %428 = load i32*, i32** %12, align 8
  %429 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 2
  %430 = load i32*, i32** %429, align 8
  %431 = call i32 @AnglesToAxis(i32* %428, i32* %430)
  %432 = load i64, i64* %13, align 8
  %433 = load i64, i64* @WP_RAILGUN, align 8
  %434 = icmp eq i64 %432, %433
  br i1 %434, label %435, label %469

435:                                              ; preds = %416
  %436 = load %struct.TYPE_33__*, %struct.TYPE_33__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cgs, i32 0, i32 0), align 8
  %437 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %438 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %436, i64 %440
  store %struct.TYPE_33__* %441, %struct.TYPE_33__** %19, align 8
  %442 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %443 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %442, i32 0, i32 1
  %444 = load i32*, i32** %443, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 0
  %446 = load i32, i32* %445, align 4
  %447 = mul nsw i32 255, %446
  %448 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 0
  store i32 %447, i32* %450, align 4
  %451 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %452 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %451, i32 0, i32 1
  %453 = load i32*, i32** %452, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 1
  %455 = load i32, i32* %454, align 4
  %456 = mul nsw i32 255, %455
  %457 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 1
  store i32 %456, i32* %459, align 4
  %460 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %461 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %460, i32 0, i32 1
  %462 = load i32*, i32** %461, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 2
  %464 = load i32, i32* %463, align 4
  %465 = mul nsw i32 255, %464
  %466 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %467 = load i32*, i32** %466, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 2
  store i32 %465, i32* %468, align 4
  br label %469

469:                                              ; preds = %435, %416
  %470 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %471 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %470, i32 0, i32 1
  %472 = load i64, i64* %471, align 8
  %473 = call i32 @CG_PositionRotatedEntityOnTag(%struct.TYPE_31__* %11, %struct.TYPE_31__* %9, i64 %472, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %474 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_31__* %11)
  %475 = load i32*, i32** %6, align 8
  %476 = icmp ne i32* %475, null
  br i1 %476, label %487, label %477

477:                                              ; preds = %469
  %478 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cg, i32 0, i32 2), align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %487, label %480

480:                                              ; preds = %477
  %481 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %482, i32 0, i32 3
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @cg, i32 0, i32 1, i32 0), align 8
  %486 = icmp ne i64 %484, %485
  br i1 %486, label %487, label %535

487:                                              ; preds = %480, %477, %469
  %488 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %489 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @CG_LightningBolt(%struct.TYPE_34__* %488, i32 %490)
  %492 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %493 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %492, i32 0, i32 0
  %494 = load i64*, i64** %493, align 8
  %495 = getelementptr inbounds i64, i64* %494, i64 0
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %512, label %498

498:                                              ; preds = %487
  %499 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %500 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %499, i32 0, i32 0
  %501 = load i64*, i64** %500, align 8
  %502 = getelementptr inbounds i64, i64* %501, i64 1
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %512, label %505

505:                                              ; preds = %498
  %506 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %507 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %506, i32 0, i32 0
  %508 = load i64*, i64** %507, align 8
  %509 = getelementptr inbounds i64, i64* %508, i64 2
  %510 = load i64, i64* %509, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %534

512:                                              ; preds = %505, %498, %487
  %513 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 1
  %514 = load i32, i32* %513, align 8
  %515 = call i32 (...) @rand()
  %516 = and i32 %515, 31
  %517 = add nsw i32 300, %516
  %518 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %519 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %518, i32 0, i32 0
  %520 = load i64*, i64** %519, align 8
  %521 = getelementptr inbounds i64, i64* %520, i64 0
  %522 = load i64, i64* %521, align 8
  %523 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %524 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %523, i32 0, i32 0
  %525 = load i64*, i64** %524, align 8
  %526 = getelementptr inbounds i64, i64* %525, i64 1
  %527 = load i64, i64* %526, align 8
  %528 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %529 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %528, i32 0, i32 0
  %530 = load i64*, i64** %529, align 8
  %531 = getelementptr inbounds i64, i64* %530, i64 2
  %532 = load i64, i64* %531, align 8
  %533 = call i32 @trap_R_AddLightToScene(i32 %514, i32 %517, i64 %522, i64 %527, i64 %532)
  br label %534

534:                                              ; preds = %512, %505
  br label %535

535:                                              ; preds = %123, %390, %415, %534, %480
  ret void
}

declare dso_local i32 @CG_RegisterWeapon(i64) #1

declare dso_local i32 @memset(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @Byte4Copy(i32*, i32*) #1

declare dso_local i32 @trap_S_AddLoopingSound(i64, i32, i32, i64) #1

declare dso_local i32 @trap_R_LerpTag(%struct.TYPE_32__*, i64, i32, i32, i64, i8*) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @MatrixMultiply(i32, i32*, i32*) #1

declare dso_local i32 @CG_AddWeaponWithPowerups(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @CG_MachinegunSpinAngle(%struct.TYPE_34__*) #1

declare dso_local i32 @AnglesToAxis(i32*, i32*) #1

declare dso_local i32 @CG_PositionRotatedEntityOnTag(%struct.TYPE_31__*, %struct.TYPE_31__*, i64, i8*) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_31__*) #1

declare dso_local i32 @CG_LightningBolt(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @trap_R_AddLightToScene(i32, i32, i64, i64, i64) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
