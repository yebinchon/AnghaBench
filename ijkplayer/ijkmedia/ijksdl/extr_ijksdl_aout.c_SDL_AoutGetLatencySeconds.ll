; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_aout.c_SDL_AoutGetLatencySeconds.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/extr_ijksdl_aout.c_SDL_AoutGetLatencySeconds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { {}*, double }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @SDL_AoutGetLatencySeconds(%struct.TYPE_4__* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = icmp ne %struct.TYPE_4__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %24

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to double (%struct.TYPE_4__*)**
  %11 = load double (%struct.TYPE_4__*)*, double (%struct.TYPE_4__*)** %10, align 8
  %12 = icmp ne double (%struct.TYPE_4__*)* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to double (%struct.TYPE_4__*)**
  %17 = load double (%struct.TYPE_4__*)*, double (%struct.TYPE_4__*)** %16, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = call double %17(%struct.TYPE_4__* %18)
  store double %19, double* %2, align 8
  br label %24

20:                                               ; preds = %7
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load double, double* %22, align 8
  store double %23, double* %2, align 8
  br label %24

24:                                               ; preds = %20, %13, %6
  %25 = load double, double* %2, align 8
  ret double %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
