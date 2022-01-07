; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_INDEXWRITER_INIT = common dso_local global i32 0, align 4
@GIT_ERROR_MERGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can only merge a single branch\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge(i32* %0, i32** %1, i64 %2, i32* %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %21 = load i32, i32* @GIT_INDEXWRITER_INIT, align 4
  store i32 %21, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32**, i32*** %8, align 8
  %26 = icmp ne i32** %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %9, align 8
  %29 = icmp ugt i64 %28, 0
  br label %30

30:                                               ; preds = %27, %24, %5
  %31 = phi i1 [ false, %24 ], [ false, %5 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @GIT_ERROR_MERGE, align 4
  %38 = call i32 @git_error_set(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %139

39:                                               ; preds = %30
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @git_repository__ensure_not_bare(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %20, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %120

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %50, %47 ], [ %52, %51 ]
  store i32 %54, i32* %19, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @git_indexwriter_init_for_operation(i32* %18, i32* %55, i32* %19)
  store i32 %56, i32* %20, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %120

59:                                               ; preds = %53
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @git_repository_index(i32** %16, i32* %60)
  %62 = icmp slt i64 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %20, align 4
  br i1 %62, label %69, label %64

64:                                               ; preds = %59
  %65 = load i32*, i32** %16, align 8
  %66 = call i64 @git_index_read(i32* %65, i32 0)
  %67 = icmp slt i64 %66, 0
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %20, align 4
  br i1 %67, label %69, label %70

69:                                               ; preds = %64, %59
  br label %120

70:                                               ; preds = %64
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @git_annotated_commit_from_head(i32** %14, i32* %71)
  store i32 %72, i32* %20, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i32**, i32*** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @git_merge__setup(i32* %75, i32* %76, i32** %77, i64 %78)
  store i32 %79, i32* %20, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74, %70
  br label %120

82:                                               ; preds = %74
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = load i32**, i32*** %8, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @merge_annotated_commits(i32** %17, i32** %15, i32* %83, i32* %84, i32* %87, i32 0, i32* %88)
  store i32 %89, i32* %20, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %82
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @git_merge__check_result(i32* %92, i32* %93)
  store i32 %94, i32* %20, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = call i32 @git_merge__append_conflicts_to_merge_msg(i32* %97, i32* %98)
  store i32 %99, i32* %20, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96, %91, %82
  br label %120

102:                                              ; preds = %96
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %105 = load i32, i32* %19, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = load i32**, i32*** %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @merge_normalize_checkout_opts(%struct.TYPE_6__* %13, i32* %103, %struct.TYPE_6__* %104, i32 %105, i32* %106, i32* %107, i32** %108, i64 %109)
  store i32 %110, i32* %20, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %102
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = call i32 @git_checkout_index(i32* %113, i32* %114, %struct.TYPE_6__* %13)
  store i32 %115, i32* %20, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %102
  br label %120

118:                                              ; preds = %112
  %119 = call i32 @git_indexwriter_commit(i32* %18)
  store i32 %119, i32* %20, align 4
  br label %120

120:                                              ; preds = %118, %117, %101, %81, %69, %58, %43
  %121 = load i32, i32* %20, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @merge_state_cleanup(i32* %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = call i32 @git_indexwriter_cleanup(i32* %18)
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @git_index_free(i32* %128)
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @git_annotated_commit_free(i32* %130)
  %132 = load i32*, i32** %15, align 8
  %133 = call i32 @git_annotated_commit_free(i32* %132)
  %134 = load i32*, i32** %12, align 8
  %135 = call i32 @git_reference_free(i32* %134)
  %136 = load i32*, i32** %16, align 8
  %137 = call i32 @git_index_free(i32* %136)
  %138 = load i32, i32* %20, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %126, %36
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_repository__ensure_not_bare(i32*, i8*) #1

declare dso_local i32 @git_indexwriter_init_for_operation(i32*, i32*, i32*) #1

declare dso_local i64 @git_repository_index(i32**, i32*) #1

declare dso_local i64 @git_index_read(i32*, i32) #1

declare dso_local i32 @git_annotated_commit_from_head(i32**, i32*) #1

declare dso_local i32 @git_merge__setup(i32*, i32*, i32**, i64) #1

declare dso_local i32 @merge_annotated_commits(i32**, i32**, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @git_merge__check_result(i32*, i32*) #1

declare dso_local i32 @git_merge__append_conflicts_to_merge_msg(i32*, i32*) #1

declare dso_local i32 @merge_normalize_checkout_opts(%struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32, i32*, i32*, i32**, i64) #1

declare dso_local i32 @git_checkout_index(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @git_indexwriter_commit(i32*) #1

declare dso_local i32 @merge_state_cleanup(i32*) #1

declare dso_local i32 @git_indexwriter_cleanup(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
