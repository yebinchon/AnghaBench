; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_brush.c_BrushMostlyOnSide.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_brush.c_BrushMostlyOnSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i64, i32 }

@PSIDE_FRONT = common dso_local global i32 0, align 4
@PSIDE_BACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BrushMostlyOnSide(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* @PSIDE_FRONT, align 4
  store i32 %11, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %73, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %12
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %73

30:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %69, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @DotProduct(i32 %44, i32 %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %37
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %9, align 8
  %58 = load i32, i32* @PSIDE_FRONT, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %37
  %60 = load i64, i64* %8, align 8
  %61 = sub nsw i64 0, %60
  %62 = load i64, i64* %9, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i64, i64* %8, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %9, align 8
  %67 = load i32, i32* @PSIDE_BACK, align 4
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %31

72:                                               ; preds = %31
  br label %73

73:                                               ; preds = %72, %29
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %12

76:                                               ; preds = %12
  %77 = load i32, i32* %10, align 4
  ret i32 %77
}

declare dso_local i64 @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
