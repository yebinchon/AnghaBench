; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_splitview.c_drawTorus.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_splitview.c_drawTorus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@drawTorus.torus_list = internal global i64 0, align 8
@GL_COMPILE_AND_EXECUTE = common dso_local global i32 0, align 4
@M_PI = common dso_local global double 0.000000e+00, align 8
@TORUS_MINOR_RES = common dso_local global i32 0, align 4
@GL_QUAD_STRIP = common dso_local global i32 0, align 4
@TORUS_MAJOR_RES = common dso_local global i32 0, align 4
@TORUS_MAJOR = common dso_local global double 0.000000e+00, align 8
@TORUS_MINOR = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @drawTorus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drawTorus() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = load i64, i64* @drawTorus.torus_list, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %170, label %16

16:                                               ; preds = %0
  %17 = call i64 @glGenLists(i32 1)
  store i64 %17, i64* @drawTorus.torus_list, align 8
  %18 = load i64, i64* @drawTorus.torus_list, align 8
  %19 = load i32, i32* @GL_COMPILE_AND_EXECUTE, align 4
  %20 = call i32 @glNewList(i64 %18, i32 %19)
  %21 = load double, double* @M_PI, align 8
  %22 = fmul double 2.000000e+00, %21
  store double %22, double* %13, align 8
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %165, %16
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @TORUS_MINOR_RES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %168

