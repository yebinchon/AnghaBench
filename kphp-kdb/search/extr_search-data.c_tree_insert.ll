; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_tree_insert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*, i8*, %struct.TYPE_12__*, i32)* @tree_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @tree_insert(%struct.TYPE_11__* %0, i8* %1, %struct.TYPE_12__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.TYPE_11__* @new_tree_node(i32 %14)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 4
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %5, align 8
  br label %91

23:                                               ; preds = %4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ult i8* %30, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %36, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %44, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %41, %29
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call %struct.TYPE_11__* @tree_insert(%struct.TYPE_11__* %54, i8* %55, %struct.TYPE_12__* %56, i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %60, align 8
  br label %71

61:                                               ; preds = %41, %35
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call %struct.TYPE_11__* @tree_insert(%struct.TYPE_11__* %64, i8* %65, %struct.TYPE_12__* %66, i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  store %struct.TYPE_11__* %68, %struct.TYPE_11__** %70, align 8
  br label %71

71:                                               ; preds = %61, %51
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %5, align 8
  br label %91

73:                                               ; preds = %23
  %74 = load i32, i32* %9, align 4
  %75 = call %struct.TYPE_11__* @new_tree_node(i32 %74)
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %10, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 4
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = call i32 @tree_split(%struct.TYPE_11__** %83, %struct.TYPE_11__** %85, %struct.TYPE_11__* %86, i8* %87, %struct.TYPE_12__* %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %90, %struct.TYPE_11__** %5, align 8
  br label %91

91:                                               ; preds = %73, %71, %13
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %92
}

declare dso_local %struct.TYPE_11__* @new_tree_node(i32) #1

declare dso_local i32 @tree_split(%struct.TYPE_11__**, %struct.TYPE_11__**, %struct.TYPE_11__*, i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
