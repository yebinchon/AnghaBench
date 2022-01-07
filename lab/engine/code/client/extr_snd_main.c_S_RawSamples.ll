; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_snd_main.c_S_RawSamples.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_snd_main.c_S_RawSamples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32, i32, i32, i32*, float, i32)* }

@si = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_RawSamples(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, float %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store float %6, float* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32 (i32, i32, i32, i32, i32, i32*, float, i32)*, i32 (i32, i32, i32, i32, i32, i32*, float, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @si, i32 0, i32 0), align 8
  %18 = icmp ne i32 (i32, i32, i32, i32, i32, i32*, float, i32)* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %8
  %20 = load i32 (i32, i32, i32, i32, i32, i32*, float, i32)*, i32 (i32, i32, i32, i32, i32, i32*, float, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @si, i32 0, i32 0), align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = load float, float* %15, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i32 %20(i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32* %26, float %27, i32 %28)
  br label %30

30:                                               ; preds = %19, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
