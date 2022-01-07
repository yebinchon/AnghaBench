; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_LightningBolt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_LightningBolt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { float*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { double }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { float*, i32*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { i32*, double }
%struct.TYPE_20__ = type { i32*, i32*, i32, i32, i32, i32 }

@WP_LIGHTNING = common dso_local global i64 0, align 8
@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@cg_trueLightning = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@LEGS_WALKCR = common dso_local global i32 0, align 4
@LEGS_IDLECR = common dso_local global i32 0, align 4
@CROUCH_VIEWHEIGHT = common dso_local global i64 0, align 8
@DEFAULT_VIEWHEIGHT = common dso_local global i64 0, align 8
@LIGHTNING_RANGE = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@RT_LIGHTNING = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32*)* @CG_LightningBolt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_LightningBolt(%struct.TYPE_21__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WP_LIGHTNING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %236

23:                                               ; preds = %2
  %24 = call i32 @memset(%struct.TYPE_20__* %6, i32 0, i32 32)
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1, i32 0), align 8
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %121

31:                                               ; preds = %23
  %32 = load double, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_trueLightning, i32 0, i32 0), align 8
  %33 = fcmp une double %32, 0.000000e+00
  br i1 %33, label %34, label %121

34:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %109, %34
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %112

38:                                               ; preds = %35
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load float*, float** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = load float*, float** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fsub float %45, %50
  store float %51, float* %13, align 4
  %52 = load float, float* %13, align 4
  %53 = fcmp ogt float %52, 1.800000e+02
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load float, float* %13, align 4
  %56 = fsub float %55, 3.600000e+02
  store float %56, float* %13, align 4
  br label %57

57:                                               ; preds = %54, %38
  %58 = load float, float* %13, align 4
  %59 = fcmp olt float %58, -1.800000e+02
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load float, float* %13, align 4
  %62 = fadd float %61, 3.600000e+02
  store float %62, float* %13, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load float*, float** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = fpext float %68 to double
  %70 = load float, float* %13, align 4
  %71 = fpext float %70 to double
  %72 = load double, double* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_trueLightning, i32 0, i32 0), align 8
  %73 = fsub double 1.000000e+00, %72
  %74 = fmul double %71, %73
  %75 = fadd double %69, %74
  %76 = fptosi double %75 to i32
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %63
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 360
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %87, %63
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 360
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 360
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %101, %94
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %35

112:                                              ; preds = %35
  %113 = load i32*, i32** %11, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @AngleVectors(i32* %113, i32* %114, i32* null, i32* null)
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @VectorCopy(i32* %118, i32* %119)
  br label %133

121:                                              ; preds = %31, %23
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load float*, float** %123, align 8
  %125 = bitcast float* %124 to i32*
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 @AngleVectors(i32* %125, i32* %126, i32* null, i32* null)
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = call i32 @VectorCopy(i32* %130, i32* %131)
  br label %133

133:                                              ; preds = %121, %112
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %137, %139
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @LEGS_WALKCR, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %133
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @LEGS_IDLECR, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %144, %133
  %149 = load i64, i64* @CROUCH_VIEWHEIGHT, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %149
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 4
  br label %164

156:                                              ; preds = %144
  %157 = load i64, i64* @DEFAULT_VIEWHEIGHT, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %157
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 4
  br label %164

164:                                              ; preds = %156, %148
  %165 = load i32*, i32** %8, align 8
  %166 = load i32*, i32** %7, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 @VectorMA(i32* %165, i32 14, i32* %166, i32* %167)
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* @LIGHTNING_RANGE, align 4
  %171 = load i32*, i32** %7, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 @VectorMA(i32* %169, i32 %170, i32* %171, i32* %172)
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* @vec3_origin, align 4
  %176 = load i32, i32* @vec3_origin, align 4
  %177 = load i32*, i32** %9, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @MASK_SHOT, align 4
  %183 = call i32 @CG_Trace(%struct.TYPE_19__* %5, i32* %174, i32 %175, i32 %176, i32* %177, i32 %181, i32 %182)
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @VectorCopy(i32* %185, i32* %187)
  %189 = load i32*, i32** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @VectorCopy(i32* %189, i32* %191)
  %193 = load i32, i32* @RT_LIGHTNING, align 4
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 5
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cgs, i32 0, i32 0, i32 1), align 4
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 4
  store i32 %195, i32* %196, align 8
  %197 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_20__* %6)
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %199 = load double, double* %198, align 8
  %200 = fcmp olt double %199, 1.000000e+00
  br i1 %200, label %201, label %236

201:                                              ; preds = %164
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32*, i32** %15, align 8
  %207 = call i32 @VectorSubtract(i32* %203, i32* %205, i32* %206)
  %208 = load i32*, i32** %15, align 8
  %209 = call i32 @VectorNormalize(i32* %208)
  %210 = call i32 @memset(%struct.TYPE_20__* %6, i32 0, i32 32)
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cgs, i32 0, i32 0, i32 0), align 4
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  store i32 %211, i32* %212, align 4
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32*, i32** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = call i32 @VectorMA(i32* %214, i32 -16, i32* %215, i32* %217)
  %219 = call i32 (...) @rand()
  %220 = srem i32 %219, 360
  %221 = load i32*, i32** %14, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32 %220, i32* %222, align 4
  %223 = call i32 (...) @rand()
  %224 = srem i32 %223, 360
  %225 = load i32*, i32** %14, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  store i32 %224, i32* %226, align 4
  %227 = call i32 (...) @rand()
  %228 = srem i32 %227, 360
  %229 = load i32*, i32** %14, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 2
  store i32 %228, i32* %230, align 4
  %231 = load i32*, i32** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @AnglesToAxis(i32* %231, i32 %233)
  %235 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_20__* %6)
  br label %236

236:                                              ; preds = %22, %201, %164
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @AngleVectors(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

declare dso_local i32 @CG_Trace(%struct.TYPE_19__*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_20__*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @AnglesToAxis(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
