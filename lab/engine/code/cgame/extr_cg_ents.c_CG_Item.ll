; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_ents.c_CG_Item.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_ents.c_CG_Item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, i64, i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i64*, i32 }
%struct.TYPE_24__ = type { i32, i32*, i32*, %struct.TYPE_26__*, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_28__ = type { i32*, i32, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_27__, %struct.TYPE_32__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_33__ = type { i32*, i32*, i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, i32, double, i32* }
%struct.TYPE_29__ = type { i32*, i32, i32*, i32**, i32*, i32*, i8*, i64, i32, i32, i32, i32 }

@bg_numItems = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Bad item index %i on entity\00", align 1
@EF_NODRAW = common dso_local global i32 0, align 4
@bg_itemlist = common dso_local global %struct.TYPE_30__* null, align 8
@cg_simpleItems = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@IT_TEAM = common dso_local global i64 0, align 8
@RT_SPRITE = common dso_local global i32 0, align 4
@cg_items = common dso_local global %struct.TYPE_23__* null, align 8
@MOVE_TYPE_BOB = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@IT_HEALTH = common dso_local global i64 0, align 8
@IT_WEAPON = common dso_local global i64 0, align 8
@cg_weapons = common dso_local global %struct.TYPE_28__* null, align 8
@WP_RAILGUN = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@qfalse = common dso_local global i8* null, align 8
@ITEM_SCALEUP_TIME = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@IT_ARMOR = common dso_local global i64 0, align 8
@RF_MINLIGHT = common dso_local global i32 0, align 4
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"tag_barrel\00", align 1
@IT_POWERUP = common dso_local global i64 0, align 8
@HI_KAMIKAZE = common dso_local global i64 0, align 8
@IT_HOLDABLE = common dso_local global i64 0, align 8
@vec3_origin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_33__*)* @CG_Item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_Item(%struct.TYPE_33__* %0) #0 {
  %2 = alloca %struct.TYPE_33__*, align 8
  %3 = alloca %struct.TYPE_29__, align 8
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_29__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %2, align 8
  %14 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %14, i32 0, i32 3
  store %struct.TYPE_31__* %15, %struct.TYPE_31__** %4, align 8
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @bg_numItems, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @CG_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EF_NODRAW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %26
  br label %604

39:                                               ; preds = %31
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** @bg_itemlist, align 8
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i64 %43
  store %struct.TYPE_30__* %44, %struct.TYPE_30__** %5, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cg_simpleItems, i32 0, i32 0), align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %39
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IT_TEAM, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %47
  %54 = call i32 @memset(%struct.TYPE_29__* %3, i32 0, i32 80)
  %55 = load i32, i32* @RT_SPRITE, align 4
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 11
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @VectorCopy(i32* %59, i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 1
  store i32 14, i32* %63, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** @cg_items, align 8
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 10
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 255, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 255, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32 255, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 255, i32* %83, align 4
  %84 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_29__* %3)
  br label %604

85:                                               ; preds = %47, %39
  %86 = call i32 @memset(%struct.TYPE_29__* %3, i32 0, i32 80)
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MOVE_TYPE_BOB, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %141

92:                                               ; preds = %85
  %93 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 2
  %96 = load double, double* %95, align 8
  %97 = fmul double %96, 1.000000e-05
  %98 = fadd double 5.000000e-03, %97
  %99 = fptrunc double %98 to float
  store float %99, float* %8, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cg, i32 0, i32 0), align 8
  %101 = add nsw i32 %100, 1000
  %102 = sitofp i32 %101 to float
  %103 = load float, float* %8, align 4
  %104 = fmul float %102, %103
  %105 = fptosi float %104 to i32
  %106 = call i32 @cos(i32 %105)
  %107 = mul nsw i32 %106, 4
  %108 = add nsw i32 4, %107
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %108
  store i32 %114, i32* %112, align 4
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @IT_HEALTH, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %92
  %121 = load i32*, i32** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cg, i32 0, i32 1), align 8
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @VectorCopy(i32* %121, i32* %124)
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cg, i32 0, i32 5), align 4
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %128 = load i32**, i32*** %127, align 8
  %129 = call i32 @AxisCopy(i32 %126, i32** %128)
  br label %140

