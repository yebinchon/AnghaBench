; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tree/extr_update.c_test_object_tree_update__replace_blob.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tree/extr_update.c_test_object_tree_update__replace_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"README\00", align 1
@GIT_TREE_UPDATE_UPSERT = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"c4dc1555e4d4fa0e0c9c3fc46734c7c35b3ce90b\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"fa49b077972391ad58037050f2a75f74e3671e92\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tree_update__replace_blob() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca [1 x %struct.TYPE_11__], align 16
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %9 = bitcast %struct.TYPE_12__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* @GIT_TREE_UPDATE_UPSERT, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %11, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %17 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i8*, i8** %6, align 8
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %20, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  store i32 0, i32* %23, align 4
  %24 = call i32 @git_oid_fromstr(i32* %3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @g_repo, align 4
  %27 = call i32 @git_tree_lookup(i32** %4, i32 %26, i32* %3)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = call i32 @git_index_new(i32** %5)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @git_index_read_tree(i32* %31, i32* %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %38 = call i32 @git_oid_fromstr(i32* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @git_index_add(i32* %42, %struct.TYPE_12__* %7)
  %44 = call i32 @cl_git_pass(i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @g_repo, align 4
  %47 = call i32 @git_index_write_tree_to(i32* %1, i32* %45, i32 %46)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @git_index_free(i32* %49)
  %51 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = call i32 @git_oid_fromstr(i32* %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32, i32* @g_repo, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %58 = call i32 @git_tree_create_updated(i32* %2, i32 %55, i32* %56, i32 1, %struct.TYPE_11__* %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @git_tree_free(i32* %61)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_index_new(i32**) #2

declare dso_local i32 @git_index_read_tree(i32*, i32*) #2

declare dso_local i32 @git_index_add(i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @git_index_write_tree_to(i32*, i32*, i32) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_tree_create_updated(i32*, i32, i32*, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
