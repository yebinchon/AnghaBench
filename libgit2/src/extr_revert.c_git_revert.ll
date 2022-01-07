; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revert.c_git_revert.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revert.c_git_revert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_INDEXWRITER_INIT = common dso_local global i32 0, align 4
@GIT_REVERT_OPTIONS_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"git_revert_options\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"revert\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"parent of %.7s... %s\00", align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_revert(i32* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %19 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %24, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %25 = load i32, i32* @GIT_INDEXWRITER_INIT, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br label %31

31:                                               ; preds = %28, %3
  %32 = phi i1 [ false, %3 ], [ %30, %28 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = load i32, i32* @GIT_REVERT_OPTIONS_VERSION, align 4
  %37 = call i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_7__* %35, i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @git_repository__ensure_not_bare(i32* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %39, i32* %17, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %131

43:                                               ; preds = %31
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @git_commit_id(i32* %44)
  %46 = call i32 @git_oid_fmt(i8* %23, i32 %45)
  %47 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %23, i64 %48
  store i8 0, i8* %49, align 1
  %50 = load i32*, i32** %6, align 8
  %51 = call i8* @git_commit_summary(i32* %50)
  store i8* %51, i8** %13, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 -1, i32* %17, align 4
  br label %118

54:                                               ; preds = %43
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @git_buf_printf(i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %23, i8* %55)
  store i32 %56, i32* %17, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %116, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = call i32 @git_buf_cstr(i32* %14)
  %62 = call i32 @revert_normalize_opts(i32* %59, %struct.TYPE_7__* %8, %struct.TYPE_7__* %60, i32 %61)
  store i32 %62, i32* %17, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %116, label %64

64:                                               ; preds = %58
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = call i32 @git_indexwriter_init_for_operation(i32* %16, i32* %65, i32* %67)
  store i32 %68, i32* %17, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %116, label %70

70:                                               ; preds = %64
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @write_revert_head(i32* %71, i8* %23)
  store i32 %72, i32* %17, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %116, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @write_merge_msg(i32* %75, i8* %23, i8* %76)
  store i32 %77, i32* %17, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %116, label %79

79:                                               ; preds = %74
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @git_repository_head(i32** %9, i32* %80)
  store i32 %81, i32* %17, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %116, label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %86 = call i32 @git_reference_peel(i32** %10, i32* %84, i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %116, label %88

88:                                               ; preds = %83
  %89 = load i32*, i32** %5, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %95 = call i32 @git_revert_commit(i32** %15, i32* %89, i32* %90, i32* %91, i32 %93, i32* %94)
  store i32 %95, i32* %17, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %116, label %97

97:                                               ; preds = %88
  %98 = load i32*, i32** %5, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @git_merge__check_result(i32* %98, i32* %99)
  store i32 %100, i32* %17, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = call i32 @git_merge__append_conflicts_to_merge_msg(i32* %103, i32* %104)
  store i32 %105, i32* %17, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** %5, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %111 = call i32 @git_checkout_index(i32* %108, i32* %109, %struct.TYPE_8__* %110)
  store i32 %111, i32* %17, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = call i32 @git_indexwriter_commit(i32* %16)
  store i32 %114, i32* %17, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %107, %102, %97, %88, %83, %79, %74, %70, %64, %58, %54
  br label %118

117:                                              ; preds = %113
  br label %121

118:                                              ; preds = %116, %53
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @revert_state_cleanup(i32* %119)
  br label %121

121:                                              ; preds = %118, %117
  %122 = call i32 @git_indexwriter_cleanup(i32* %16)
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @git_index_free(i32* %123)
  %125 = load i32*, i32** %10, align 8
  %126 = call i32 @git_commit_free(i32* %125)
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @git_reference_free(i32* %127)
  %129 = call i32 @git_buf_dispose(i32* %14)
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %131

131:                                              ; preds = %121, %41
  %132 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(%struct.TYPE_7__*, i32, i8*) #2

declare dso_local i32 @git_repository__ensure_not_bare(i32*, i8*) #2

declare dso_local i32 @git_oid_fmt(i8*, i32) #2

declare dso_local i32 @git_commit_id(i32*) #2

declare dso_local i8* @git_commit_summary(i32*) #2

declare dso_local i32 @git_buf_printf(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @revert_normalize_opts(i32*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32) #2

declare dso_local i32 @git_buf_cstr(i32*) #2

declare dso_local i32 @git_indexwriter_init_for_operation(i32*, i32*, i32*) #2

declare dso_local i32 @write_revert_head(i32*, i8*) #2

declare dso_local i32 @write_merge_msg(i32*, i8*, i8*) #2

declare dso_local i32 @git_repository_head(i32**, i32*) #2

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #2

declare dso_local i32 @git_revert_commit(i32**, i32*, i32*, i32*, i32, i32*) #2

declare dso_local i32 @git_merge__check_result(i32*, i32*) #2

declare dso_local i32 @git_merge__append_conflicts_to_merge_msg(i32*, i32*) #2

declare dso_local i32 @git_checkout_index(i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @git_indexwriter_commit(i32*) #2

declare dso_local i32 @revert_state_cleanup(i32*) #2

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