130:                                              ; preds = %92
  %131 = load i32*, i32** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cg, i32 0, i32 2), align 8
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i32 @VectorCopy(i32* %131, i32* %134)
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cg, i32 0, i32 4), align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %138 = load i32**, i32*** %137, align 8
  %139 = call i32 @AxisCopy(i32 %136, i32** %138)
  br label %140

140:                                              ; preds = %130, %120
  br label %154

141:                                              ; preds = %85
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 4
  store i32 %147, i32* %145, align 4
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %152 = load i32**, i32*** %151, align 8
  %153 = call i32 @AnglesToAxis(i32* %150, i32** %152)
  br label %154

154:                                              ; preds = %141, %140
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %9, align 8
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @IT_WEAPON, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %304

160:                                              ; preds = %154
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** @cg_weapons, align 8
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i64 %164
  store %struct.TYPE_28__* %165, %struct.TYPE_28__** %9, align 8
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %172 = load i32**, i32*** %171, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %170, %176
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %184 = load i32**, i32*** %183, align 8
  %185 = getelementptr inbounds i32*, i32** %184, i64 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %182, %188
  %190 = add nsw i32 %177, %189
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %197 = load i32**, i32*** %196, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 2
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %195, %201
  %203 = add nsw i32 %190, %202
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 0
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %208, %203
  store i32 %209, i32* %207, align 4
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %216 = load i32**, i32*** %215, align 8
  %217 = getelementptr inbounds i32*, i32** %216, i64 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %214, %220
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %228 = load i32**, i32*** %227, align 8
  %229 = getelementptr inbounds i32*, i32** %228, i64 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %226, %232
  %234 = add nsw i32 %221, %233
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %241 = load i32**, i32*** %240, align 8
  %242 = getelementptr inbounds i32*, i32** %241, i64 2
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 %239, %245
  %247 = add nsw i32 %234, %246
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = sub nsw i32 %252, %247
  store i32 %253, i32* %251, align 4
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %260 = load i32**, i32*** %259, align 8
  %261 = getelementptr inbounds i32*, i32** %260, i64 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 2
  %264 = load i32, i32* %263, align 4
  %265 = mul nsw i32 %258, %264
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %272 = load i32**, i32*** %271, align 8
  %273 = getelementptr inbounds i32*, i32** %272, i64 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 2
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 %270, %276
  %278 = add nsw i32 %265, %277
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %285 = load i32**, i32*** %284, align 8
  %286 = getelementptr inbounds i32*, i32** %285, i64 2
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  %289 = load i32, i32* %288, align 4
  %290 = mul nsw i32 %283, %289
  %291 = add nsw i32 %278, %290
  %292 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 2
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 %296, %291
  store i32 %297, i32* %295, align 4
  %298 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 2
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, 8
  store i32 %303, i32* %301, align 4
  br label %304

304:                                              ; preds = %160, %154
  %305 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @IT_WEAPON, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %329

310:                                              ; preds = %304
  %311 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @WP_RAILGUN, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %329

316:                                              ; preds = %310
  %317 = load %struct.TYPE_32__*, %struct.TYPE_32__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cgs, i32 0, i32 1), align 8
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cg, i32 0, i32 3), align 8
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %317, i64 %321
  store %struct.TYPE_32__* %322, %struct.TYPE_32__** %10, align 8
  %323 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %324 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 2
  %327 = load i32*, i32** %326, align 8
  %328 = call i32 @Byte4Copy(i32 %325, i32* %327)
  br label %329

329:                                              ; preds = %316, %310, %304
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** @cg_items, align 8
  %331 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %334, i32 0, i32 0
  %336 = load i64*, i64** %335, align 8
  %337 = getelementptr inbounds i64, i64* %336, i64 0
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 7
  store i64 %338, i64* %339, align 8
  %340 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %341 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = call i32 @VectorCopy(i32* %342, i32* %344)
  %346 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 4
  %350 = load i32*, i32** %349, align 8
  %351 = call i32 @VectorCopy(i32* %348, i32* %350)
  %352 = load i8*, i8** @qfalse, align 8
  %353 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 6
  store i8* %352, i8** %353, align 8
  %354 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cg, i32 0, i32 0), align 8
  %355 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = sub nsw i32 %354, %357
  store i32 %358, i32* %6, align 4
  %359 = load i32, i32* %6, align 4
  %360 = icmp sge i32 %359, 0
  br i1 %360, label %361, label %403

