; ModuleID = '/home/carl/AnghaBench/glfw/examples/extr_boing.c_DrawGrid.c'
source_filename = "/home/carl/AnghaBench/glfw/examples/extr_boing.c_DrawGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GRID_SIZE = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@DIST_BALL = common dso_local global i32 0, align 4
@GL_POLYGON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DrawGrid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 12, i32* %3, align 4
  store i32 12, i32* %4, align 4
  store i32 2, i32* %5, align 4
  %12 = load i32, i32* @GRID_SIZE, align 4
  %13 = sdiv i32 %12, 12
  store i32 %13, i32* %6, align 4
  store i32 -40, i32* %7, align 4
  %14 = call i32 (...) @glPushMatrix()
  %15 = load i32, i32* @GL_CULL_FACE, align 4
  %16 = call i32 @glDisable(i32 %15)
  %17 = load i32, i32* @DIST_BALL, align 4
  %18 = call i32 @glTranslatef(double 0.000000e+00, double 0.000000e+00, i32 %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %54, %0
  %20 = load i32, i32* %2, align 4
  %21 = icmp sle i32 %20, 12
  br i1 %21, label %22, label %57

22:                                               ; preds = %19
  %23 = load i32, i32* @GRID_SIZE, align 4
  %24 = sub nsw i32 0, %23
  %25 = sdiv i32 %24, 2
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @GRID_SIZE, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @GRID_SIZE, align 4
  %35 = sub nsw i32 0, %34
  %36 = sdiv i32 %35, 2
  %37 = sub nsw i32 %36, 2
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* @GL_POLYGON, align 4
  %39 = call i32 @glBegin(i32 %38)
  %40 = call i32 @glColor3f(float 0x3FE3333340000000, float 0x3FB99999A0000000, float 0x3FE3333340000000)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @glVertex3f(i32 %41, i32 %42, i32 -40)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @glVertex3f(i32 %44, i32 %45, i32 -40)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @glVertex3f(i32 %47, i32 %48, i32 -40)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @glVertex3f(i32 %50, i32 %51, i32 -40)
  %53 = call i32 (...) @glEnd()
  br label %54

54:                                               ; preds = %22
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %19

57:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %58

58:                                               ; preds = %92, %57
  %59 = load i32, i32* %1, align 4
  %60 = icmp sle i32 %59, 12
  br i1 %60, label %61, label %95

61:                                               ; preds = %58
  %62 = load i32, i32* @GRID_SIZE, align 4
  %63 = sdiv i32 %62, 2
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sub nsw i32 %63, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, 2
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* @GRID_SIZE, align 4
  %71 = sub nsw i32 0, %70
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @GRID_SIZE, align 4
  %74 = sdiv i32 %73, 2
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* @GL_POLYGON, align 4
  %77 = call i32 @glBegin(i32 %76)
  %78 = call i32 @glColor3f(float 0x3FE3333340000000, float 0x3FB99999A0000000, float 0x3FE3333340000000)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @glVertex3f(i32 %79, i32 %80, i32 -40)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @glVertex3f(i32 %82, i32 %83, i32 -40)
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @glVertex3f(i32 %85, i32 %86, i32 -40)
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @glVertex3f(i32 %88, i32 %89, i32 -40)
  %91 = call i32 (...) @glEnd()
  br label %92

92:                                               ; preds = %61
  %93 = load i32, i32* %1, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %1, align 4
  br label %58

95:                                               ; preds = %58
  %96 = call i32 (...) @glPopMatrix()
  ret void
}

declare dso_local i32 @glPushMatrix(...) #1

declare dso_local i32 @glDisable(i32) #1

declare dso_local i32 @glTranslatef(double, double, i32) #1

declare dso_local i32 @glBegin(i32) #1

declare dso_local i32 @glColor3f(float, float, float) #1

declare dso_local i32 @glVertex3f(i32, i32, i32) #1

declare dso_local i32 @glEnd(...) #1

declare dso_local i32 @glPopMatrix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
