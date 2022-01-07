; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_index_conflict_to_reuc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_index_conflict_to_reuc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @index_conflict_to_reuc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_conflict_to_reuc(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x %struct.TYPE_5__*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 0
  %15 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 1
  %16 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 2
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @git_index_conflict_get(%struct.TYPE_5__** %14, %struct.TYPE_5__** %15, %struct.TYPE_5__** %16, i32* %17, i8* %18)
  store i32 %19, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %3, align 4
  br label %103

23:                                               ; preds = %2
  %24 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 16
  %26 = icmp eq %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %33

28:                                               ; preds = %23
  %29 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 16
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi i32 [ 0, %27 ], [ %32, %28 ]
  store i32 %34, i32* %7, align 4
  %35 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp eq %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %44

39:                                               ; preds = %33
  %40 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %39, %38
  %45 = phi i32 [ 0, %38 ], [ %43, %39 ]
  store i32 %45, i32* %8, align 4
  %46 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 16
  %48 = icmp eq %struct.TYPE_5__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %55

50:                                               ; preds = %44
  %51 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 16
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %50, %49
  %56 = phi i32 [ 0, %49 ], [ %54, %50 ]
  store i32 %56, i32* %9, align 4
  %57 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 16
  %59 = icmp eq %struct.TYPE_5__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 16
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  br label %65

65:                                               ; preds = %61, %60
  %66 = phi i32* [ null, %60 ], [ %64, %61 ]
  store i32* %66, i32** %10, align 8
  %67 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = icmp eq %struct.TYPE_5__* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %75

71:                                               ; preds = %65
  %72 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  br label %75

75:                                               ; preds = %71, %70
  %76 = phi i32* [ null, %70 ], [ %74, %71 ]
  store i32* %76, i32** %11, align 8
  %77 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 16
  %79 = icmp eq %struct.TYPE_5__* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %85

81:                                               ; preds = %75
  %82 = getelementptr inbounds [3 x %struct.TYPE_5__*], [3 x %struct.TYPE_5__*]* %6, i64 0, i64 2
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 16
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  br label %85

85:                                               ; preds = %81, %80
  %86 = phi i32* [ null, %80 ], [ %84, %81 ]
  store i32* %86, i32** %12, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @git_index_reuc_add(i32* %87, i8* %88, i32 %89, i32* %90, i32 %91, i32* %92, i32 %93, i32* %94)
  store i32 %95, i32* %13, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %85
  %98 = load i32*, i32** %4, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @git_index_conflict_remove(i32* %98, i8* %99)
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %97, %85
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %21
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @git_index_conflict_get(%struct.TYPE_5__**, %struct.TYPE_5__**, %struct.TYPE_5__**, i32*, i8*) #1

declare dso_local i32 @git_index_reuc_add(i32*, i8*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @git_index_conflict_remove(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
