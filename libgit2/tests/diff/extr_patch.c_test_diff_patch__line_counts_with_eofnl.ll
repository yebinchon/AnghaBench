; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_patch.c_test_diff_patch__line_counts_with_eofnl.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_patch.c_test_diff_patch__line_counts_with_eofnl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [549 x i8] c"diff --git a/songof7cities.txt b/songof7cities.txt\0Aindex 378a7d9..3d0154e 100644\0A--- a/songof7cities.txt\0A+++ b/songof7cities.txt\0A@@ -42,7 +42,7 @@ With peoples undefeated of the dark, enduring blood.\0A \0A To the sound of trumpets shall their seed restore my Cities\0A Wealthy and well-weaponed, that once more may I behold\0A-All the world go softly when it walks before my Cities,\0A+#All the world go softly when it walks before my Cities,\0A And the horses and the chariots fleeing from them as of old!\0A \0A   -- Rudyard Kipling\0A\\ No newline at end of file\0A\00", align 1
@__const.test_diff_patch__line_counts_with_eofnl.expected_sizes = private unnamed_addr constant [3 x i64] [i64 115, i64 348, i64 419], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"renames/songof7cities.txt\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"songof7cities.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_patch__line_counts_with_eofnl() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i64], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  store i8* getelementptr inbounds ([549 x i8], [549 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %10 = bitcast [3 x i64]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([3 x i64]* @__const.test_diff_patch__line_counts_with_eofnl.expected_sizes to i8*), i64 24, i1 false)
  %11 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* @g_repo, align 4
  %12 = call i32 @git_config_new(i32** %1)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_repository_set_config(i32 %14, i32* %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @git_config_free(i32* %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = call i32 @git_repository_reinit_filesystem(i32 %19, i32 0)
  %21 = call i32 @git_futils_readbuffer(%struct.TYPE_10__* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i8* @git_buf_cstr(%struct.TYPE_10__* %2)
  %24 = call i32 @git_buf_find(%struct.TYPE_10__* %2, i8 signext 10)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %3, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @git_buf_consume(%struct.TYPE_10__* %2, i8* %28)
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @g_repo, align 4
  %34 = call i32 @check_single_patch_stats(i32 %33, i32 1, i32 0, i32 1, i32 3, i64* null, i8* null)
  %35 = call i32 @git_buf_rtrim(%struct.TYPE_10__* %2)
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @g_repo, align 4
  %40 = call i32 @check_single_patch_stats(i32 %39, i32 2, i32 1, i32 2, i32 6, i64* null, i8* null)
  %41 = load i32, i32* @g_repo, align 4
  %42 = call i32 @git_repository_index(i32** %4, i32 %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @git_index_add_bypath(i32* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @git_index_write(i32* %47)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @git_index_free(i32* %50)
  %52 = call i32 @git_buf_putc(%struct.TYPE_10__* %2, i8 signext 10)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @g_repo, align 4
  %58 = call i32 @check_single_patch_stats(i32 %57, i32 1, i32 1, i32 1, i32 3, i64* null, i8* null)
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8* %64, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %88, %0
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 5
  br i1 %67, label %68, label %91

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %7, align 8
  br label %71

71:                                               ; preds = %84, %68
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ugt i8* %72, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 10
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i1 [ false, %71 ], [ %80, %76 ]
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %7, align 8
  br label %71

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %65

91:                                               ; preds = %65
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ugt i8* %92, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @cl_assert(i32 %96)
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = ptrtoint i8* %104 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sub nsw i64 %103, %109
  %111 = sub nsw i64 %110, 1
  %112 = trunc i64 %111 to i32
  %113 = call i32 @memmove(i8* %99, i8* %100, i32 %112)
  %114 = load i8*, i8** %7, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  store i8 35, i8* %115, align 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* @g_repo, align 4
  %120 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @check_single_patch_stats(i32 %119, i32 1, i32 1, i32 1, i32 6, i64* %120, i8* %121)
  %123 = call i32 @git_buf_dispose(%struct.TYPE_10__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_config_new(i32**) #2

declare dso_local i32 @git_repository_set_config(i32, i32*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_repository_reinit_filesystem(i32, i32) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_10__*, i8*) #2

declare dso_local i8* @git_buf_cstr(%struct.TYPE_10__*) #2

declare dso_local i32 @git_buf_find(%struct.TYPE_10__*, i8 signext) #2

declare dso_local i32 @git_buf_consume(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @check_single_patch_stats(i32, i32, i32, i32, i32, i64*, i8*) #2

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_10__*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_buf_putc(%struct.TYPE_10__*, i8 signext) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
