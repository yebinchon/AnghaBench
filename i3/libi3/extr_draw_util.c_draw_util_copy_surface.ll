; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_draw_util.c_draw_util_copy_surface.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_draw_util.c_draw_util_copy_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@CAIRO_OPERATOR_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_util_copy_surface(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, double %2, double %3, double %4, double %5, double %6, double %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store double %2, double* %11, align 8
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store double %6, double* %15, align 8
  store double %7, double* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %18 = call i32 @RETURN_UNLESS_SURFACE_INITIALIZED(%struct.TYPE_5__* %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %20 = call i32 @RETURN_UNLESS_SURFACE_INITIALIZED(%struct.TYPE_5__* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cairo_save(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CAIRO_OPERATOR_SOURCE, align 4
  %29 = call i32 @cairo_set_operator(i32 %27, i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load double, double* %13, align 8
  %37 = load double, double* %11, align 8
  %38 = fsub double %36, %37
  %39 = load double, double* %14, align 8
  %40 = load double, double* %12, align 8
  %41 = fsub double %39, %40
  %42 = call i32 @cairo_set_source_surface(i32 %32, i32 %35, double %38, double %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load double, double* %13, align 8
  %47 = load double, double* %14, align 8
  %48 = load double, double* %15, align 8
  %49 = load double, double* %16, align 8
  %50 = call i32 @cairo_rectangle(i32 %45, double %46, double %47, double %48, double %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cairo_fill(i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @CAIRO_SURFACE_FLUSH(i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CAIRO_SURFACE_FLUSH(i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cairo_restore(i32 %65)
  ret void
}

declare dso_local i32 @RETURN_UNLESS_SURFACE_INITIALIZED(%struct.TYPE_5__*) #1

declare dso_local i32 @cairo_save(i32) #1

declare dso_local i32 @cairo_set_operator(i32, i32) #1

declare dso_local i32 @cairo_set_source_surface(i32, i32, double, double) #1

declare dso_local i32 @cairo_rectangle(i32, double, double, double, double) #1

declare dso_local i32 @cairo_fill(i32) #1

declare dso_local i32 @CAIRO_SURFACE_FLUSH(i32) #1

declare dso_local i32 @cairo_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
