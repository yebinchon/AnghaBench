; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_csg.c_SubtractBrush.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_csg.c_SubtractBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @SubtractBrush(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %50, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i1 [ false, %12 ], [ %20, %18 ]
  br i1 %22, label %23, label %53

23:                                               ; preds = %21
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SplitBrush2(%struct.TYPE_12__* %24, i32 %32, %struct.TYPE_12__** %7, %struct.TYPE_12__** %8)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = icmp ne %struct.TYPE_12__* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = call i32 @FreeBrush(%struct.TYPE_12__* %38)
  br label %40

40:                                               ; preds = %37, %23
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = icmp ne %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %9, align 8
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %10, align 8
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %12

53:                                               ; preds = %21
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = call i32 @FreeBrush(%struct.TYPE_12__* %57)
  br label %63

59:                                               ; preds = %53
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %61 = call i32 @FreeBrushList(%struct.TYPE_12__* %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %3, align 8
  br label %65

63:                                               ; preds = %56
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %3, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %66
}

declare dso_local i32 @SplitBrush2(%struct.TYPE_12__*, i32, %struct.TYPE_12__**, %struct.TYPE_12__**) #1

declare dso_local i32 @FreeBrush(%struct.TYPE_12__*) #1

declare dso_local i32 @FreeBrushList(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
