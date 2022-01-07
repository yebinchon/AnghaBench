; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoAddVertexCombinationToHashTable.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c_PicoAddVertexCombinationToHashTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @PicoAddVertexCombinationToHashTable(%struct.TYPE_7__** %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %17 = icmp eq %struct.TYPE_7__** %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %6
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %10, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %11, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %12, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %21, %18, %6
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  br label %81

31:                                               ; preds = %27
  %32 = call %struct.TYPE_7__* @_pico_alloc(i32 40)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %15, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  br label %81

36:                                               ; preds = %31
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @PicoVertexCoordGenerateHash(i32* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @_pico_copy_vec(i32* %39, i32 %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @_pico_copy_vec(i32* %45, i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @_pico_copy_vec2(i32* %51, i32 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @_pico_copy_color(i32* %57, i32 %61)
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %69 = load i32, i32* %14, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %68, i64 %70
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %76 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %76, i64 %78
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %7, align 8
  br label %81

81:                                               ; preds = %36, %35, %30
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %82
}

declare dso_local %struct.TYPE_7__* @_pico_alloc(i32) #1

declare dso_local i32 @PicoVertexCoordGenerateHash(i32*) #1

declare dso_local i32 @_pico_copy_vec(i32*, i32) #1

declare dso_local i32 @_pico_copy_vec2(i32*, i32) #1

declare dso_local i32 @_pico_copy_color(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
