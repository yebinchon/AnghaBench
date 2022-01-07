; ModuleID = '/home/carl/AnghaBench/htop/extr_MetersPanel.c_moveToNeighbor.c'
source_filename = "/home/carl/AnghaBench/htop/extr_MetersPanel.c_moveToNeighbor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_5__*, i32)* @moveToNeighbor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moveToNeighbor(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = bitcast %struct.TYPE_5__* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %58

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @Vector_size(i32 %23)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = call i32 @MetersPanel_setMoving(%struct.TYPE_5__* %27, i32 0)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @Vector_take(i32 %31, i32 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @Panel_remove(i32* %35, i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @Vector_insert(i32 %40, i32 %41, i32* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @Meter_toListItem(i32* %47, i32 0)
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @Panel_insert(i32* %45, i32 %46, i32* %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @Panel_setSelected(i32* %52, i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = call i32 @MetersPanel_setMoving(%struct.TYPE_5__* %55, i32 1)
  store i32 1, i32* %4, align 4
  br label %60

57:                                               ; preds = %19
  br label %58

58:                                               ; preds = %57, %16
  br label %59

59:                                               ; preds = %58, %3
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %26
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @Vector_size(i32) #1

declare dso_local i32 @MetersPanel_setMoving(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @Vector_take(i32, i32) #1

declare dso_local i32 @Panel_remove(i32*, i32) #1

declare dso_local i32 @Vector_insert(i32, i32, i32*) #1

declare dso_local i32 @Panel_insert(i32*, i32, i32*) #1

declare dso_local i64 @Meter_toListItem(i32*, i32) #1

declare dso_local i32 @Panel_setSelected(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
