; ModuleID = '/home/carl/AnghaBench/libgit2/tests/cherrypick/extr_bare.c_test_cherrypick_bare__conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/cherrypick/extr_bare.c_test_cherrypick_bare__conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [41 x i8] c"242e7977ba73637822ffb265b46004b9b0e5153b\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file1.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"a58ca3fee5eb68b11adc2703e5843f968c9dad1e\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"file2.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"bd6ffc8c6c41f0f85ff9e3d61c9479516bac0024\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"563f6473a3858f99b80e5f93c660512ed38e1e6f\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"28d9eb4208074ad1cc84e71ccc908b34573f05d2\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"file3.txt\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"1124c2c1ae07b26fded662d6c3f3631d9dc16f88\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"e233b9ed408a95e9d4b65fec7fc34943a556deb2\00", align 1
@__const.test_cherrypick_bare__conflicts.merge_index_entries = private unnamed_addr constant [7 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) }], align 16
@.str.10 = private unnamed_addr constant [41 x i8] c"bafbf6912c09505ac60575cd43d3f2aba3bd84d8\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"e9b63f3655b2ad80c0ff587389b5a9589a3a7110\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_cherrypick_bare__conflicts() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [7 x %struct.merge_index_entry], align 16
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %7 = bitcast [7 x %struct.merge_index_entry]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([7 x %struct.merge_index_entry]* @__const.test_cherrypick_bare__conflicts.merge_index_entries to i8*), i64 224, i1 false)
  %8 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @git_commit_lookup(i32** %1, i32 %9, i32* %4)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @git_oid_fromstr(i32* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %13 = load i32, i32* @repo, align 4
  %14 = call i32 @git_commit_lookup(i32** %2, i32 %13, i32* %5)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @repo, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_cherrypick_commit(i32** %3, i32 %16, i32* %17, i32* %18, i32 0, i32* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds [7 x %struct.merge_index_entry], [7 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %23 = call i32 @merge_test_index(i32* %21, %struct.merge_index_entry* %22, i32 7)
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @git_index_free(i32* %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_commit_free(i32* %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @git_commit_free(i32* %29)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_cherrypick_commit(i32**, i32, i32*, i32*, i32, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @merge_test_index(i32*, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
