; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_getreg.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_12__*, i32*, i32)* @getreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @getreg(%struct.TYPE_12__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call %struct.TYPE_12__* @askreg(%struct.TYPE_12__* %8, i32* %9)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %47

13:                                               ; preds = %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.TYPE_12__* @spillee(%struct.TYPE_12__* %14, i32* %15, i32 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %7, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br label %26

26:                                               ; preds = %20, %13
  %27 = phi i1 [ false, %13 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @spill(i32 %35, i32 %41, i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call %struct.TYPE_12__* @askreg(%struct.TYPE_12__* %44, i32* %45)
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %7, align 8
  br label %47

47:                                               ; preds = %26, %3
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br label %56

56:                                               ; preds = %50, %47
  %57 = phi i1 [ false, %47 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  ret %struct.TYPE_12__* %65
}

declare dso_local %struct.TYPE_12__* @askreg(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.TYPE_12__* @spillee(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @spill(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
