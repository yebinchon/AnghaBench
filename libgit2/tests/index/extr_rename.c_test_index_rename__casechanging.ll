; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_rename.c_test_index_rename__casechanging.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_rename.c_test_index_rename__casechanging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"./rename\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"./rename/lame.name.txt\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"new_file\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"lame.name.txt\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"LAME.name.TXT\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_rename__casechanging() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 16, i1 false)
  %6 = call i32 @p_mkdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 448)
  %7 = call i32 @git_repository_init(i32** %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_repository_index(i32** %2, i32* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_index_add_bypath(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_index_entrycount(i32* %16)
  %18 = call i32 @cl_assert_equal_i(i32 1, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call %struct.TYPE_9__* @git_index_get_bypath(i32* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %3, align 8
  %21 = call i32 @cl_assert(%struct.TYPE_9__* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = call i32 @memcpy(%struct.TYPE_9__* %4, %struct.TYPE_9__* %22, i32 16)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %24, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_index_add(i32* %25, %struct.TYPE_9__* %4)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call %struct.TYPE_9__* @git_index_get_bypath(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @cl_assert(%struct.TYPE_9__* %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i64 @cl_repo_get_bool(i32* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %0
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_index_entrycount(i32* %35)
  %37 = call i32 @cl_assert_equal_i(i32 1, i32 %36)
  br label %42

38:                                               ; preds = %0
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @git_index_entrycount(i32* %39)
  %41 = call i32 @cl_assert_equal_i(i32 2, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_index_free(i32* %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_repository_free(i32* %45)
  %47 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_init(i32**, i8*, i32) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_index_entrycount(i32*) #2

declare dso_local i32 @cl_assert(%struct.TYPE_9__*) #2

declare dso_local %struct.TYPE_9__* @git_index_get_bypath(i32*, i8*, i32) #2

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_9__*) #2

declare dso_local i64 @cl_repo_get_bool(i32*, i8*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @cl_fixture_cleanup(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