361:                                              ; preds = %329
  %362 = load i32, i32* %6, align 4
  %363 = load i32, i32* @ITEM_SCALEUP_TIME, align 4
  %364 = icmp slt i32 %362, %363
  br i1 %364, label %365, label %403

365:                                              ; preds = %361
  %366 = load i32, i32* %6, align 4
  %367 = sitofp i32 %366 to float
  %368 = load i32, i32* @ITEM_SCALEUP_TIME, align 4
  %369 = sitofp i32 %368 to float
  %370 = fdiv float %367, %369
  store float %370, float* %7, align 4
  %371 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %372 = load i32**, i32*** %371, align 8
  %373 = getelementptr inbounds i32*, i32** %372, i64 0
  %374 = load i32*, i32** %373, align 8
  %375 = load float, float* %7, align 4
  %376 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %377 = load i32**, i32*** %376, align 8
  %378 = getelementptr inbounds i32*, i32** %377, i64 0
  %379 = load i32*, i32** %378, align 8
  %380 = call i32 @VectorScale(i32* %374, float %375, i32* %379)
  %381 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %382 = load i32**, i32*** %381, align 8
  %383 = getelementptr inbounds i32*, i32** %382, i64 1
  %384 = load i32*, i32** %383, align 8
  %385 = load float, float* %7, align 4
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %387 = load i32**, i32*** %386, align 8
  %388 = getelementptr inbounds i32*, i32** %387, i64 1
  %389 = load i32*, i32** %388, align 8
  %390 = call i32 @VectorScale(i32* %384, float %385, i32* %389)
  %391 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %392 = load i32**, i32*** %391, align 8
  %393 = getelementptr inbounds i32*, i32** %392, i64 2
  %394 = load i32*, i32** %393, align 8
  %395 = load float, float* %7, align 4
  %396 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %397 = load i32**, i32*** %396, align 8
  %398 = getelementptr inbounds i32*, i32** %397, i64 2
  %399 = load i32*, i32** %398, align 8
  %400 = call i32 @VectorScale(i32* %394, float %395, i32* %399)
  %401 = load i8*, i8** @qtrue, align 8
  %402 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 6
  store i8* %401, i8** %402, align 8
  br label %404

403:                                              ; preds = %361, %329
  store float 1.000000e+00, float* %7, align 4
  br label %404

404:                                              ; preds = %403, %365
  %405 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @IT_WEAPON, align 8
  %409 = icmp eq i64 %407, %408
  br i1 %409, label %416, label %410

410:                                              ; preds = %404
  %411 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* @IT_ARMOR, align 8
  %415 = icmp eq i64 %413, %414
  br i1 %415, label %416, label %421

416:                                              ; preds = %410, %404
  %417 = load i32, i32* @RF_MINLIGHT, align 4
  %418 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 8
  %419 = load i32, i32* %418, align 8
  %420 = or i32 %419, %417
  store i32 %420, i32* %418, align 8
  br label %421

421:                                              ; preds = %416, %410
  %422 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @IT_WEAPON, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %457

