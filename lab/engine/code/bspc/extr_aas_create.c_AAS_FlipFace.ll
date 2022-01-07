; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_create.c_AAS_FlipFace.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_aas_create.c_AAS_FlipFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_FlipFace(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %1
  br label %44

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @ReverseWinding(i32* %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @FreeWinding(i32* %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = xor i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @AAS_RemoveFaceFromArea(%struct.TYPE_5__* %32, i32* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @AAS_RemoveFaceFromArea(%struct.TYPE_5__* %35, i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_5__* %38, i32 1, i32* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @AAS_AddFaceSideToArea(%struct.TYPE_5__* %41, i32 0, i32* %42)
  br label %44

44:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32* @ReverseWinding(i32*) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local i32 @AAS_RemoveFaceFromArea(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @AAS_AddFaceSideToArea(%struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
