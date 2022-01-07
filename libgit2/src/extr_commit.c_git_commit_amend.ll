; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_amend.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_amend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"commit to amend is not the tip of the given branch\00", align 1
@commit_parent_for_amend = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"commit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_commit_amend(i32* %0, i32* %1, i8* %2, i32* %3, i32* %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br label %28

28:                                               ; preds = %25, %8
  %29 = phi i1 [ false, %8 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %11, align 8
  %33 = call i32* @git_commit_owner(i32* %32)
  store i32* %33, i32** %18, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32*, i32** %11, align 8
  %38 = call i32* @git_commit_author(i32* %37)
  store i32* %38, i32** %13, align 8
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i32*, i32** %14, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @git_commit_committer(i32* %43)
  store i32* %44, i32** %14, align 8
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i8*, i8** %15, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %11, align 8
  %50 = call i8* @git_commit_message_encoding(i32* %49)
  store i8* %50, i8** %15, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i8*, i8** %16, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %11, align 8
  %56 = call i8* @git_commit_message(i32* %55)
  store i8* %56, i8** %16, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32*, i32** %17, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %57
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @git_commit_tree(i32** %22, i32* %61)
  %63 = call i32 @GIT_ERROR_CHECK_ERROR(i32 %62)
  %64 = load i32*, i32** %22, align 8
  %65 = call i32 @git_tree_id(i32* %64)
  %66 = call i32 @git_oid_cpy(i32* %19, i32 %65)
  %67 = load i32*, i32** %22, align 8
  %68 = call i32 @git_tree_free(i32* %67)
  br label %79

69:                                               ; preds = %57
  %70 = load i32*, i32** %17, align 8
  %71 = call i32* @git_tree_owner(i32* %70)
  %72 = load i32*, i32** %18, align 8
  %73 = icmp eq i32* %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @git_tree_id(i32* %76)
  %78 = call i32 @git_oid_cpy(i32* %19, i32 %77)
  br label %79

79:                                               ; preds = %69, %60
  %80 = load i8*, i8** %12, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load i32*, i32** %18, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @git_reference_lookup_resolved(i32** %20, i32* %83, i8* %84, i32 5)
  store i32 %85, i32* %21, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %21, align 4
  store i32 %88, i32* %9, align 4
  br label %127

89:                                               ; preds = %82
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @git_commit_id(i32* %90)
  %92 = load i32*, i32** %20, align 8
  %93 = call i32 @git_reference_target(i32* %92)
  %94 = call i64 @git_oid_cmp(i32 %91, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32*, i32** %20, align 8
  %98 = call i32 @git_reference_free(i32* %97)
  %99 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %100 = call i32 @git_error_set(i32 %99, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %127

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %79
  %103 = load i32*, i32** %10, align 8
  %104 = load i32*, i32** %18, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = load i32, i32* @commit_parent_for_amend, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = bitcast i32* %110 to i8*
  %112 = call i32 @git_commit__create_internal(i32* %103, i32* %104, i32* null, i32* %105, i32* %106, i8* %107, i8* %108, i32* %19, i32 %109, i8* %111, i32 0)
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %21, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %102
  %116 = load i8*, i8** %12, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i32*, i32** %18, align 8
  %120 = load i32*, i32** %20, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @git_reference__update_for_commit(i32* %119, i32* %120, i32* null, i32* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %122, i32* %21, align 4
  %123 = load i32*, i32** %20, align 8
  %124 = call i32 @git_reference_free(i32* %123)
  br label %125

125:                                              ; preds = %118, %115, %102
  %126 = load i32, i32* %21, align 4
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %125, %96, %87
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @git_commit_owner(i32*) #1

declare dso_local i32* @git_commit_author(i32*) #1

declare dso_local i32* @git_commit_committer(i32*) #1

declare dso_local i8* @git_commit_message_encoding(i32*) #1

declare dso_local i8* @git_commit_message(i32*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ERROR(i32) #1

declare dso_local i32 @git_commit_tree(i32**, i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_tree_id(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32* @git_tree_owner(i32*) #1

declare dso_local i32 @git_reference_lookup_resolved(i32**, i32*, i8*, i32) #1

declare dso_local i64 @git_oid_cmp(i32, i32) #1

declare dso_local i32 @git_commit_id(i32*) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @git_commit__create_internal(i32*, i32*, i32*, i32*, i32*, i8*, i8*, i32*, i32, i8*, i32) #1

declare dso_local i32 @git_reference__update_for_commit(i32*, i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
