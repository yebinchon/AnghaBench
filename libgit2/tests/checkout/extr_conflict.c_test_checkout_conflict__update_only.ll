; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_test_checkout_conflict__update_only.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_test_checkout_conflict__update_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.checkout_index_entry = type { i32, i32, i8*, i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AUTOMERGEABLE_ANCESTOR_OID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"automergeable.txt\00", align 1
@AUTOMERGEABLE_OURS_OID = common dso_local global i32 0, align 4
@AUTOMERGEABLE_THEIRS_OID = common dso_local global i32 0, align 4
@CONFLICTING_ANCESTOR_OID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"modify-delete\00", align 1
@CONFLICTING_THEIRS_OID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"directory_file-one\00", align 1
@CONFLICTING_OURS_OID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"directory_file-one/file\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"directory_file-two\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"directory_file-two/file\00", align 1
@GIT_CHECKOUT_UPDATE_ONLY = common dso_local global i32 0, align 4
@g_index = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"merge-resolve/directory_file-two\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"merge-resolve/directory_file-two/file\00", align 1
@CONFLICTING_OURS_FILE = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@AUTOMERGEABLE_MERGED_FILE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"merge-resolve/modify-delete\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"merge-resolve/test-one.txt\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"merge-resolve/test-one-side-one.txt\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"merge-resolve/test-one-side-two.txt\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"merge-resolve/test-one.txt~ours\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"merge-resolve/test-one.txt~theirs\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"merge-resolve/directory_file-one/file\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"merge-resolve/directory_file-one~ours\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"merge-resolve/directory_file-two~theirs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_conflict__update_only() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca [11 x %struct.checkout_index_entry], align 16
  %3 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = getelementptr inbounds [11 x %struct.checkout_index_entry], [11 x %struct.checkout_index_entry]* %2, i64 0, i64 0
  %5 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 0
  store i32 33188, i32* %5, align 8
  %6 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 1
  %7 = load i32, i32* @AUTOMERGEABLE_ANCESTOR_OID, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %8, align 8
  %9 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str to i32), i32* %9, align 8
  %10 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %4, i64 1
  %11 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 0
  store i32 33188, i32* %11, align 8
  %12 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 1
  %13 = load i32, i32* @AUTOMERGEABLE_OURS_OID, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %14, align 8
  %15 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i64 1
  %17 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 0
  store i32 33188, i32* %17, align 8
  %18 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 1
  %19 = load i32, i32* @AUTOMERGEABLE_THEIRS_OID, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 2
  store i8* inttoptr (i64 3 to i8*), i8** %20, align 8
  %21 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i32 0, i32 3
  store i32 ptrtoint ([18 x i8]* @.str to i32), i32* %21, align 8
  %22 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %16, i64 1
  %23 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %22, i32 0, i32 0
  store i32 33188, i32* %23, align 8
  %24 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %22, i32 0, i32 1
  %25 = load i32, i32* @CONFLICTING_ANCESTOR_OID, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %22, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %26, align 8
  %27 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %22, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %27, align 8
  %28 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %22, i64 1
  %29 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %28, i32 0, i32 0
  store i32 33188, i32* %29, align 8
  %30 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %28, i32 0, i32 1
  %31 = load i32, i32* @CONFLICTING_THEIRS_OID, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %28, i32 0, i32 2
  store i8* inttoptr (i64 3 to i8*), i8** %32, align 8
  %33 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %28, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %33, align 8
  %34 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %28, i64 1
  %35 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %34, i32 0, i32 0
  store i32 33188, i32* %35, align 8
  %36 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %34, i32 0, i32 1
  %37 = load i32, i32* @CONFLICTING_ANCESTOR_OID, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %34, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %38, align 8
  %39 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %34, i32 0, i32 3
  store i32 ptrtoint ([19 x i8]* @.str.2 to i32), i32* %39, align 8
  %40 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %34, i64 1
  %41 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %40, i32 0, i32 0
  store i32 33188, i32* %41, align 8
  %42 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %40, i32 0, i32 1
  %43 = load i32, i32* @CONFLICTING_OURS_OID, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %40, i32 0, i32 2
  store i8* inttoptr (i64 2 to i8*), i8** %44, align 8
  %45 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %40, i32 0, i32 3
  store i32 ptrtoint ([19 x i8]* @.str.2 to i32), i32* %45, align 8
  %46 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %40, i64 1
  %47 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %46, i32 0, i32 0
  store i32 33188, i32* %47, align 8
  %48 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %46, i32 0, i32 1
  %49 = load i32, i32* @CONFLICTING_THEIRS_OID, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %46, i32 0, i32 2
  store i8* null, i8** %50, align 8
  %51 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %46, i32 0, i32 3
  store i32 ptrtoint ([24 x i8]* @.str.3 to i32), i32* %51, align 8
  %52 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %46, i64 1
  %53 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %52, i32 0, i32 0
  store i32 33188, i32* %53, align 8
  %54 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %52, i32 0, i32 1
  %55 = load i32, i32* @CONFLICTING_ANCESTOR_OID, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %52, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %56, align 8
  %57 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %52, i32 0, i32 3
  store i32 ptrtoint ([19 x i8]* @.str.4 to i32), i32* %57, align 8
  %58 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %52, i64 1
  %59 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %58, i32 0, i32 0
  store i32 33188, i32* %59, align 8
  %60 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %58, i32 0, i32 1
  %61 = load i32, i32* @CONFLICTING_OURS_OID, align 4
  store i32 %61, i32* %60, align 4
  %62 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %58, i32 0, i32 2
  store i8* null, i8** %62, align 8
  %63 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %58, i32 0, i32 3
  store i32 ptrtoint ([24 x i8]* @.str.5 to i32), i32* %63, align 8
  %64 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %58, i64 1
  %65 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %64, i32 0, i32 0
  store i32 33188, i32* %65, align 8
  %66 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %64, i32 0, i32 1
  %67 = load i32, i32* @CONFLICTING_THEIRS_OID, align 4
  store i32 %67, i32* %66, align 4
  %68 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %64, i32 0, i32 2
  store i8* inttoptr (i64 3 to i8*), i8** %68, align 8
  %69 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %64, i32 0, i32 3
  store i32 ptrtoint ([19 x i8]* @.str.4 to i32), i32* %69, align 8
  %70 = load i32, i32* @GIT_CHECKOUT_UPDATE_ONLY, align 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = getelementptr inbounds [11 x %struct.checkout_index_entry], [11 x %struct.checkout_index_entry]* %2, i64 0, i64 0
  %75 = call i32 @create_index(%struct.checkout_index_entry* %74, i32 3)
  %76 = load i32, i32* @g_index, align 4
  %77 = call i32 @git_index_write(i32 %76)
  %78 = call i32 @cl_git_pass(i32 %77)
  %79 = call i32 @p_mkdir(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 511)
  %80 = call i32 @cl_git_pass(i32 %79)
  %81 = load i32, i32* @CONFLICTING_OURS_FILE, align 4
  %82 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @g_repo, align 4
  %84 = load i32, i32* @g_index, align 4
  %85 = call i32 @git_checkout_index(i32 %83, i32 %84, %struct.TYPE_4__* %1)
  %86 = call i32 @cl_git_pass(i32 %85)
  %87 = load i32, i32* @AUTOMERGEABLE_MERGED_FILE, align 4
  %88 = call i32 @ensure_workdir_contents(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @CONFLICTING_OURS_OID, align 4
  %90 = call i32 @ensure_workdir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 33188, i32 %89)
  %91 = call i32 @git_path_exists(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @cl_assert(i32 %94)
  %96 = call i32 @git_path_exists(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @cl_assert(i32 %99)
  %101 = call i32 @git_path_exists(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @cl_assert(i32 %104)
  %106 = call i32 @git_path_exists(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @cl_assert(i32 %109)
  %111 = call i32 @git_path_exists(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @cl_assert(i32 %114)
  %116 = call i32 @git_path_exists(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @cl_assert(i32 %119)
  %121 = call i32 @git_path_exists(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = call i32 @cl_assert(i32 %124)
  %126 = call i32 @git_path_exists(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @cl_assert(i32 %129)
  %131 = call i32 @git_path_exists(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i32 @cl_assert(i32 %134)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @create_index(%struct.checkout_index_entry*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_index_write(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i32) #2

declare dso_local i32 @git_checkout_index(i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @ensure_workdir_contents(i8*, i32) #2

declare dso_local i32 @ensure_workdir(i8*, i32, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_exists(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
