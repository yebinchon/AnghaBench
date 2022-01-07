; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_tree_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*, i8*, %struct.TYPE_12__*, i32, i32)* @tree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @tree_insert(%struct.TYPE_11__* %0, i8* %1, %struct.TYPE_12__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call %struct.TYPE_11__* @new_tree_node(i32 %16, i32 %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 4
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %6, align 8
  br label %97

26:                                               ; preds = %5
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ult i8* %33, %36
  br i1 %37, label %54, label %38

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp eq i8* %39, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %47, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %44, %32
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.TYPE_11__* @tree_insert(%struct.TYPE_11__* %57, i8* %58, %struct.TYPE_12__* %59, i32 %60, i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 3
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %64, align 8
  br label %76

65:                                               ; preds = %44, %38
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call %struct.TYPE_11__* @tree_insert(%struct.TYPE_11__* %68, i8* %69, %struct.TYPE_12__* %70, i32 %71, i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %75, align 8
  br label %76

76:                                               ; preds = %65, %54
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %6, align 8
  br label %97

78:                                               ; preds = %26
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.TYPE_11__* @new_tree_node(i32 %79, i32 %80)
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %12, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 4
  store %struct.TYPE_12__* %85, %struct.TYPE_12__** %87, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %95 = call i32 @tree_split(%struct.TYPE_11__** %89, %struct.TYPE_11__** %91, %struct.TYPE_11__* %92, i8* %93, %struct.TYPE_12__* %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %96, %struct.TYPE_11__** %6, align 8
  br label %97

97:                                               ; preds = %78, %76, %15
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  ret %struct.TYPE_11__* %98
}

declare dso_local %struct.TYPE_11__* @new_tree_node(i32, i32) #1

declare dso_local i32 @tree_split(%struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_11__*, i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
