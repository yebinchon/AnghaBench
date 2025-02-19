; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_WeaponJumpZVelocity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_WeaponJumpZVelocity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@aassettings = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @AAS_WeaponJumpZVelocity(i32* %0, float %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_4__, align 8
  %20 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %3, align 8
  store float %1, float* %4, align 4
  store i32* inttoptr (i64 8 to i32*), i32** %16, align 8
  store i32* inttoptr (i64 -16 to i32*), i32** %17, align 8
  store i32* inttoptr (i64 16 to i32*), i32** %18, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i64, i64* @PITCH, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32 90, i32* %23, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i64, i64* @YAW, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load i64, i64* @ROLL, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @VectorCopy(i32* %30, i32* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 8
  store i32 %36, i32* %34, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @AngleVectors(i32* %37, i32* %38, i32* %39, i32* null)
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %16, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = add nsw i32 %47, %54
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %16, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = add nsw i32 %66, %73
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %16, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %16, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = add nsw i32 %85, %92
  %94 = load i32*, i32** %16, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = load i32*, i32** %7, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @VectorMA(i32* %102, double 5.000000e+02, i32* %103, i32* %104)
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* @CONTENTS_SOLID, align 4
  %109 = call i32* @AAS_Trace(i32* %106, i32* null, i32* null, i32* %107, i32 1, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32* %109, i32** %110, align 8
  %111 = bitcast %struct.TYPE_4__* %19 to i8*
  %112 = bitcast %struct.TYPE_4__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 8, i1 false)
  %113 = load i32*, i32** %17, align 8
  %114 = load i32*, i32** %18, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @VectorAdd(i32* %113, i32* %114, i32* %115)
  %117 = load i32*, i32** %3, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @VectorMA(i32* %117, double 5.000000e-01, i32* %118, i32* %119)
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @VectorSubtract(i32* %122, i32* %123, i32* %124)
  %126 = load float, float* %4, align 4
  %127 = fpext float %126 to double
  %128 = load i32*, i32** %6, align 8
  %129 = call double @VectorLength(i32* %128)
  %130 = fmul double 5.000000e-01, %129
  %131 = fsub double %127, %130
  %132 = fptrunc double %131 to float
  store float %132, float* %15, align 4
  %133 = load float, float* %15, align 4
  %134 = fcmp olt float %133, 0.000000e+00
  br i1 %134, label %135, label %136

135:                                              ; preds = %2
  store float 0.000000e+00, float* %15, align 4
  br label %136

136:                                              ; preds = %135, %2
  %137 = load float, float* %15, align 4
  %138 = fpext float %137 to double
  %139 = fmul double %138, 5.000000e-01
  %140 = fptrunc double %139 to float
  store float %140, float* %15, align 4
  store float 2.000000e+02, float* %13, align 4
  %141 = load float, float* %15, align 4
  store float %141, float* %14, align 4
  %142 = load i32*, i32** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = call i32 @VectorSubtract(i32* %142, i32* %144, i32* %145)
  %147 = load i32*, i32** %12, align 8
  %148 = call i32 @VectorNormalize(i32* %147)
  %149 = load i32*, i32** %12, align 8
  %150 = load float, float* %14, align 4
  %151 = fpext float %150 to double
  %152 = fmul double 1.600000e+03, %151
  %153 = load float, float* %13, align 4
  %154 = fpext float %153 to double
  %155 = fdiv double %152, %154
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @VectorScale(i32* %149, double %155, i32* %156)
  %158 = load i32*, i32** %5, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @aassettings, i32 0, i32 0), align 4
  %162 = add nsw i32 %160, %161
  %163 = sitofp i32 %162 to float
  ret float %163
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AngleVectors(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, double, i32*, i32*) #1

declare dso_local i32* @AAS_Trace(i32*, i32*, i32*, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local double @VectorLength(i32*) #1

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local i32 @VectorScale(i32*, double, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
