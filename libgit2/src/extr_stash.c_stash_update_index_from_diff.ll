; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_stash_update_index_from_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_stash_update_index_from_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stash_update_rules = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@GIT_FILEMODE_TREE = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cannot update index. Unimplemented status (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.stash_update_rules*)* @stash_update_index_from_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stash_update_index_from_diff(i32* %0, i32* %1, i32* %2, %struct.stash_update_rules* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.stash_update_rules*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.stash_update_rules* %3, %struct.stash_update_rules** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @git_diff_num_deltas(i32* %15)
  store i64 %16, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %17

17:                                               ; preds = %109, %4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ult i64 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %112

26:                                               ; preds = %24
  store i8* null, i8** %13, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call %struct.TYPE_7__* @git_diff_get_delta(i32* %27, i64 %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %14, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %94 [
    i32 130, label %33
    i32 128, label %44
    i32 132, label %62
    i32 129, label %62
    i32 131, label %73
  ]

33:                                               ; preds = %26
  %34 = load %struct.stash_update_rules*, %struct.stash_update_rules** %9, align 8
  %35 = getelementptr inbounds %struct.stash_update_rules, %struct.stash_update_rules* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %13, align 8
  br label %43

43:                                               ; preds = %38, %33
  br label %100

44:                                               ; preds = %26
  %45 = load %struct.stash_update_rules*, %struct.stash_update_rules** %9, align 8
  %46 = getelementptr inbounds %struct.stash_update_rules, %struct.stash_update_rules* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %13, align 8
  br label %61

61:                                               ; preds = %56, %49, %44
  br label %100

62:                                               ; preds = %26, %26
  %63 = load %struct.stash_update_rules*, %struct.stash_update_rules** %9, align 8
  %64 = getelementptr inbounds %struct.stash_update_rules, %struct.stash_update_rules* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %13, align 8
  br label %72

72:                                               ; preds = %67, %62
  br label %100

73:                                               ; preds = %26
  %74 = load %struct.stash_update_rules*, %struct.stash_update_rules** %9, align 8
  %75 = getelementptr inbounds %struct.stash_update_rules, %struct.stash_update_rules* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @git_index_find(i32* null, i32* %79, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %78
  %87 = load i32*, i32** %7, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @git_index_remove(i32* %87, i32 %91, i32 0)
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %86, %78, %73
  br label %100

94:                                               ; preds = %26
  %95 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @git_error_set(i32 %95, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %98)
  store i32 -1, i32* %5, align 4
  br label %114

100:                                              ; preds = %93, %72, %61, %43
  %101 = load i8*, i8** %13, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @stash_to_index(i32* %104, i32* %105, i8* %106)
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %103, %100
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %11, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %11, align 8
  br label %17

112:                                              ; preds = %24
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %94
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local %struct.TYPE_7__* @git_diff_get_delta(i32*, i64) #1

declare dso_local i32 @git_index_find(i32*, i32*, i32) #1

declare dso_local i32 @git_index_remove(i32*, i32, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local i32 @stash_to_index(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