27:                                               ; preds = %23
  %28 = load i32, i32* @GL_QUAD_STRIP, align 4
  %29 = call i32 @glBegin(i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %160, %27
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @TORUS_MAJOR_RES, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %163

34:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %156, %34
  %36 = load i32, i32* %3, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %159

38:                                               ; preds = %35
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* @TORUS_MINOR_RES, align 4
  %43 = srem i32 %41, %42
  %44 = sitofp i32 %43 to double
  %45 = fadd double %44, 5.000000e-01
  store double %45, double* %4, align 8
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @TORUS_MAJOR_RES, align 4
  %48 = srem i32 %46, %47
  %49 = sitofp i32 %48 to double
  store double %49, double* %5, align 8
  %50 = load double, double* @TORUS_MAJOR, align 8
  %51 = load double, double* @TORUS_MINOR, align 8
  %52 = load double, double* %4, align 8
  %53 = load double, double* %13, align 8
  %54 = fmul double %52, %53
  %55 = load i32, i32* @TORUS_MINOR_RES, align 4
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %54, %56
  %58 = call double @cos(double %57) #3
  %59 = fmul double %51, %58
  %60 = fadd double %50, %59
  %61 = load double, double* %5, align 8
  %62 = load double, double* %13, align 8
  %63 = fmul double %61, %62
  %64 = load i32, i32* @TORUS_MAJOR_RES, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %63, %65
  %67 = call double @cos(double %66) #3
  %68 = fmul double %60, %67
  store double %68, double* %6, align 8
  %69 = load double, double* @TORUS_MINOR, align 8
  %70 = load double, double* %4, align 8
  %71 = load double, double* %13, align 8
  %72 = fmul double %70, %71
  %73 = load i32, i32* @TORUS_MINOR_RES, align 4
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %72, %74
  %76 = call double @sin(double %75) #3
  %77 = fmul double %69, %76
  store double %77, double* %7, align 8
  %78 = load double, double* @TORUS_MAJOR, align 8
  %79 = load double, double* @TORUS_MINOR, align 8
  %80 = load double, double* %4, align 8
  %81 = load double, double* %13, align 8
  %82 = fmul double %80, %81
  %83 = load i32, i32* @TORUS_MINOR_RES, align 4
  %84 = sitofp i32 %83 to double
  %85 = fdiv double %82, %84
  %86 = call double @cos(double %85) #3
  %87 = fmul double %79, %86
  %88 = fadd double %78, %87
  %89 = load double, double* %5, align 8
  %90 = load double, double* %13, align 8
  %91 = fmul double %89, %90
  %92 = load i32, i32* @TORUS_MAJOR_RES, align 4
  %93 = sitofp i32 %92 to double
  %94 = fdiv double %91, %93
  %95 = call double @sin(double %94) #3
  %96 = fmul double %88, %95
  store double %96, double* %8, align 8
  %97 = load double, double* %6, align 8
  %98 = load double, double* @TORUS_MAJOR, align 8
  %99 = load double, double* %5, align 8
  %100 = load double, double* %13, align 8
  %101 = fmul double %99, %100
  %102 = load i32, i32* @TORUS_MAJOR_RES, align 4
  %103 = sitofp i32 %102 to double
  %104 = fdiv double %101, %103
  %105 = call double @cos(double %104) #3
  %106 = fmul double %98, %105
  %107 = fsub double %97, %106
  store double %107, double* %9, align 8
  %108 = load double, double* %7, align 8
  store double %108, double* %10, align 8
  %109 = load double, double* %8, align 8
  %110 = load double, double* @TORUS_MAJOR, align 8
  %111 = load double, double* %5, align 8
  %112 = load double, double* %13, align 8
  %113 = fmul double %111, %112
  %114 = load i32, i32* @TORUS_MAJOR_RES, align 4
  %115 = sitofp i32 %114 to double
  %116 = fdiv double %113, %115
  %117 = call double @sin(double %116) #3
  %118 = fmul double %110, %117
  %119 = fsub double %109, %118
  store double %119, double* %11, align 8
  %120 = load double, double* %9, align 8
  %121 = load double, double* %9, align 8
  %122 = fmul double %120, %121
  %123 = load double, double* %10, align 8
  %124 = load double, double* %10, align 8
  %125 = fmul double %123, %124
  %126 = fadd double %122, %125
  %127 = load double, double* %11, align 8
  %128 = load double, double* %11, align 8
  %129 = fmul double %127, %128
  %130 = fadd double %126, %129
  %131 = call double @sqrt(double %130) #3
  %132 = fdiv double 1.000000e+00, %131
  store double %132, double* %12, align 8
  %133 = load double, double* %12, align 8
  %134 = load double, double* %9, align 8
  %135 = fmul double %134, %133
  store double %135, double* %9, align 8
  %136 = load double, double* %12, align 8
  %137 = load double, double* %10, align 8
  %138 = fmul double %137, %136
  store double %138, double* %10, align 8
  %139 = load double, double* %12, align 8
  %140 = load double, double* %11, align 8
  %141 = fmul double %140, %139
  store double %141, double* %11, align 8
  %142 = load double, double* %9, align 8
  %143 = fptrunc double %142 to float
  %144 = load double, double* %10, align 8
  %145 = fptrunc double %144 to float
  %146 = load double, double* %11, align 8
  %147 = fptrunc double %146 to float
  %148 = call i32 @glNormal3f(float %143, float %145, float %147)
  %149 = load double, double* %6, align 8
  %150 = fptrunc double %149 to float
  %151 = load double, double* %7, align 8
  %152 = fptrunc double %151 to float
  %153 = load double, double* %8, align 8
  %154 = fptrunc double %153 to float
  %155 = call i32 @glVertex3f(float %150, float %152, float %154)
  br label %156

156:                                              ; preds = %38
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %3, align 4
  br label %35

159:                                              ; preds = %35
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %2, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %2, align 4
  br label %30

163:                                              ; preds = %30
  %164 = call i32 (...) @glEnd()
  br label %165

165:                                              ; preds = %163
  %166 = load i32, i32* %1, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %1, align 4
  br label %23

168:                                              ; preds = %23
  %169 = call i32 (...) @glEndList()
  br label %173

170:                                              ; preds = %0
  %171 = load i64, i64* @drawTorus.torus_list, align 8
  %172 = call i32 @glCallList(i64 %171)
  br label %173

173:                                              ; preds = %170, %168
  ret void
}

declare dso_local i64 @glGenLists(i32) #1

declare dso_local i32 @glNewList(i64, i32) #1

declare dso_local i32 @glBegin(i32) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @glNormal3f(float, float, float) #1

declare dso_local i32 @glVertex3f(float, float, float) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glEndList(...) #1

declare dso_local i32 @glCallList(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