427:                                              ; preds = %421
  %428 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %429 = load i32**, i32*** %428, align 8
  %430 = getelementptr inbounds i32*, i32** %429, i64 0
  %431 = load i32*, i32** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %433 = load i32**, i32*** %432, align 8
  %434 = getelementptr inbounds i32*, i32** %433, i64 0
  %435 = load i32*, i32** %434, align 8
  %436 = call i32 @VectorScale(i32* %431, float 1.500000e+00, i32* %435)
  %437 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %438 = load i32**, i32*** %437, align 8
  %439 = getelementptr inbounds i32*, i32** %438, i64 1
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %442 = load i32**, i32*** %441, align 8
  %443 = getelementptr inbounds i32*, i32** %442, i64 1
  %444 = load i32*, i32** %443, align 8
  %445 = call i32 @VectorScale(i32* %440, float 1.500000e+00, i32* %444)
  %446 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %447 = load i32**, i32*** %446, align 8
  %448 = getelementptr inbounds i32*, i32** %447, i64 2
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %451 = load i32**, i32*** %450, align 8
  %452 = getelementptr inbounds i32*, i32** %451, i64 2
  %453 = load i32*, i32** %452, align 8
  %454 = call i32 @VectorScale(i32* %449, float 1.500000e+00, i32* %453)
  %455 = load i8*, i8** @qtrue, align 8
  %456 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 6
  store i8* %455, i8** %456, align 8
  br label %457

457:                                              ; preds = %427, %421
  %458 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_29__* %3)
  %459 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @IT_WEAPON, align 8
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %464, label %510

464:                                              ; preds = %457
  %465 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %466 = icmp ne %struct.TYPE_28__* %465, null
  br i1 %466, label %467, label %510

467:                                              ; preds = %464
  %468 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %469 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %468, i32 0, i32 2
  %470 = load i64, i64* %469, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %510

472:                                              ; preds = %467
  %473 = call i32 @memset(%struct.TYPE_29__* %11, i32 0, i32 80)
  %474 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %475 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %474, i32 0, i32 2
  %476 = load i64, i64* %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 7
  store i64 %476, i64* %477, align 8
  %478 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 5
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 5
  %481 = load i32*, i32** %480, align 8
  %482 = call i32 @VectorCopy(i32* %479, i32* %481)
  %483 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 9
  %484 = load i32, i32* %483, align 4
  %485 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 9
  store i32 %484, i32* %485, align 4
  %486 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 8
  %487 = load i32, i32* %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 8
  store i32 %487, i32* %488, align 8
  %489 = load i32*, i32** %12, align 8
  %490 = load i64, i64* @YAW, align 8
  %491 = getelementptr inbounds i32, i32* %489, i64 %490
  store i32 0, i32* %491, align 4
  %492 = load i32*, i32** %12, align 8
  %493 = load i64, i64* @PITCH, align 8
  %494 = getelementptr inbounds i32, i32* %492, i64 %493
  store i32 0, i32* %494, align 4
  %495 = load i32*, i32** %12, align 8
  %496 = load i64, i64* @ROLL, align 8
  %497 = getelementptr inbounds i32, i32* %495, i64 %496
  store i32 0, i32* %497, align 4
  %498 = load i32*, i32** %12, align 8
  %499 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 3
  %500 = load i32**, i32*** %499, align 8
  %501 = call i32 @AnglesToAxis(i32* %498, i32** %500)
  %502 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %503 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 8
  %505 = call i32 @CG_PositionRotatedEntityOnTag(%struct.TYPE_29__* %11, %struct.TYPE_29__* %3, i32 %504, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %506 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 6
  %507 = load i8*, i8** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 6
  store i8* %507, i8** %508, align 8
  %509 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_29__* %11)
  br label %510

510:                                              ; preds = %472, %467, %464, %457
  %511 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cg_simpleItems, i32 0, i32 0), align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %604, label %513

513:                                              ; preds = %510
  %514 = load i32*, i32** %13, align 8
  %515 = call i32 @VectorClear(i32* %514)
  %516 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %517 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = load i64, i64* @IT_HEALTH, align 8
  %520 = icmp eq i64 %518, %519
  br i1 %520, label %527, label %521

521:                                              ; preds = %513
  %522 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %523 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = load i64, i64* @IT_POWERUP, align 8
  %526 = icmp eq i64 %524, %525
  br i1 %526, label %527, label %603

527:                                              ; preds = %521, %513
  %528 = load %struct.TYPE_23__*, %struct.TYPE_23__** @cg_items, align 8
  %529 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %530 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %528, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %532, i32 0, i32 0
  %534 = load i64*, i64** %533, align 8
  %535 = getelementptr inbounds i64, i64* %534, i64 1
  %536 = load i64, i64* %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 7
  store i64 %536, i64* %537, align 8
  %538 = icmp ne i64 %536, 0
  br i1 %538, label %539, label %602

