; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_particles.c_draw_fountain.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_particles.c_draw_fountain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@draw_fountain.fountain_list = internal global i64 0, align 8
@GL_COMPILE_AND_EXECUTE = common dso_local global i32 0, align 4
@GL_FRONT = common dso_local global i32 0, align 4
@GL_DIFFUSE = common dso_local global i32 0, align 4
@fountain_diffuse = common dso_local global i32 0, align 4
@GL_SPECULAR = common dso_local global i32 0, align 4
@fountain_specular = common dso_local global i32 0, align 4
@GL_SHININESS = common dso_local global i32 0, align 4
@fountain_shininess = common dso_local global i32 0, align 4
@FOUNTAIN_SIDE_POINTS = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@FOUNTAIN_SWEEP_STEPS = common dso_local global i32 0, align 4
@M_PI = common dso_local global double 0.000000e+00, align 8
@fountain_normal = common dso_local global float* null, align 8
@fountain_side = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw_fountain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_fountain() #0 {
  %1 = alloca double, align 8
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @draw_fountain.fountain_list, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %162, label %8

8:                                                ; preds = %0
  %9 = call i64 @glGenLists(i32 1)
  store i64 %9, i64* @draw_fountain.fountain_list, align 8
  %10 = load i64, i64* @draw_fountain.fountain_list, align 8
  %11 = load i32, i32* @GL_COMPILE_AND_EXECUTE, align 4
  %12 = call i32 @glNewList(i64 %10, i32 %11)
  %13 = load i32, i32* @GL_FRONT, align 4
  %14 = load i32, i32* @GL_DIFFUSE, align 4
  %15 = load i32, i32* @fountain_diffuse, align 4
  %16 = call i32 @glMaterialfv(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* @GL_FRONT, align 4
  %18 = load i32, i32* @GL_SPECULAR, align 4
  %19 = load i32, i32* @fountain_specular, align 4
  %20 = call i32 @glMaterialfv(i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @GL_FRONT, align 4
  %22 = load i32, i32* @GL_SHININESS, align 4
  %23 = load i32, i32* @fountain_shininess, align 4
  %24 = call i32 @glMaterialf(i32 %21, i32 %22, i32 %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %157, %8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @FOUNTAIN_SIDE_POINTS, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %160

30:                                               ; preds = %25
  %31 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %32 = call i32 @glBegin(i32 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %152, %30
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @FOUNTAIN_SWEEP_STEPS, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %155

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = sitofp i32 %38 to double
  %40 = load double, double* @M_PI, align 8
  %41 = fmul double 2.000000e+00, %40
  %42 = load i32, i32* @FOUNTAIN_SWEEP_STEPS, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %41, %43
  %45 = fmul double %39, %44
  store double %45, double* %1, align 8
  %46 = load double, double* %1, align 8
  %47 = call i64 @cos(double %46)
  %48 = sitofp i64 %47 to float
  store float %48, float* %2, align 4
  %49 = load double, double* %1, align 8
  %50 = call i64 @sin(double %49)
  %51 = sitofp i64 %50 to float
  store float %51, float* %3, align 4
  %52 = load float, float* %2, align 4
  %53 = load float*, float** @fountain_normal, align 8
  %54 = load i32, i32* %5, align 4
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %53, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fmul float %52, %59
  %61 = load float, float* %3, align 4
  %62 = load float*, float** @fountain_normal, align 8
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 %63, 2
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %62, i64 %66
  %68 = load float, float* %67, align 4
  %69 = fmul float %61, %68
  %70 = load float*, float** @fountain_normal, align 8
  %71 = load i32, i32* %5, align 4
  %72 = mul nsw i32 %71, 2
  %73 = add nsw i32 %72, 3
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %70, i64 %74
  %76 = load float, float* %75, align 4
  %77 = call i32 @glNormal3f(float %60, float %69, float %76)
  %78 = load float, float* %2, align 4
  %79 = load float*, float** @fountain_side, align 8
  %80 = load i32, i32* %5, align 4
  %81 = mul nsw i32 %80, 2
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %79, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fmul float %78, %85
  %87 = load float, float* %3, align 4
  %88 = load float*, float** @fountain_side, align 8
  %89 = load i32, i32* %5, align 4
  %90 = mul nsw i32 %89, 2
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %88, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fmul float %87, %94
  %96 = load float*, float** @fountain_side, align 8
  %97 = load i32, i32* %5, align 4
  %98 = mul nsw i32 %97, 2
  %99 = add nsw i32 %98, 3
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %96, i64 %100
  %102 = load float, float* %101, align 4
  %103 = call i32 @glVertex3f(float %86, float %95, float %102)
  %104 = load float, float* %2, align 4
  %105 = load float*, float** @fountain_normal, align 8
  %106 = load i32, i32* %5, align 4
  %107 = mul nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %105, i64 %108
  %110 = load float, float* %109, align 4
  %111 = fmul float %104, %110
  %112 = load float, float* %3, align 4
  %113 = load float*, float** @fountain_normal, align 8
  %114 = load i32, i32* %5, align 4
  %115 = mul nsw i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %113, i64 %116
  %118 = load float, float* %117, align 4
  %119 = fmul float %112, %118
  %120 = load float*, float** @fountain_normal, align 8
  %121 = load i32, i32* %5, align 4
  %122 = mul nsw i32 %121, 2
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %120, i64 %124
  %126 = load float, float* %125, align 4
  %127 = call i32 @glNormal3f(float %111, float %119, float %126)
  %128 = load float, float* %2, align 4
  %129 = load float*, float** @fountain_side, align 8
  %130 = load i32, i32* %5, align 4
  %131 = mul nsw i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %129, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fmul float %128, %134
  %136 = load float, float* %3, align 4
  %137 = load float*, float** @fountain_side, align 8
  %138 = load i32, i32* %5, align 4
  %139 = mul nsw i32 %138, 2
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %137, i64 %140
  %142 = load float, float* %141, align 4
  %143 = fmul float %136, %142
  %144 = load float*, float** @fountain_side, align 8
  %145 = load i32, i32* %5, align 4
  %146 = mul nsw i32 %145, 2
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %144, i64 %148
  %150 = load float, float* %149, align 4
  %151 = call i32 @glVertex3f(float %135, float %143, float %150)
  br label %152

152:                                              ; preds = %37
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %33

155:                                              ; preds = %33
  %156 = call i32 (...) @glEnd()
  br label %157

157:                                              ; preds = %155
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %5, align 4
  br label %25

160:                                              ; preds = %25
  %161 = call i32 (...) @glEndList()
  br label %165

162:                                              ; preds = %0
  %163 = load i64, i64* @draw_fountain.fountain_list, align 8
  %164 = call i32 @glCallList(i64 %163)
  br label %165

165:                                              ; preds = %162, %160
  ret void
}

declare dso_local i64 @glGenLists(i32) #1

declare dso_local i32 @glNewList(i64, i32) #1

declare dso_local i32 @glMaterialfv(i32, i32, i32) #1

declare dso_local i32 @glMaterialf(i32, i32, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i64 @cos(double) #1

declare dso_local i64 @sin(double) #1

declare dso_local i32 @glNormal3f(float, float, float) #1

declare dso_local i32 @glVertex3f(float, float, float) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glEndList(...) #1

declare dso_local i32 @glCallList(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
