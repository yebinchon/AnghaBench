; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_test_checkout_conflict__path_filters.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_test_checkout_conflict__path_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8**, i32 }
%struct.checkout_index_entry = type { i32, i32, i8*, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"conflicting-1.txt\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"conflicting-3.txt\00", align 1
@__const.test_checkout_conflict__path_filters.paths = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)], align 16
@CONFLICTING_ANCESTOR_OID = common dso_local global i32 0, align 4
@CONFLICTING_OURS_OID = common dso_local global i32 0, align 4
@CONFLICTING_THEIRS_OID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"conflicting-2.txt\00", align 1
@AUTOMERGEABLE_ANCESTOR_OID = common dso_local global i32 0, align 4
@AUTOMERGEABLE_OURS_OID = common dso_local global i32 0, align 4
@AUTOMERGEABLE_THEIRS_OID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"conflicting-4.txt\00", align 1
@g_index = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@CONFLICTING_DIFF3_FILE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"merge-resolve/conflicting-2.txt\00", align 1
@AUTOMERGEABLE_MERGED_FILE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"merge-resolve/conflicting-4.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_conflict__path_filters() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca [2 x i8*], align 16
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca [12 x %struct.checkout_index_entry], align 16
  %5 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 24, i1 false)
  %6 = bitcast [2 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([2 x i8*]* @__const.test_checkout_conflict__path_filters.paths to i8*), i64 16, i1 false)
  %7 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 24, i1 false)
  %8 = getelementptr inbounds [12 x %struct.checkout_index_entry], [12 x %struct.checkout_index_entry]* %4, i64 0, i64 0
  %9 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %8, i32 0, i32 0
  store i32 33188, i32* %9, align 8
  %10 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %8, i32 0, i32 1
  %11 = load i32, i32* @CONFLICTING_ANCESTOR_OID, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %8, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %12, align 8
  %13 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %8, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str to i32), i32* %13, align 8
  %14 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %8, i64 1
  %15 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %14, i32 0, i32 0
  store i32 33188, i32* %15, align 8
  %16 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %14, i32 0, i32 1
  %17 = load i32, i32* @CONFLICTING_OURS_OID, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %14, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %18, align 8
  %19 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %14, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str to i32), i32* %19, align 8
  %20 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %14, i64 1
  %21 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %20, i32 0, i32 0
  store i32 33188, i32* %21, align 8
  %22 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %20, i32 0, i32 1
  %23 = load i32, i32* @CONFLICTING_THEIRS_OID, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %20, i32 0, i32 2
  store i8* inttoptr (i64 3 to i8*), i8** %24, align 8
  %25 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %20, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str to i32), i32* %25, align 8
  %26 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %20, i64 1
  %27 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %26, i32 0, i32 0
  store i32 33188, i32* %27, align 8
  %28 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %26, i32 0, i32 1
  %29 = load i32, i32* @CONFLICTING_ANCESTOR_OID, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %26, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %30, align 8
  %31 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %26, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.2 to i32), i32* %31, align 8
  %32 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %26, i64 1
  %33 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %32, i32 0, i32 0
  store i32 33188, i32* %33, align 8
  %34 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %32, i32 0, i32 1
  %35 = load i32, i32* @CONFLICTING_OURS_OID, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %32, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %36, align 8
  %37 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %32, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.2 to i32), i32* %37, align 8
  %38 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %32, i64 1
  %39 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %38, i32 0, i32 0
  store i32 33188, i32* %39, align 8
  %40 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %38, i32 0, i32 1
  %41 = load i32, i32* @CONFLICTING_THEIRS_OID, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %38, i32 0, i32 2
  store i8* inttoptr (i64 3 to i8*), i8** %42, align 8
  %43 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %38, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.2 to i32), i32* %43, align 8
  %44 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %38, i64 1
  %45 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %44, i32 0, i32 0
  store i32 33188, i32* %45, align 8
  %46 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %44, i32 0, i32 1
  %47 = load i32, i32* @AUTOMERGEABLE_ANCESTOR_OID, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %44, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %48, align 8
  %49 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %44, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.1 to i32), i32* %49, align 8
  %50 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %44, i64 1
  %51 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %50, i32 0, i32 0
  store i32 33188, i32* %51, align 8
  %52 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %50, i32 0, i32 1
  %53 = load i32, i32* @AUTOMERGEABLE_OURS_OID, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %50, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %54, align 8
  %55 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %50, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.1 to i32), i32* %55, align 8
  %56 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %50, i64 1
  %57 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %56, i32 0, i32 0
  store i32 33188, i32* %57, align 8
  %58 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %56, i32 0, i32 1
  %59 = load i32, i32* @AUTOMERGEABLE_THEIRS_OID, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %56, i32 0, i32 2
  store i8* inttoptr (i64 3 to i8*), i8** %60, align 8
  %61 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %56, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.1 to i32), i32* %61, align 8
  %62 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %56, i64 1
  %63 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %62, i32 0, i32 0
  store i32 33188, i32* %63, align 8
  %64 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %62, i32 0, i32 1
  %65 = load i32, i32* @AUTOMERGEABLE_ANCESTOR_OID, align 4
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %62, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %66, align 8
  %67 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %62, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.3 to i32), i32* %67, align 8
  %68 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %62, i64 1
  %69 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %68, i32 0, i32 0
  store i32 33188, i32* %69, align 8
  %70 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %68, i32 0, i32 1
  %71 = load i32, i32* @AUTOMERGEABLE_OURS_OID, align 4
  store i32 %71, i32* %70, align 4
  %72 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %68, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %72, align 8
  %73 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %68, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.3 to i32), i32* %73, align 8
  %74 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %68, i64 1
  %75 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %74, i32 0, i32 0
  store i32 33188, i32* %75, align 8
  %76 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %74, i32 0, i32 1
  %77 = load i32, i32* @AUTOMERGEABLE_THEIRS_OID, align 4
  store i32 %77, i32* %76, align 4
  %78 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %74, i32 0, i32 2
  store i8* inttoptr (i64 3 to i8*), i8** %78, align 8
  %79 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %74, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str.3 to i32), i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i32 2, i32* %80, align 8
  %81 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i8** %81, i8*** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %84 = bitcast %struct.TYPE_5__* %83 to i8*
  %85 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 24, i1 false)
  %86 = getelementptr inbounds [12 x %struct.checkout_index_entry], [12 x %struct.checkout_index_entry]* %4, i64 0, i64 0
  %87 = call i32 @create_index(%struct.checkout_index_entry* %86, i32 12)
  %88 = load i32, i32* @g_index, align 4
  %89 = call i32 @git_index_write(i32 %88)
  %90 = call i32 @cl_git_pass(i32 %89)
  %91 = load i32, i32* @g_repo, align 4
  %92 = load i32, i32* @g_index, align 4
  %93 = call i32 @git_checkout_index(i32 %91, i32 %92, %struct.TYPE_6__* %1)
  %94 = call i32 @cl_git_pass(i32 %93)
  %95 = load i32, i32* @CONFLICTING_DIFF3_FILE, align 4
  %96 = call i32 @ensure_workdir_contents(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = call i32 @git_path_exists(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @cl_assert(i32 %100)
  %102 = load i32, i32* @AUTOMERGEABLE_MERGED_FILE, align 4
  %103 = call i32 @ensure_workdir_contents(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = call i32 @git_path_exists(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @cl_assert(i32 %107)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @create_index(%struct.checkout_index_entry*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_index_write(i32) #2

declare dso_local i32 @git_checkout_index(i32, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @ensure_workdir_contents(i8*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
