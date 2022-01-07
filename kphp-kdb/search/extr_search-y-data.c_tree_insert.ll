; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_tree_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*, i8*, %struct.TYPE_12__*, i32, i32*)* @tree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @tree_insert(%struct.TYPE_11__* %0, i8* %1, %struct.TYPE_12__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = call %struct.TYPE_11__* @new_tree_node(i32 %16)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %23, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %6, align 8
  br label %101

28:                                               ; preds = %5
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ult i8* %35, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %34
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %41, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %49, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %46, %34
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = call %struct.TYPE_11__* @tree_insert(%struct.TYPE_11__* %59, i8* %60, %struct.TYPE_12__* %61, i32 %62, i32* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 4
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %66, align 8
  br label %78

67:                                               ; preds = %46, %40
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = call %struct.TYPE_11__* @tree_insert(%struct.TYPE_11__* %70, i8* %71, %struct.TYPE_12__* %72, i32 %73, i32* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %77, align 8
  br label %78

78:                                               ; preds = %67, %56
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %6, align 8
  br label %101

80:                                               ; preds = %28
  %81 = load i32, i32* %10, align 4
  %82 = call %struct.TYPE_11__* @new_tree_node(i32 %81)
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %12, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 5
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %88, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = call i32 @tree_split(%struct.TYPE_11__** %93, %struct.TYPE_11__** %95, %struct.TYPE_11__* %96, i8* %97, %struct.TYPE_12__* %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %6, align 8
  br label %101

101:                                              ; preds = %80, %78, %15
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  ret %struct.TYPE_11__* %102
}

declare dso_local %struct.TYPE_11__* @new_tree_node(i32) #1

declare dso_local i32 @tree_split(%struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_11__*, i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
