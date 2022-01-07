; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_csg.c_IntersectBrush.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_csg.c_IntersectBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @IntersectBrush(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %9, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %47, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i1 [ false, %11 ], [ %19, %17 ]
  br i1 %21, label %22, label %50

22:                                               ; preds = %20
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @SplitBrush2(%struct.TYPE_11__* %23, i32 %31, %struct.TYPE_11__** %7, %struct.TYPE_11__** %8)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = icmp ne %struct.TYPE_11__* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = call i32 @FreeBrush(%struct.TYPE_11__* %37)
  br label %39

39:                                               ; preds = %36, %22
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = call i32 @FreeBrush(%struct.TYPE_11__* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %9, align 8
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %11

50:                                               ; preds = %20
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = icmp eq %struct.TYPE_11__* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %59

55:                                               ; preds = %50
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %3, align 8
  br label %59

59:                                               ; preds = %55, %54
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %60
}

declare dso_local i32 @SplitBrush2(%struct.TYPE_11__*, i32, %struct.TYPE_11__**, %struct.TYPE_11__**) #1

declare dso_local i32 @FreeBrush(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
