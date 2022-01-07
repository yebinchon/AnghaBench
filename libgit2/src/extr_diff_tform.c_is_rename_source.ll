; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_tform.c_is_rename_source.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_tform.c_is_rename_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_REMOVE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG__TO_DELETE = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_COPIES = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_REWRITES = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_RENAMES_FROM_REWRITES = common dso_local global i32 0, align 4
@GIT_DIFF_BREAK_REWRITES = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG__TO_SPLIT = common dso_local global i32 0, align 4
@GIT_DIFF_FLAG__IS_RENAME_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_12__*, i64, i8**)* @is_rename_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_rename_source(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call %struct.TYPE_13__* @GIT_VECTOR_GET(i32* %12, i64 %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %10, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @GIT_MODE_ISBLOB(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %111

22:                                               ; preds = %4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %46 [
    i32 135, label %26
    i32 128, label %26
    i32 129, label %26
    i32 132, label %26
    i32 134, label %26
    i32 133, label %27
    i32 131, label %27
    i32 130, label %28
  ]

26:                                               ; preds = %22, %22, %22, %22, %22
  store i32 0, i32* %5, align 4
  br label %111

27:                                               ; preds = %22, %22
  br label %105

28:                                               ; preds = %22
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = load i32, i32* @GIT_DIFF_FIND_COPIES_FROM_UNMODIFIED, align 4
  %31 = call i32 @FLAG_SET(%struct.TYPE_12__* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %111

34:                                               ; preds = %28
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %36 = load i32, i32* @GIT_DIFF_FIND_REMOVE_UNMODIFIED, align 4
  %37 = call i32 @FLAG_SET(%struct.TYPE_12__* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @GIT_DIFF_FLAG__TO_DELETE, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %34
  br label %105

46:                                               ; preds = %22
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = load i32, i32* @GIT_DIFF_FIND_COPIES, align 4
  %49 = call i32 @FLAG_SET(%struct.TYPE_12__* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %105

52:                                               ; preds = %46
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = load i32, i32* @GIT_DIFF_FIND_REWRITES, align 4
  %55 = call i32 @FLAG_SET(%struct.TYPE_12__* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %59 = load i32, i32* @GIT_DIFF_FIND_RENAMES_FROM_REWRITES, align 4
  %60 = call i32 @FLAG_SET(%struct.TYPE_12__* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %111

63:                                               ; preds = %57, %52
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i8**, i8*** %9, align 8
  %68 = call i32 @calc_self_similarity(%struct.TYPE_14__* %64, %struct.TYPE_12__* %65, i64 %66, i8** %67)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %111

71:                                               ; preds = %63
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = load i32, i32* @GIT_DIFF_BREAK_REWRITES, align 4
  %74 = call i32 @FLAG_SET(%struct.TYPE_12__* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i32, i32* @GIT_DIFF_FLAG__TO_SPLIT, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %105

90:                                               ; preds = %76, %71
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %92 = load i32, i32* @GIT_DIFF_FIND_RENAMES_FROM_REWRITES, align 4
  %93 = call i32 @FLAG_SET(%struct.TYPE_12__* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %105

104:                                              ; preds = %95, %90
  store i32 0, i32* %5, align 4
  br label %111

105:                                              ; preds = %103, %84, %51, %45, %27
  %106 = load i32, i32* @GIT_DIFF_FLAG__IS_RENAME_SOURCE, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  store i32 1, i32* %5, align 4
  br label %111

111:                                              ; preds = %105, %104, %70, %62, %33, %26, %21
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.TYPE_13__* @GIT_VECTOR_GET(i32*, i64) #1

declare dso_local i32 @GIT_MODE_ISBLOB(i32) #1

declare dso_local i32 @FLAG_SET(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @calc_self_similarity(%struct.TYPE_14__*, %struct.TYPE_12__*, i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