539:                                              ; preds = %527
  %540 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %541 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %540, i32 0, i32 0
  %542 = load i64, i64* %541, align 8
  %543 = load i64, i64* @IT_POWERUP, align 8
  %544 = icmp eq i64 %542, %543
  br i1 %544, label %545, label %559

545:                                              ; preds = %539
  %546 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 0
  %547 = load i32*, i32** %546, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 2
  %549 = load i32, i32* %548, align 4
  %550 = add nsw i32 %549, 12
  store i32 %550, i32* %548, align 4
  %551 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @cg, i32 0, i32 0), align 8
  %552 = and i32 %551, 1023
  %553 = mul nsw i32 %552, 360
  %554 = sitofp i32 %553 to float
  %555 = fdiv float %554, -1.024000e+03
  %556 = fptosi float %555 to i32
  %557 = load i32*, i32** %13, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 1
  store i32 %556, i32* %558, align 4
  br label %559

559:                                              ; preds = %545, %539
  %560 = load i32*, i32** %13, align 8
  %561 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %562 = load i32**, i32*** %561, align 8
  %563 = call i32 @AnglesToAxis(i32* %560, i32** %562)
  %564 = load float, float* %7, align 4
  %565 = fpext float %564 to double
  %566 = fcmp une double %565, 1.000000e+00
  br i1 %566, label %567, label %600

567:                                              ; preds = %559
  %568 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %569 = load i32**, i32*** %568, align 8
  %570 = getelementptr inbounds i32*, i32** %569, i64 0
  %571 = load i32*, i32** %570, align 8
  %572 = load float, float* %7, align 4
  %573 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %574 = load i32**, i32*** %573, align 8
  %575 = getelementptr inbounds i32*, i32** %574, i64 0
  %576 = load i32*, i32** %575, align 8
  %577 = call i32 @VectorScale(i32* %571, float %572, i32* %576)
  %578 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %579 = load i32**, i32*** %578, align 8
  %580 = getelementptr inbounds i32*, i32** %579, i64 1
  %581 = load i32*, i32** %580, align 8
  %582 = load float, float* %7, align 4
  %583 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %584 = load i32**, i32*** %583, align 8
  %585 = getelementptr inbounds i32*, i32** %584, i64 1
  %586 = load i32*, i32** %585, align 8
  %587 = call i32 @VectorScale(i32* %581, float %582, i32* %586)
  %588 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %589 = load i32**, i32*** %588, align 8
  %590 = getelementptr inbounds i32*, i32** %589, i64 2
  %591 = load i32*, i32** %590, align 8
  %592 = load float, float* %7, align 4
  %593 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 3
  %594 = load i32**, i32*** %593, align 8
  %595 = getelementptr inbounds i32*, i32** %594, i64 2
  %596 = load i32*, i32** %595, align 8
  %597 = call i32 @VectorScale(i32* %591, float %592, i32* %596)
  %598 = load i8*, i8** @qtrue, align 8
  %599 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %3, i32 0, i32 6
  store i8* %598, i8** %599, align 8
  br label %600

600:                                              ; preds = %567, %559
  %601 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_29__* %3)
  br label %602

602:                                              ; preds = %600, %527
  br label %603

603:                                              ; preds = %602, %521
  br label %604

604:                                              ; preds = %38, %53, %603, %510
  ret void
}

declare dso_local i32 @CG_Error(i8*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_29__*) #1

declare dso_local i32 @cos(i32) #1

declare dso_local i32 @AxisCopy(i32, i32**) #1

declare dso_local i32 @AnglesToAxis(i32*, i32**) #1

declare dso_local i32 @Byte4Copy(i32, i32*) #1

declare dso_local i32 @VectorScale(i32*, float, i32*) #1

declare dso_local i32 @CG_PositionRotatedEntityOnTag(%struct.TYPE_29__*, %struct.TYPE_29__*, i32, i8*) #1

declare dso_local i32 @VectorClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
