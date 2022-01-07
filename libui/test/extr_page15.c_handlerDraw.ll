; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page15.c_handlerDraw.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page15.c_handlerDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.tareas = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*)* @handlerDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handlerDraw(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.tareas, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @filltareas(i32 %10, i32 %13, %struct.tareas* %7)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @drawtrect(i32 %17, i32 %19, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @drawtrect(i32 %23, i32 %25, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @drawtrect(i32 %29, i32 %31, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @drawtrect(i32 %35, i32 %37, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @drawtrect(i32 %41, i32 %43, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @drawtrect(i32 %47, i32 %49, double 0.000000e+00, double 0.000000e+00, double 5.000000e-01)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @drawtrect(i32 %53, i32 %55, double 0.000000e+00, double 5.000000e-01, double 5.000000e-01)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @drawtrect(i32 %59, i32 %61, double 0.000000e+00, double 5.000000e-01, double 5.000000e-01)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @drawtrect(i32 %65, i32 %67, double 0.000000e+00, double 5.000000e-01, double 5.000000e-01)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @drawtrect(i32 %71, i32 %73, double 0.000000e+00, double 5.000000e-01, double 5.000000e-01)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @drawtrect(i32 %77, i32 %79, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00)
  ret void
}

declare dso_local i32 @filltareas(i32, i32, %struct.tareas*) #1

declare dso_local i32 @drawtrect(i32, i32, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
