; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_GrappleMove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_pmove.c_PM_GrappleMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@pml = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@pm = common dso_local global %struct.TYPE_6__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PM_GrappleMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PM_GrappleMove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pml, i32 0, i32 1), align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @VectorScale(i32 %4, i32 -16, i32 %5)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @VectorAdd(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @VectorSubtract(i32 %15, i32 %20, i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = call float @VectorLength(i32 %23)
  store float %24, float* %3, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @VectorNormalize(i32 %25)
  %27 = load float, float* %3, align 4
  %28 = fcmp ole float %27, 1.000000e+02
  br i1 %28, label %29, label %36

29:                                               ; preds = %0
  %30 = load i32, i32* %1, align 4
  %31 = load float, float* %3, align 4
  %32 = fmul float 1.000000e+01, %31
  %33 = fptosi float %32 to i32
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @VectorScale(i32 %30, i32 %33, i32 %34)
  br label %40

36:                                               ; preds = %0
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @VectorScale(i32 %37, i32 800, i32 %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i32, i32* %1, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pm, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @VectorCopy(i32 %41, i32 %46)
  %48 = load i32, i32* @qfalse, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @pml, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @VectorScale(i32, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorLength(i32) #1

declare dso_local i32 @VectorNormalize(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
