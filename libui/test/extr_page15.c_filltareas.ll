; ModuleID = '/home/carl/AnghaBench/libui/test/extr_page15.c_filltareas.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_page15.c_filltareas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tareas = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, %struct.tareas*)* @filltareas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filltareas(double %0, double %1, %struct.tareas* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.tareas*, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store %struct.tareas* %2, %struct.tareas** %6, align 8
  %7 = load %struct.tareas*, %struct.tareas** %6, align 8
  %8 = getelementptr inbounds %struct.tareas, %struct.tareas* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 4
  %10 = load double, double* %4, align 8
  %11 = fsub double %10, 2.000000e+01
  %12 = fptosi double %11 to i32
  %13 = call i32 @tsetrect(i32 %9, i32 20, i32 20, i32 %12, i32 50)
  %14 = load %struct.tareas*, %struct.tareas** %6, align 8
  %15 = getelementptr inbounds %struct.tareas, %struct.tareas* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @tsetrect(i32 %16, i32 30, i32 200, i32 100, i32 270)
  %18 = load %struct.tareas*, %struct.tareas** %6, align 8
  %19 = getelementptr inbounds %struct.tareas, %struct.tareas* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = load double, double* %5, align 8
  %22 = fsub double %21, 2.000000e+01
  %23 = fptosi double %22 to i32
  %24 = call i32 @tsetrect(i32 %20, i32 5, i32 20, i32 15, i32 %23)
  %25 = load %struct.tareas*, %struct.tareas** %6, align 8
  %26 = getelementptr inbounds %struct.tareas, %struct.tareas* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load double, double* %4, align 8
  %29 = fsub double %28, 2.000000e+01
  %30 = fptosi double %29 to i32
  %31 = call i32 @tsetrect(i32 %27, i32 20, i32 5, i32 %30, i32 15)
  %32 = load %struct.tareas*, %struct.tareas** %6, align 8
  %33 = getelementptr inbounds %struct.tareas, %struct.tareas* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load double, double* %4, align 8
  %36 = fsub double %35, 1.500000e+01
  %37 = fptosi double %36 to i32
  %38 = load double, double* %4, align 8
  %39 = fsub double %38, 5.000000e+00
  %40 = fptosi double %39 to i32
  %41 = load double, double* %5, align 8
  %42 = fsub double %41, 2.000000e+01
  %43 = fptosi double %42 to i32
  %44 = call i32 @tsetrect(i32 %34, i32 %37, i32 20, i32 %40, i32 %43)
  %45 = load %struct.tareas*, %struct.tareas** %6, align 8
  %46 = getelementptr inbounds %struct.tareas, %struct.tareas* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load double, double* %5, align 8
  %49 = fsub double %48, 1.500000e+01
  %50 = fptosi double %49 to i32
  %51 = load double, double* %4, align 8
  %52 = fsub double %51, 2.000000e+01
  %53 = fptosi double %52 to i32
  %54 = load double, double* %5, align 8
  %55 = fsub double %54, 5.000000e+00
  %56 = fptosi double %55 to i32
  %57 = call i32 @tsetrect(i32 %47, i32 20, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.tareas*, %struct.tareas** %6, align 8
  %59 = getelementptr inbounds %struct.tareas, %struct.tareas* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @tsetrect(i32 %60, i32 5, i32 5, i32 15, i32 15)
  %62 = load %struct.tareas*, %struct.tareas** %6, align 8
  %63 = getelementptr inbounds %struct.tareas, %struct.tareas* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load double, double* %4, align 8
  %66 = fsub double %65, 1.500000e+01
  %67 = fptosi double %66 to i32
  %68 = load double, double* %4, align 8
  %69 = fsub double %68, 5.000000e+00
  %70 = fptosi double %69 to i32
  %71 = call i32 @tsetrect(i32 %64, i32 %67, i32 5, i32 %70, i32 15)
  %72 = load %struct.tareas*, %struct.tareas** %6, align 8
  %73 = getelementptr inbounds %struct.tareas, %struct.tareas* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load double, double* %5, align 8
  %76 = fsub double %75, 1.500000e+01
  %77 = fptosi double %76 to i32
  %78 = load double, double* %5, align 8
  %79 = fsub double %78, 5.000000e+00
  %80 = fptosi double %79 to i32
  %81 = call i32 @tsetrect(i32 %74, i32 5, i32 %77, i32 15, i32 %80)
  %82 = load %struct.tareas*, %struct.tareas** %6, align 8
  %83 = getelementptr inbounds %struct.tareas, %struct.tareas* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load double, double* %4, align 8
  %86 = fsub double %85, 1.500000e+01
  %87 = fptosi double %86 to i32
  %88 = load double, double* %5, align 8
  %89 = fsub double %88, 1.500000e+01
  %90 = fptosi double %89 to i32
  %91 = load double, double* %4, align 8
  %92 = fsub double %91, 5.000000e+00
  %93 = fptosi double %92 to i32
  %94 = load double, double* %5, align 8
  %95 = fsub double %94, 5.000000e+00
  %96 = fptosi double %95 to i32
  %97 = call i32 @tsetrect(i32 %84, i32 %87, i32 %90, i32 %93, i32 %96)
  %98 = load %struct.tareas*, %struct.tareas** %6, align 8
  %99 = getelementptr inbounds %struct.tareas, %struct.tareas* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @tsetrect(i32 %100, i32 130, i32 200, i32 200, i32 270)
  ret void
}

declare dso_local i32 @tsetrect(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
