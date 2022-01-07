; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__into_buf.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__into_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@tree_id_str = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@committer_name = common dso_local global i32 0, align 4
@committer_email = common dso_local global i32 0, align 4
@parent_id_str = common dso_local global i32 0, align 4
@root_commit_message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [300 x i8] c"tree 1810dff58d8a660512d4832e740f692884338ccd\0Aparent 8496071c1b46c854b31185ea97743be6a8774479\0Aauthor Vicent Marti <vicent@github.com> 987654321 +0130\0Acommitter Vicent Marti <vicent@github.com> 123456789 +0100\0A\0AThis is a root commit\0A   This is a root commit and should be the only one in this branch\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_write__into_buf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %9 = load i32, i32* @tree_id_str, align 4
  %10 = call i32 @git_oid_fromstr(i32* %1, i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @git_tree_lookup(i32** %4, i32 %11, i32* %1)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @committer_name, align 4
  %15 = load i32, i32* @committer_email, align 4
  %16 = call i32 @git_signature_new(i32** %3, i32 %14, i32 %15, i32 123456789, i32 60)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @committer_name, align 4
  %19 = load i32, i32* @committer_email, align 4
  %20 = call i32 @git_signature_new(i32** %2, i32 %18, i32 %19, i32 987654321, i32 90)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @parent_id_str, align 4
  %23 = call i32 @git_oid_fromstr(i32* %6, i32 %22)
  %24 = load i32, i32* @g_repo, align 4
  %25 = call i32 @git_commit_lookup(i32** %5, i32 %24, i32* %6)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @g_repo, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @root_commit_message, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @git_commit_create_buffer(%struct.TYPE_5__* %7, i32 %27, i32* %28, i32* %29, i32* null, i32 %30, i32* %31, i32 1, i32** %5)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_s(i32 %35, i8* getelementptr inbounds ([300 x i8], [300 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @git_buf_dispose(%struct.TYPE_5__* %7)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @git_tree_free(i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @git_commit_free(i32* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @git_signature_free(i32* %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_signature_free(i32* %44)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_signature_new(i32**, i32, i32, i32, i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_commit_create_buffer(%struct.TYPE_5__*, i32, i32*, i32*, i32*, i32, i32*, i32, i32**) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_signature_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
