; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_cherrypick.c_git_cherrypick.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_cherrypick.c_git_cherrypick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_INDEXWRITER_INIT = common dso_local global i32 0, align 4
@GIT_CHERRYPICK_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"git_cherrypick_options\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cherry-pick\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%.7s... %s\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_cherrypick(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %20 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %25, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %26 = load i32, i32* @GIT_INDEXWRITER_INIT, align 4
  store i32 %26, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br label %32

32:                                               ; preds = %29, %3
  %33 = phi i1 [ false, %3 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = load i32, i32* @GIT_CHERRYPICK_OPTIONS_VERSION, align 4
  %38 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_7__* %36, i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @git_repository__ensure_not_bare(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %40, i32* %18, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %134

44:                                               ; preds = %32
  %45 = load i32*, i32** %6, align 8
  %46 = call i8* @git_commit_message(i32* %45)
  store i8* %46, i8** %13, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = call i8* @git_commit_summary(i32* %49)
  store i8* %50, i8** %14, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44
  store i32 -1, i32* %18, align 4
  br label %121

53:                                               ; preds = %48
  %54 = trunc i64 %22 to i32
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @git_commit_id(i32* %55)
  %57 = call i32 @git_oid_nfmt(i8* %24, i32 %54, i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @write_merge_msg(i32* %58, i8* %59)
  store i32 %60, i32* %18, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %119, label %62

62:                                               ; preds = %53
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @git_buf_printf(i32* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %24, i8* %63)
  store i32 %64, i32* %18, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %119, label %66

66:                                               ; preds = %62
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = call i32 @git_buf_cstr(i32* %15)
  %70 = call i32 @cherrypick_normalize_opts(i32* %67, %struct.TYPE_7__* %8, %struct.TYPE_7__* %68, i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %119, label %72

72:                                               ; preds = %66
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @git_indexwriter_init_for_operation(i32* %17, i32* %73, i32* %75)
  store i32 %76, i32* %18, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %119, label %78

78:                                               ; preds = %72
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @write_cherrypick_head(i32* %79, i8* %24)
  store i32 %80, i32* %18, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %119, label %82

82:                                               ; preds = %78
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @git_repository_head(i32** %9, i32* %83)
  store i32 %84, i32* %18, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %119, label %86

86:                                               ; preds = %82
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %89 = call i32 @git_reference_peel(i32** %10, i32* %87, i32 %88)
  store i32 %89, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %119, label %91

91:                                               ; preds = %86
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %98 = call i32 @git_cherrypick_commit(i32** %16, i32* %92, i32* %93, i32* %94, i32 %96, i32* %97)
  store i32 %98, i32* %18, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %91
  %101 = load i32*, i32** %5, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = call i32 @git_merge__check_result(i32* %101, i32* %102)
  store i32 %103, i32* %18, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %100
  %106 = load i32*, i32** %5, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @git_merge__append_conflicts_to_merge_msg(i32* %106, i32* %107)
  store i32 %108, i32* %18, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %105
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %114 = call i32 @git_checkout_index(i32* %111, i32* %112, %struct.TYPE_8__* %113)
  store i32 %114, i32* %18, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = call i32 @git_indexwriter_commit(i32* %17)
  store i32 %117, i32* %18, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116, %110, %105, %100, %91, %86, %82, %78, %72, %66, %62, %53
  br label %121

120:                                              ; preds = %116
  br label %124

121:                                              ; preds = %119, %52
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @cherrypick_state_cleanup(i32* %122)
  br label %124

124:                                              ; preds = %121, %120
  %125 = call i32 @git_indexwriter_cleanup(i32* %17)
  %126 = load i32*, i32** %16, align 8
  %127 = call i32 @git_index_free(i32* %126)
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @git_commit_free(i32* %128)
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @git_reference_free(i32* %130)
  %132 = call i32 @git_buf_dispose(i32* %15)
  %133 = load i32, i32* %18, align 4
  store i32 %133, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %134

134:                                              ; preds = %124, %42
  %135 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_7__*, i32, i8*) #2

declare dso_local i32 @git_repository__ensure_not_bare(i32*, i8*) #2

declare dso_local i8* @git_commit_message(i32*) #2

declare dso_local i8* @git_commit_summary(i32*) #2

declare dso_local i32 @git_oid_nfmt(i8*, i32, i32) #2

declare dso_local i32 @git_commit_id(i32*) #2

declare dso_local i32 @write_merge_msg(i32*, i8*) #2

declare dso_local i32 @git_buf_printf(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @cherrypick_normalize_opts(i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @git_buf_cstr(i32*) #2

declare dso_local i32 @git_indexwriter_init_for_operation(i32*, i32*, i32*) #2

declare dso_local i32 @write_cherrypick_head(i32*, i8*) #2

declare dso_local i32 @git_repository_head(i32**, i32*) #2

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #2

declare dso_local i32 @git_cherrypick_commit(i32**, i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @git_merge__check_result(i32*, i32*) #2

declare dso_local i32 @git_merge__append_conflicts_to_merge_msg(i32*, i32*) #2

declare dso_local i32 @git_checkout_index(i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @git_indexwriter_commit(i32*) #2

declare dso_local i32 @cherrypick_state_cleanup(i32*) #2

declare dso_local i32 @git_indexwriter_cleanup(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
