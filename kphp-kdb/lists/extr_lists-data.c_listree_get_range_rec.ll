; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_get_range_rec.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_get_range_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }

@NIL = common dso_local global %struct.TYPE_10__* null, align 8
@TF_MINUS = common dso_local global i64 0, align 8
@rpos_to_delta = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32)* @listree_get_range_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listree_get_range_rec(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %123

18:                                               ; preds = %4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @NIL, align 8
  %21 = icmp eq %struct.TYPE_10__* %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = call i32 @in_array(%struct.TYPE_11__* %28, i32 %29)
  br label %23

32:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %123

33:                                               ; preds = %18
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = call i32 @NODE_RPOS(%struct.TYPE_10__* %38)
  %40 = sub nsw i32 %37, %39
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %40, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = call i64 @NODE_TYPE(%struct.TYPE_10__* %48)
  %50 = load i64, i64* @TF_MINUS, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 0, i32 1
  %54 = add nsw i32 %47, %53
  store i32 %54, i32* %12, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** @rpos_to_delta, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = call i64 @NODE_TYPE(%struct.TYPE_10__* %61)
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %59, %64
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %33
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @listree_get_range_rec(%struct.TYPE_10__* %72, %struct.TYPE_11__* %73, i32 %74, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %123

77:                                               ; preds = %33
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %13, align 4
  %91 = sub nsw i32 %89, %90
  %92 = call i32 @listree_get_range_rec(%struct.TYPE_10__* %84, %struct.TYPE_11__* %85, i32 %88, i32 %91)
  store i32 %92, i32* %5, align 4
  br label %123

93:                                               ; preds = %77
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @listree_get_range_rec(%struct.TYPE_10__* %96, %struct.TYPE_11__* %97, i32 %98, i32 %100)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  store i32 -2, i32* %5, align 4
  br label %123

104:                                              ; preds = %93
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = call i32 @in_tree(%struct.TYPE_10__* %109)
  br label %111

111:                                              ; preds = %108, %104
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %13, align 4
  %121 = sub nsw i32 %119, %120
  %122 = call i32 @listree_get_range_rec(%struct.TYPE_10__* %114, %struct.TYPE_11__* %115, i32 %118, i32 %121)
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %111, %103, %81, %69, %32, %17
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @in_array(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @NODE_RPOS(%struct.TYPE_10__*) #1

declare dso_local i64 @NODE_TYPE(%struct.TYPE_10__*) #1

declare dso_local i32 @in_tree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
