; ModuleID = '/home/carl/AnghaBench/libgit2/tests/blame/extr_simple.c_test_blame_simple__trivial_libgit2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/blame/extr_simple.c_test_blame_simple__trivial_libgit2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_BLAME_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"../..\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"359fc2d\00", align 1
@g_blame = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"include/git2.h\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"d12299fe\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"src/git.h\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"359fc2d2\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"bb742ede\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"96fab093\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"9d1dcca2\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"src/git2.h\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"44908fe7\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"a15c550d\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"638c2ca4\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"bf787bd8\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"0984c876\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"2f8a8ab2\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"27df4275\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"a346992f\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"65b09b1d\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"5d4cd003\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"41fb1ca0\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"2dc31040\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"764df57e\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"5280f4e6\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"613d5eb9\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"111ee3fe\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"f004c4a8\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"9c82357b\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"d6258deb\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"b311e313\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"3412391d\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"bfc9ca59\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"bf477ed4\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"edebceff\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"743a4b3b\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"0a32dca5\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"590fb68b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_blame_simple__trivial_libgit2() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32*, align 8
  %3 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_BLAME_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = call i32 @cl_fixture(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %5 = call i64 @git_repository_open(i32* @g_repo, i32 %4)
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @cl_skip()
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i64 @git_repository_is_shallow(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (...) @cl_skip()
  br label %15

15:                                               ; preds = %13, %9
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i64 @git_revparse_single(i32** %2, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (...) @cl_skip()
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_object_id(i32* %23)
  %25 = call i32 @git_oid_cpy(i32* %22, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @git_object_free(i32* %26)
  %28 = load i32, i32* @g_repo, align 4
  %29 = call i32 @git_blame_file(i32* @g_blame, i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %1)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32, i32* @g_repo, align 4
  %32 = load i32, i32* @g_blame, align 4
  %33 = call i32 @check_blame_hunk_index(i32 %31, i32 %32, i32 0, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32, i32* @g_repo, align 4
  %35 = load i32, i32* @g_blame, align 4
  %36 = call i32 @check_blame_hunk_index(i32 %34, i32 %35, i32 1, i32 2, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @g_repo, align 4
  %38 = load i32, i32* @g_blame, align 4
  %39 = call i32 @check_blame_hunk_index(i32 %37, i32 %38, i32 2, i32 3, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* @g_repo, align 4
  %41 = load i32, i32* @g_blame, align 4
  %42 = call i32 @check_blame_hunk_index(i32 %40, i32 %41, i32 3, i32 4, i32 2, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @g_repo, align 4
  %44 = load i32, i32* @g_blame, align 4
  %45 = call i32 @check_blame_hunk_index(i32 %43, i32 %44, i32 4, i32 6, i32 5, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* @g_repo, align 4
  %47 = load i32, i32* @g_blame, align 4
  %48 = call i32 @check_blame_hunk_index(i32 %46, i32 %47, i32 5, i32 11, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @g_repo, align 4
  %50 = load i32, i32* @g_blame, align 4
  %51 = call i32 @check_blame_hunk_index(i32 %49, i32 %50, i32 6, i32 12, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %52 = load i32, i32* @g_repo, align 4
  %53 = load i32, i32* @g_blame, align 4
  %54 = call i32 @check_blame_hunk_index(i32 %52, i32 %53, i32 7, i32 13, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %55 = load i32, i32* @g_repo, align 4
  %56 = load i32, i32* @g_blame, align 4
  %57 = call i32 @check_blame_hunk_index(i32 %55, i32 %56, i32 8, i32 14, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @g_repo, align 4
  %59 = load i32, i32* @g_blame, align 4
  %60 = call i32 @check_blame_hunk_index(i32 %58, i32 %59, i32 9, i32 15, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %61 = load i32, i32* @g_repo, align 4
  %62 = load i32, i32* @g_blame, align 4
  %63 = call i32 @check_blame_hunk_index(i32 %61, i32 %62, i32 10, i32 16, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @g_repo, align 4
  %65 = load i32, i32* @g_blame, align 4
  %66 = call i32 @check_blame_hunk_index(i32 %64, i32 %65, i32 11, i32 17, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %67 = load i32, i32* @g_repo, align 4
  %68 = load i32, i32* @g_blame, align 4
  %69 = call i32 @check_blame_hunk_index(i32 %67, i32 %68, i32 12, i32 18, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @g_repo, align 4
  %71 = load i32, i32* @g_blame, align 4
  %72 = call i32 @check_blame_hunk_index(i32 %70, i32 %71, i32 13, i32 19, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %73 = load i32, i32* @g_repo, align 4
  %74 = load i32, i32* @g_blame, align 4
  %75 = call i32 @check_blame_hunk_index(i32 %73, i32 %74, i32 14, i32 20, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %76 = load i32, i32* @g_repo, align 4
  %77 = load i32, i32* @g_blame, align 4
  %78 = call i32 @check_blame_hunk_index(i32 %76, i32 %77, i32 15, i32 21, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %79 = load i32, i32* @g_repo, align 4
  %80 = load i32, i32* @g_blame, align 4
  %81 = call i32 @check_blame_hunk_index(i32 %79, i32 %80, i32 16, i32 22, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* @g_repo, align 4
  %83 = load i32, i32* @g_blame, align 4
  %84 = call i32 @check_blame_hunk_index(i32 %82, i32 %83, i32 17, i32 23, i32 2, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %85 = load i32, i32* @g_repo, align 4
  %86 = load i32, i32* @g_blame, align 4
  %87 = call i32 @check_blame_hunk_index(i32 %85, i32 %86, i32 18, i32 25, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @g_repo, align 4
  %89 = load i32, i32* @g_blame, align 4
  %90 = call i32 @check_blame_hunk_index(i32 %88, i32 %89, i32 19, i32 26, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @g_repo, align 4
  %92 = load i32, i32* @g_blame, align 4
  %93 = call i32 @check_blame_hunk_index(i32 %91, i32 %92, i32 20, i32 27, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %94 = load i32, i32* @g_repo, align 4
  %95 = load i32, i32* @g_blame, align 4
  %96 = call i32 @check_blame_hunk_index(i32 %94, i32 %95, i32 21, i32 28, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @g_repo, align 4
  %98 = load i32, i32* @g_blame, align 4
  %99 = call i32 @check_blame_hunk_index(i32 %97, i32 %98, i32 22, i32 29, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @g_repo, align 4
  %101 = load i32, i32* @g_blame, align 4
  %102 = call i32 @check_blame_hunk_index(i32 %100, i32 %101, i32 23, i32 30, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i32, i32* @g_repo, align 4
  %104 = load i32, i32* @g_blame, align 4
  %105 = call i32 @check_blame_hunk_index(i32 %103, i32 %104, i32 24, i32 31, i32 5, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %106 = load i32, i32* @g_repo, align 4
  %107 = load i32, i32* @g_blame, align 4
  %108 = call i32 @check_blame_hunk_index(i32 %106, i32 %107, i32 25, i32 36, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @g_repo, align 4
  %110 = load i32, i32* @g_blame, align 4
  %111 = call i32 @check_blame_hunk_index(i32 %109, i32 %110, i32 26, i32 37, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* @g_repo, align 4
  %113 = load i32, i32* @g_blame, align 4
  %114 = call i32 @check_blame_hunk_index(i32 %112, i32 %113, i32 27, i32 38, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %115 = load i32, i32* @g_repo, align 4
  %116 = load i32, i32* @g_blame, align 4
  %117 = call i32 @check_blame_hunk_index(i32 %115, i32 %116, i32 28, i32 39, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @g_repo, align 4
  %119 = load i32, i32* @g_blame, align 4
  %120 = call i32 @check_blame_hunk_index(i32 %118, i32 %119, i32 29, i32 40, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* @g_repo, align 4
  %122 = load i32, i32* @g_blame, align 4
  %123 = call i32 @check_blame_hunk_index(i32 %121, i32 %122, i32 30, i32 41, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @g_repo, align 4
  %125 = load i32, i32* @g_blame, align 4
  %126 = call i32 @check_blame_hunk_index(i32 %124, i32 %125, i32 31, i32 42, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %127 = load i32, i32* @g_repo, align 4
  %128 = load i32, i32* @g_blame, align 4
  %129 = call i32 @check_blame_hunk_index(i32 %127, i32 %128, i32 32, i32 43, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* @g_repo, align 4
  %131 = load i32, i32* @g_blame, align 4
  %132 = call i32 @check_blame_hunk_index(i32 %130, i32 %131, i32 33, i32 44, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* @g_repo, align 4
  %134 = load i32, i32* @g_blame, align 4
  %135 = call i32 @check_blame_hunk_index(i32 %133, i32 %134, i32 34, i32 45, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %136 = load i32, i32* @g_repo, align 4
  %137 = load i32, i32* @g_blame, align 4
  %138 = call i32 @check_blame_hunk_index(i32 %136, i32 %137, i32 35, i32 46, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %139 = load i32, i32* @g_repo, align 4
  %140 = load i32, i32* @g_blame, align 4
  %141 = call i32 @check_blame_hunk_index(i32 %139, i32 %140, i32 36, i32 47, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i32, i32* @g_repo, align 4
  %143 = load i32, i32* @g_blame, align 4
  %144 = call i32 @check_blame_hunk_index(i32 %142, i32 %143, i32 37, i32 48, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %145 = load i32, i32* @g_repo, align 4
  %146 = load i32, i32* @g_blame, align 4
  %147 = call i32 @check_blame_hunk_index(i32 %145, i32 %146, i32 38, i32 49, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %148 = load i32, i32* @g_repo, align 4
  %149 = load i32, i32* @g_blame, align 4
  %150 = call i32 @check_blame_hunk_index(i32 %148, i32 %149, i32 39, i32 50, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %151 = load i32, i32* @g_repo, align 4
  %152 = load i32, i32* @g_blame, align 4
  %153 = call i32 @check_blame_hunk_index(i32 %151, i32 %152, i32 40, i32 51, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %154 = load i32, i32* @g_repo, align 4
  %155 = load i32, i32* @g_blame, align 4
  %156 = call i32 @check_blame_hunk_index(i32 %154, i32 %155, i32 41, i32 52, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %157 = load i32, i32* @g_repo, align 4
  %158 = load i32, i32* @g_blame, align 4
  %159 = call i32 @check_blame_hunk_index(i32 %157, i32 %158, i32 42, i32 53, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i32, i32* @g_repo, align 4
  %161 = load i32, i32* @g_blame, align 4
  %162 = call i32 @check_blame_hunk_index(i32 %160, i32 %161, i32 43, i32 54, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i32, i32* @g_repo, align 4
  %164 = load i32, i32* @g_blame, align 4
  %165 = call i32 @check_blame_hunk_index(i32 %163, i32 %164, i32 44, i32 55, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %166 = load i32, i32* @g_repo, align 4
  %167 = load i32, i32* @g_blame, align 4
  %168 = call i32 @check_blame_hunk_index(i32 %166, i32 %167, i32 45, i32 56, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %169 = load i32, i32* @g_repo, align 4
  %170 = load i32, i32* @g_blame, align 4
  %171 = call i32 @check_blame_hunk_index(i32 %169, i32 %170, i32 46, i32 57, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %172 = load i32, i32* @g_repo, align 4
  %173 = load i32, i32* @g_blame, align 4
  %174 = call i32 @check_blame_hunk_index(i32 %172, i32 %173, i32 47, i32 58, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %175 = load i32, i32* @g_repo, align 4
  %176 = load i32, i32* @g_blame, align 4
  %177 = call i32 @check_blame_hunk_index(i32 %175, i32 %176, i32 48, i32 59, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %178 = load i32, i32* @g_repo, align 4
  %179 = load i32, i32* @g_blame, align 4
  %180 = call i32 @check_blame_hunk_index(i32 %178, i32 %179, i32 49, i32 60, i32 1, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @git_repository_open(i32*, i32) #2

declare dso_local i32 @cl_fixture(i8*) #2

declare dso_local i32 @cl_skip(...) #2

declare dso_local i64 @git_repository_is_shallow(i32) #2

declare dso_local i64 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32) #2

declare dso_local i32 @git_object_id(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_blame_file(i32*, i32, i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @check_blame_hunk_index(i32, i32, i32, i32, i32, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
