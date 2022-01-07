; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_ListBox_ThumbDrawPosition.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_ListBox_ThumbDrawPosition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@itemCapture = common dso_local global %struct.TYPE_10__* null, align 8
@WINDOW_HORIZONTAL = common dso_local global i32 0, align 4
@SCROLLBAR_SIZE = common dso_local global i32 0, align 4
@DC = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Item_ListBox_ThumbDrawPosition(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** @itemCapture, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = icmp eq %struct.TYPE_10__* %6, %7
  br i1 %8, label %9, label %119

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WINDOW_HORIZONTAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %9
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %24 = add nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %30, %35
  %37 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %38 = mul nsw i32 2, %37
  %39 = sub nsw i32 %36, %38
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %46 = sdiv i32 %45, 2
  %47 = add nsw i32 %44, %46
  %48 = icmp sge i32 %43, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %17
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %55 = sdiv i32 %54, 2
  %56 = add nsw i32 %53, %55
  %57 = icmp sle i32 %52, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %63 = sdiv i32 %62, 2
  %64 = sub nsw i32 %61, %63
  store i32 %64, i32* %2, align 4
  br label %122

65:                                               ; preds = %49, %17
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = call i32 @Item_ListBox_ThumbPosition(%struct.TYPE_10__* %66)
  store i32 %67, i32* %2, align 4
  br label %122

68:                                               ; preds = %9
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %81, %86
  %88 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %89 = mul nsw i32 2, %88
  %90 = sub nsw i32 %87, %89
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %97 = sdiv i32 %96, 2
  %98 = add nsw i32 %95, %97
  %99 = icmp sge i32 %94, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %68
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %106 = sdiv i32 %105, 2
  %107 = add nsw i32 %104, %106
  %108 = icmp sle i32 %103, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SCROLLBAR_SIZE, align 4
  %114 = sdiv i32 %113, 2
  %115 = sub nsw i32 %112, %114
  store i32 %115, i32* %2, align 4
  br label %122

116:                                              ; preds = %100, %68
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = call i32 @Item_ListBox_ThumbPosition(%struct.TYPE_10__* %117)
  store i32 %118, i32* %2, align 4
  br label %122

119:                                              ; preds = %1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = call i32 @Item_ListBox_ThumbPosition(%struct.TYPE_10__* %120)
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %119, %116, %109, %65, %58
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @Item_ListBox_ThumbPosition(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
