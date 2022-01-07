; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_GroundTrace.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_GroundTrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__*, i64, %struct.TYPE_9__, i32, i32, i32, i32 (%struct.TYPE_12__*, i64*, i32, i32, i64*, i32, i32)* }
%struct.TYPE_11__ = type { i64*, i32, i64, i32, i32, i64* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { double, i64, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_13__ = type { i32*, i8*, i8*, %struct.TYPE_12__ }

@pm = common dso_local global %struct.TYPE_14__* null, align 8
@pml = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@qfalse = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"%i:kickoff\0A\00", align 1
@c_pmove = common dso_local global i32 0, align 4
@LEGS_JUMP = common dso_local global i32 0, align 4
@PMF_BACKWARDS_JUMP = common dso_local global i32 0, align 4
@LEGS_JUMPB = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i64 0, align 8
@MIN_WALK_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%i:steep\0A\00", align 1
@qtrue = common dso_local global i8* null, align 8
@PMF_TIME_WATERJUMP = common dso_local global i32 0, align 4
@PMF_TIME_LAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%i:Land\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_GroundTrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_GroundTrace() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca %struct.TYPE_12__, align 8
  %3 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %4 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 5
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64*, i64** %1, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %1, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 5
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 2
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to double
  %29 = fsub double %28, 2.500000e-01
  %30 = fptosi double %29 to i64
  %31 = load i64*, i64** %1, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 6
  %35 = load i32 (%struct.TYPE_12__*, i64*, i32, i32, i64*, i32, i32)*, i32 (%struct.TYPE_12__*, i64*, i32, i32, i64*, i32, i32)** %34, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 5
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i64*, i64** %1, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %35(%struct.TYPE_12__* %2, i64* %40, i32 %43, i32 %46, i64* %47, i32 %52, i32 %55)
  %57 = bitcast %struct.TYPE_12__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_12__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pml, i32 0, i32 3) to i8*), i8* align 8 %57, i64 32, i1 false)
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %0
  %62 = call i32 @PM_CorrectAllSolid(%struct.TYPE_12__* %2)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %232

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = fcmp oeq double %68, 1.000000e+00
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = call i32 (...) @PM_GroundTraceMissed()
  %72 = load i8*, i8** @qfalse, align 8
  store i8* %72, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pml, i32 0, i32 2), align 8
  %73 = load i8*, i8** @qfalse, align 8
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pml, i32 0, i32 1), align 8
  br label %232

74:                                               ; preds = %66
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %137

83:                                               ; preds = %74
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = call i32 @DotProduct(i64* %88, i64* %91)
  %93 = icmp sgt i32 %92, 10
  br i1 %93, label %94, label %137

94:                                               ; preds = %83
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @c_pmove, align 4
  %101 = call i32 @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load i32, i32* @LEGS_JUMP, align 4
  %110 = call i32 @PM_ForceLegsAnim(i32 %109)
  %111 = load i32, i32* @PMF_BACKWARDS_JUMP, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %112
  store i32 %118, i32* %116, align 8
  br label %129

119:                                              ; preds = %102
  %120 = load i32, i32* @LEGS_JUMPB, align 4
  %121 = call i32 @PM_ForceLegsAnim(i32 %120)
  %122 = load i32, i32* @PMF_BACKWARDS_JUMP, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %122
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %119, %108
  %130 = load i64, i64* @ENTITYNUM_NONE, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  store i64 %130, i64* %134, align 8
  %135 = load i8*, i8** @qfalse, align 8
  store i8* %135, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pml, i32 0, i32 2), align 8
  %136 = load i8*, i8** @qfalse, align 8
  store i8* %136, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pml, i32 0, i32 1), align 8
  br label %232

137:                                              ; preds = %83, %74
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MIN_WALK_NORMAL, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %137
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32, i32* @c_pmove, align 4
  %152 = call i32 @Com_Printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %150, %145
  %154 = load i64, i64* @ENTITYNUM_NONE, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  store i64 %154, i64* %158, align 8
  %159 = load i8*, i8** @qtrue, align 8
  store i8* %159, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pml, i32 0, i32 2), align 8
  %160 = load i8*, i8** @qfalse, align 8
  store i8* %160, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pml, i32 0, i32 1), align 8
  br label %232

161:                                              ; preds = %137
  %162 = load i8*, i8** @qtrue, align 8
  store i8* %162, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pml, i32 0, i32 2), align 8
  %163 = load i8*, i8** @qtrue, align 8
  store i8* %163, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pml, i32 0, i32 1), align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @PMF_TIME_WATERJUMP, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %161
  %173 = load i32, i32* @PMF_TIME_WATERJUMP, align 4
  %174 = load i32, i32* @PMF_TIME_LAND, align 4
  %175 = or i32 %173, %174
  %176 = xor i32 %175, -1
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, %176
  store i32 %182, i32* %180, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 3
  store i32 0, i32* %186, align 8
  br label %187

187:                                              ; preds = %172, %161
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @ENTITYNUM_NONE, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %222

195:                                              ; preds = %187
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i32, i32* @c_pmove, align 4
  %202 = call i32 @Com_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %201)
  br label %203

203:                                              ; preds = %200, %195
  %204 = call i32 (...) @PM_CrashLand()
  %205 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pml, i32 0, i32 0), align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %207, -200
  br i1 %208, label %209, label %221

209:                                              ; preds = %203
  %210 = load i32, i32* @PMF_TIME_LAND, align 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %210
  store i32 %216, i32* %214, align 8
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  store i32 250, i32* %220, align 8
  br label %221

221:                                              ; preds = %209, %203
  br label %222

222:                                              ; preds = %221, %187
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pm, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 2
  store i64 %224, i64* %228, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @PM_AddTouchEnt(i64 %230)
  br label %232

232:                                              ; preds = %222, %153, %129, %70, %64
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PM_CorrectAllSolid(%struct.TYPE_12__*) #2

declare dso_local i32 @PM_GroundTraceMissed(...) #2

declare dso_local i32 @DotProduct(i64*, i64*) #2

declare dso_local i32 @Com_Printf(i8*, i32) #2

declare dso_local i32 @PM_ForceLegsAnim(i32) #2

declare dso_local i32 @PM_CrashLand(...) #2

declare dso_local i32 @PM_AddTouchEnt(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
