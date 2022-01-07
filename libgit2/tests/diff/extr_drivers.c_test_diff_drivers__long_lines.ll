; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_drivers.c_test_diff_drivers__long_lines.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_drivers.c_test_diff_drivers__long_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [654 x i8] c"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non nisi ligula. Ut viverra enim sed lobortis suscipit.\0APhasellus eget erat odio. Praesent at est iaculis, ultricies augue vel, dignissim risus. Suspendisse at nisi quis turpis fringilla rutrum id sit amet nulla.\0ANam eget dolor fermentum, aliquet nisl at, convallis tellus. Pellentesque rhoncus erat enim, id porttitor elit euismod quis.\0AMauris sollicitudin magna odio, non egestas libero vehicula ut. Etiam et quam velit. Fusce eget libero rhoncus, ultricies felis sit amet, egestas purus.\0AAliquam in semper tellus. Pellentesque adipiscing rutrum velit, quis malesuada lacus consequat eget.\0A\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [611 x i8] c"diff --git a/longlines.txt b/longlines.txt\0Aindex c1ce6ef..0134431 100644\0A--- a/longlines.txt\0A+++ b/longlines.txt\0A@@ -3,3 +3,5 @@ Phasellus eget erat odio. Praesent at est iaculis, ultricies augue vel, dignissi\0A Nam eget dolor fermentum, aliquet nisl at, convallis tellus. Pellentesque rhoncus erat enim, id porttitor elit euismod quis.\0A Mauris sollicitudin magna odio, non egestas libero vehicula ut. Etiam et quam velit. Fusce eget libero rhoncus, ultricies felis sit amet, egestas purus.\0A Aliquam in semper tellus. Pellentesque adipiscing rutrum velit, quis malesuada lacus consequat eget.\0A+newline\0A+newline\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"empty_standard_repo/longlines.txt\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"longlines.txt\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"newline\0Anewline\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_drivers__long_lines() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i8*, align 8
  store i8* getelementptr inbounds ([654 x i8], [654 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %7 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([611 x i8], [611 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %8 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 %8, i32* @g_repo, align 4
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_repository_index(i32** %2, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_index_add_bypath(i32* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_index_write(i32* %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @git_index_free(i32* %20)
  %22 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i32, i32* @g_repo, align 4
  %24 = call i32 @git_diff_index_to_workdir(i32** %3, i32 %23, i32* null, i32* null)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @git_diff_num_deltas(i32* %26)
  %28 = call i32 @cl_assert_equal_sz(i32 1, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @git_patch_from_diff(i32** %4, i32* %29, i32 0)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @git_patch_to_buf(%struct.TYPE_6__* %5, i32* %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @overwrite_filemode(i8* %35, %struct.TYPE_6__* %5)
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cl_assert_equal_s(i8* %37, i32 %39)
  %41 = call i32 @git_buf_dispose(%struct.TYPE_6__* %5)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @git_patch_free(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_diff_free(i32* %44)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @cl_git_append2file(i8*, i8*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #2

declare dso_local i32 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @overwrite_filemode(i8*, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
