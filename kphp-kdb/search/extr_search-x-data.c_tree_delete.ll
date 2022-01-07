; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_tree_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_tree_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, i64, %struct.TYPE_10__*)* @tree_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @tree_delete(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__** %8, %struct.TYPE_9__*** %9, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %12, align 8
  br label %17

17:                                               ; preds = %67, %3
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %24, %29
  br label %31

31:                                               ; preds = %23, %17
  %32 = phi i1 [ true, %17 ], [ %30, %23 ]
  br i1 %32, label %33, label %68

33:                                               ; preds = %31
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %53, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %46, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45, %33
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  br label %59

56:                                               ; preds = %45, %39
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi %struct.TYPE_9__** [ %55, %53 ], [ %58, %56 ]
  store %struct.TYPE_9__** %60, %struct.TYPE_9__*** %9, align 8
  %61 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %5, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = icmp ne %struct.TYPE_9__* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %4, align 8
  br label %119

67:                                               ; preds = %59
  br label %17

68:                                               ; preds = %31
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %10, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  store %struct.TYPE_9__* %74, %struct.TYPE_9__** %11, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = call i32 @free_tree_node(%struct.TYPE_9__* %75)
  br label %77

77:                                               ; preds = %107, %68
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %82 = icmp ne %struct.TYPE_9__* %81, null
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i1 [ false, %77 ], [ %82, %80 ]
  br i1 %84, label %85, label %108

85:                                               ; preds = %83
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  store %struct.TYPE_9__** %97, %struct.TYPE_9__*** %9, align 8
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %10, align 8
  br label %107

100:                                              ; preds = %85
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %102 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  store %struct.TYPE_9__** %104, %struct.TYPE_9__*** %9, align 8
  %105 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  store %struct.TYPE_9__* %106, %struct.TYPE_9__** %11, align 8
  br label %107

107:                                              ; preds = %100, %93
  br label %77

108:                                              ; preds = %83
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %110 = icmp ne %struct.TYPE_9__* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  br label %115

113:                                              ; preds = %108
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi %struct.TYPE_9__* [ %112, %111 ], [ %114, %113 ]
  %117 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %4, align 8
  br label %119

119:                                              ; preds = %115, %65
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %120
}

declare dso_local i32 @free_tree_node(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
