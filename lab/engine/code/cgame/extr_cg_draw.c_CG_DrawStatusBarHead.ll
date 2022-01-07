; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawStatusBarHead.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_draw.c_CG_DrawStatusBarHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { float, float, float, i32, i32, i32, i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@cg_animateStatusBarHead = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@DAMAGE_TIME = common dso_local global float 0.000000e+00, align 4
@ICON_SIZE = common dso_local global double 0.000000e+00, align 8
@M_PI = common dso_local global i32 0, align 4
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float)* @CG_DrawStatusBarHead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawStatusBarHead(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %2, align 4
  %7 = load float*, float** %3, align 8
  %8 = call i32 @VectorClear(float* %7)
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_animateStatusBarHead, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %157

11:                                               ; preds = %1
  %12 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %13 = fcmp une float %12, 0.000000e+00
  br i1 %13, label %14, label %77

14:                                               ; preds = %11
  %15 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %16 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %17 = fsub float %15, %16
  %18 = load float, float* @DAMAGE_TIME, align 4
  %19 = fcmp olt float %17, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %14
  %21 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %22 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %23 = fsub float %21, %22
  %24 = load float, float* @DAMAGE_TIME, align 4
  %25 = fdiv float %23, %24
  store float %25, float* %6, align 4
  %26 = load double, double* @ICON_SIZE, align 8
  %27 = fmul double %26, 1.250000e+00
  %28 = load float, float* %6, align 4
  %29 = fpext float %28 to double
  %30 = fmul double %29, 5.000000e-01
  %31 = fsub double 1.500000e+00, %30
  %32 = fmul double %27, %31
  %33 = fptrunc double %32 to float
  store float %33, float* %4, align 4
  %34 = load float, float* %4, align 4
  %35 = fpext float %34 to double
  %36 = load double, double* @ICON_SIZE, align 8
  %37 = fmul double %36, 1.250000e+00
  %38 = fsub double %35, %37
  %39 = fptrunc double %38 to float
  store float %39, float* %5, align 4
  %40 = load float, float* %5, align 4
  %41 = fpext float %40 to double
  %42 = fmul double %41, 5.000000e-01
  %43 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 2), align 8
  %44 = load float, float* %5, align 4
  %45 = fmul float %43, %44
  %46 = fpext float %45 to double
  %47 = fmul double %46, 5.000000e-01
  %48 = fadd double %42, %47
  %49 = load float, float* %2, align 4
  %50 = fpext float %49 to double
  %51 = fsub double %50, %48
  %52 = fptrunc double %51 to float
  store float %52, float* %2, align 4
  %53 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 2), align 8
  %54 = fmul float %53, 4.500000e+01
  %55 = fadd float 1.800000e+02, %54
  %56 = fptosi float %55 to i32
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 3), align 4
  %57 = call i32 (...) @crandom()
  %58 = load i32, i32* @M_PI, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i32 @cos(i32 %59)
  %61 = mul nsw i32 20, %60
  %62 = add nsw i32 180, %61
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 4), align 8
  %63 = call i32 (...) @crandom()
  %64 = load i32, i32* @M_PI, align 4
  %65 = mul nsw i32 %63, %64
  %66 = call i32 @cos(i32 %65)
  %67 = mul nsw i32 5, %66
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 5), align 4
  %68 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %69 = fptosi float %68 to i64
  store i64 %69, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 6), align 8
  %70 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %71 = fadd float %70, 1.000000e+02
  %72 = call i32 (...) @random()
  %73 = mul nsw i32 %72, 2000
  %74 = sitofp i32 %73 to float
  %75 = fadd float %71, %74
  %76 = fptosi float %75 to i64
  store i64 %76, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 7), align 8
  br label %108

