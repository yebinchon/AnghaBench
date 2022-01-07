; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ea.c_EA_Move.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ea.c_EA_Move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, i32 }

@botinputs = common dso_local global %struct.TYPE_3__* null, align 8
@MAX_USERMOVE = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EA_Move(i32 %0, i32 %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @botinputs, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %10
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @VectorCopy(i32 %12, i32 %15)
  %17 = load float, float* %6, align 4
  %18 = load float, float* @MAX_USERMOVE, align 4
  %19 = fcmp ogt float %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load float, float* @MAX_USERMOVE, align 4
  store float %21, float* %6, align 4
  br label %31

22:                                               ; preds = %3
  %23 = load float, float* %6, align 4
  %24 = load float, float* @MAX_USERMOVE, align 4
  %25 = fneg float %24
  %26 = fcmp olt float %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load float, float* @MAX_USERMOVE, align 4
  %29 = fneg float %28
  store float %29, float* %6, align 4
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30, %20
  %32 = load float, float* %6, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store float %32, float* %34, align 4
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
