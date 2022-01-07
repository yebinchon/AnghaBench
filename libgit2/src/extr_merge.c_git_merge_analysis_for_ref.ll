; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge_analysis_for_ref.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_git_merge_analysis_for_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_MERGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can only merge a single branch\00", align 1
@GIT_MERGE_ANALYSIS_NONE = common dso_local global i32 0, align 4
@GIT_MERGE_ANALYSIS_FASTFORWARD = common dso_local global i32 0, align 4
@GIT_MERGE_ANALYSIS_UNBORN = common dso_local global i32 0, align 4
@GIT_MERGE_ANALYSIS_UP_TO_DATE = common dso_local global i32 0, align 4
@GIT_MERGE_ANALYSIS_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_merge_analysis_for_ref(i32* %0, i32* %1, i32* %2, i32* %3, i32** %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i64 %5, i64* %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %6
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32**, i32*** %11, align 8
  %27 = icmp ne i32** %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  %30 = icmp ugt i64 %29, 0
  br label %31

31:                                               ; preds = %28, %25, %22, %19, %6
  %32 = phi i1 [ false, %25 ], [ false, %22 ], [ false, %19 ], [ false, %6 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @GIT_ERROR_MERGE, align 4
  %39 = call i32 @git_error_set(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %15, align 4
  br label %113

40:                                               ; preds = %31
  %41 = load i32, i32* @GIT_MERGE_ANALYSIS_NONE, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @merge_preference(i32* %43, i32* %44)
  store i32 %45, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %113

48:                                               ; preds = %40
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @git_reference__is_unborn_head(i32* %16, i32* %49, i32* %50)
  store i32 %51, i32* %15, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %113

54:                                               ; preds = %48
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* @GIT_MERGE_ANALYSIS_FASTFORWARD, align 4
  %59 = load i32, i32* @GIT_MERGE_ANALYSIS_UNBORN, align 4
  %60 = or i32 %58, %59
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  store i32 0, i32* %15, align 4
  br label %113

64:                                               ; preds = %54
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32**, i32*** %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @merge_heads(i32** %13, i32** %14, i32* %65, i32* %66, i32** %67, i64 %68)
  store i32 %69, i32* %15, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %113

72:                                               ; preds = %64
  %73 = load i32*, i32** %13, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @git_annotated_commit_id(i32* %76)
  %78 = load i32**, i32*** %11, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @git_annotated_commit_id(i32* %80)
  %82 = call i64 @git_oid_equal(i32 %77, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i32, i32* @GIT_MERGE_ANALYSIS_UP_TO_DATE, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 4
  br label %112

89:                                               ; preds = %75, %72
  %90 = load i32*, i32** %13, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load i32*, i32** %13, align 8
  %94 = call i32 @git_annotated_commit_id(i32* %93)
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @git_annotated_commit_id(i32* %95)
  %97 = call i64 @git_oid_equal(i32 %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i32, i32* @GIT_MERGE_ANALYSIS_FASTFORWARD, align 4
  %101 = load i32, i32* @GIT_MERGE_ANALYSIS_NORMAL, align 4
  %102 = or i32 %100, %101
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 4
  br label %111

106:                                              ; preds = %92, %89
  %107 = load i32, i32* @GIT_MERGE_ANALYSIS_NORMAL, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %99
  br label %112

112:                                              ; preds = %111, %84
  br label %113

113:                                              ; preds = %112, %71, %57, %53, %47, %37
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @git_annotated_commit_free(i32* %114)
  %116 = load i32*, i32** %14, align 8
  %117 = call i32 @git_annotated_commit_free(i32* %116)
  %118 = load i32, i32* %15, align 4
  ret i32 %118
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @merge_preference(i32*, i32*) #1

declare dso_local i32 @git_reference__is_unborn_head(i32*, i32*, i32*) #1

declare dso_local i32 @merge_heads(i32**, i32**, i32*, i32*, i32**, i64) #1

declare dso_local i64 @git_oid_equal(i32, i32) #1

declare dso_local i32 @git_annotated_commit_id(i32*) #1

declare dso_local i32 @git_annotated_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