77:                                               ; preds = %14, %11
  %78 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 7), align 8
  %80 = sitofp i64 %79 to float
  %81 = fcmp oge float %78, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %77
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 4), align 8
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 3), align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 5), align 4
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 8), align 8
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 7), align 8
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 6), align 8
  %86 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %87 = fadd float %86, 1.000000e+02
  %88 = call i32 (...) @random()
  %89 = mul nsw i32 %88, 2000
  %90 = sitofp i32 %89 to float
  %91 = fadd float %87, %90
  %92 = fptosi float %91 to i64
  store i64 %92, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 7), align 8
  %93 = call i32 (...) @crandom()
  %94 = load i32, i32* @M_PI, align 4
  %95 = mul nsw i32 %93, %94
  %96 = call i32 @cos(i32 %95)
  %97 = mul nsw i32 20, %96
  %98 = add nsw i32 180, %97
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 4), align 8
  %99 = call i32 (...) @crandom()
  %100 = load i32, i32* @M_PI, align 4
  %101 = mul nsw i32 %99, %100
  %102 = call i32 @cos(i32 %101)
  %103 = mul nsw i32 5, %102
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 5), align 4
  br label %104

104:                                              ; preds = %82, %77
  %105 = load double, double* @ICON_SIZE, align 8
  %106 = fmul double %105, 1.250000e+00
  %107 = fptrunc double %106 to float
  store float %107, float* %4, align 4
  br label %108

108:                                              ; preds = %104, %20
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 6), align 8
  %110 = sitofp i64 %109 to float
  %111 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %112 = fcmp ogt float %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %115 = fptosi float %114 to i64
  store i64 %115, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 6), align 8
  br label %116

116:                                              ; preds = %113, %108
  %117 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 6), align 8
  %119 = sitofp i64 %118 to float
  %120 = fsub float %117, %119
  %121 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 7), align 8
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 6), align 8
  %123 = sub nsw i64 %121, %122
  %124 = sitofp i64 %123 to float
  %125 = fdiv float %120, %124
  store float %125, float* %6, align 4
  %126 = load float, float* %6, align 4
  %127 = load float, float* %6, align 4
  %128 = fmul float %126, %127
  %129 = load float, float* %6, align 4
  %130 = fmul float 2.000000e+00, %129
  %131 = fsub float 3.000000e+00, %130
  %132 = fmul float %128, %131
  store float %132, float* %6, align 4
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 3), align 4
  %134 = sitofp i32 %133 to float
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 4), align 8
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 3), align 4
  %137 = sub nsw i32 %135, %136
  %138 = sitofp i32 %137 to float
  %139 = load float, float* %6, align 4
  %140 = fmul float %138, %139
  %141 = fadd float %134, %140
  %142 = load float*, float** %3, align 8
  %143 = load i64, i64* @YAW, align 8
  %144 = getelementptr inbounds float, float* %142, i64 %143
  store float %141, float* %144, align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 8), align 8
  %146 = sitofp i32 %145 to float
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 5), align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 8), align 8
  %149 = sub nsw i32 %147, %148
  %150 = sitofp i32 %149 to float
  %151 = load float, float* %6, align 4
  %152 = fmul float %150, %151
  %153 = fadd float %146, %152
  %154 = load float*, float** %3, align 8
  %155 = load i64, i64* @PITCH, align 8
  %156 = getelementptr inbounds float, float* %154, i64 %155
  store float %153, float* %156, align 4
  br label %167

157:                                              ; preds = %1
  %158 = load float*, float** %3, align 8
  %159 = load i64, i64* @YAW, align 8
  %160 = getelementptr inbounds float, float* %158, i64 %159
  store float 1.800000e+02, float* %160, align 4
  %161 = load float*, float** %3, align 8
  %162 = load i64, i64* @PITCH, align 8
  %163 = getelementptr inbounds float, float* %161, i64 %162
  store float 5.000000e+00, float* %163, align 4
  %164 = load double, double* @ICON_SIZE, align 8
  %165 = fmul double %164, 1.250000e+00
  %166 = fptrunc double %165 to float
  store float %166, float* %4, align 4
  br label %167

167:                                              ; preds = %157, %116
  %168 = load float, float* %2, align 4
  %169 = load float, float* %4, align 4
  %170 = fsub float 4.800000e+02, %169
  %171 = fptosi float %170 to i32
  %172 = load float, float* %4, align 4
  %173 = load float, float* %4, align 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 9), align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load float*, float** %3, align 8
  %179 = call i32 @CG_DrawHead(float %168, i32 %171, float %172, float %173, i32 %177, float* %178)
  ret void
}

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @cos(i32) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @CG_DrawHead(float, i32, float, float, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
