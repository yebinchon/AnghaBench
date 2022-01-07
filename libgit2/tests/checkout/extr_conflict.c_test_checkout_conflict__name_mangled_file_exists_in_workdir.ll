; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_test_checkout_conflict__name_mangled_file_exists_in_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_conflict.c_test_checkout_conflict__name_mangled_file_exists_in_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.checkout_name_entry = type { i8*, i8*, i8* }
%struct.checkout_index_entry = type { i32, i8*, i32, i8* }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"b42712cfe99a1a500b2a51fe984e0b8a7702ba11\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"test-one-side-one.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"b69fe837e4cecfd4c9a40cdca7c138468687df07\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"test-one-side-two.txt\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"test-one.txt\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"test-two-side-one.txt\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"test-two-side-two.txt\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"test-two.txt\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"test-three-side-one.txt\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"test-three-side-two.txt\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"test-three.txt\00", align 1
@CONFLICTING_ANCESTOR_OID = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"directory_file-one\00", align 1
@CONFLICTING_OURS_OID = common dso_local global i8* null, align 8
@CONFLICTING_THEIRS_OID = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"directory_file-one/file\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"directory_file-two\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"directory_file-two/file\00", align 1
@__const.test_checkout_conflict__name_mangled_file_exists_in_workdir.checkout_name_entries = private unnamed_addr constant [6 x %struct.checkout_name_entry] [%struct.checkout_name_entry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0) }, %struct.checkout_name_entry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0) }, %struct.checkout_name_entry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0) }, %struct.checkout_name_entry { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0) }, %struct.checkout_name_entry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0) }, %struct.checkout_name_entry { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0) }], align 16
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@g_index = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"merge-resolve/test-one.txt~ours\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"Expect index contents to be written to ~ours_0\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"merge-resolve/test-one.txt~theirs\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"Expect index contents to be written to ~theirs_0\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"merge-resolve/test-two.txt~ours\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Expect index contents to be written to ~ours_3\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"merge-resolve/test-two.txt~theirs\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"Expect index contents to be written to ~theirs_3\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"merge-resolve/test-two.txt~ours_0\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"merge-resolve/test-two.txt~theirs_0\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"merge-resolve/test-two.txt~ours_1\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"merge-resolve/test-two.txt~theirs_1\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"merge-resolve/test-two.txt~ours_2\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"merge-resolve/test-two.txt~theirs_2\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"merge-resolve/test-three.txt~Ours\00", align 1
@.str.30 = private unnamed_addr constant [54 x i8] c"Expect case insensitive filesystems to create ~ours_0\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"merge-resolve/test-three.txt~THEIRS\00", align 1
@.str.32 = private unnamed_addr constant [56 x i8] c"Expect case insensitive filesystems to create ~theirs_0\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"merge-resolve/directory_file-one~ours\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"Index contents written to ~ours_0 in this D/F conflict\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"merge-resolve/directory_file-two~theirs\00", align 1
@.str.36 = private unnamed_addr constant [57 x i8] c"Index contents written to ~theirs_0 in this D/F conflict\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [20 x i8] c"test-one.txt~ours_0\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"test-one.txt~theirs_0\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"test-two.txt~ours_3\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"test-two.txt~theirs_3\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"test-three.txt~ours\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"test-three.txt~theirs\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"directory_file-one~ours_0\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"directory_file-two~theirs_0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_conflict__name_mangled_file_exists_in_workdir() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca [24 x %struct.checkout_index_entry], align 16
  %3 = alloca [6 x %struct.checkout_name_entry], align 16
  %4 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = getelementptr inbounds [24 x %struct.checkout_index_entry], [24 x %struct.checkout_index_entry]* %2, i64 0, i64 0
  %6 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %5, i32 0, i32 0
  store i32 33188, i32* %6, align 16
  %7 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %5, i32 0, i32 2
  store i32 1, i32* %8, align 16
  %9 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %5, i64 1
  %11 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 0
  store i32 33188, i32* %11, align 16
  %12 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 2
  store i32 3, i32* %13, align 16
  %14 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %10, i64 1
  %16 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %15, i32 0, i32 0
  store i32 33188, i32* %16, align 16
  %17 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %15, i32 0, i32 2
  store i32 1, i32* %18, align 16
  %19 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %15, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %15, i64 1
  %21 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %20, i32 0, i32 0
  store i32 33188, i32* %21, align 16
  %22 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %20, i32 0, i32 2
  store i32 2, i32* %23, align 16
  %24 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %20, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %24, align 8
  %25 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %20, i64 1
  %26 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %25, i32 0, i32 0
  store i32 33188, i32* %26, align 16
  %27 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %25, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %25, i32 0, i32 2
  store i32 2, i32* %28, align 16
  %29 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %25, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %25, i64 1
  %31 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %30, i32 0, i32 0
  store i32 33188, i32* %31, align 16
  %32 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %30, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %30, i32 0, i32 2
  store i32 3, i32* %33, align 16
  %34 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %30, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %30, i64 1
  %36 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %35, i32 0, i32 0
  store i32 33188, i32* %36, align 16
  %37 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %35, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %35, i32 0, i32 2
  store i32 1, i32* %38, align 16
  %39 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %35, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %35, i64 1
  %41 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %40, i32 0, i32 0
  store i32 33188, i32* %41, align 16
  %42 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %40, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %40, i32 0, i32 2
  store i32 3, i32* %43, align 16
  %44 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %40, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %40, i64 1
  %46 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %45, i32 0, i32 0
  store i32 33188, i32* %46, align 16
  %47 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %45, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %47, align 8
  %48 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %45, i32 0, i32 2
  store i32 1, i32* %48, align 16
  %49 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %45, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %49, align 8
  %50 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %45, i64 1
  %51 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %50, i32 0, i32 0
  store i32 33188, i32* %51, align 16
  %52 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %50, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %52, align 8
  %53 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %50, i32 0, i32 2
  store i32 2, i32* %53, align 16
  %54 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %50, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %54, align 8
  %55 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %50, i64 1
  %56 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %55, i32 0, i32 0
  store i32 33188, i32* %56, align 16
  %57 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %55, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %57, align 8
  %58 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %55, i32 0, i32 2
  store i32 2, i32* %58, align 16
  %59 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %55, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %59, align 8
  %60 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %55, i64 1
  %61 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %60, i32 0, i32 0
  store i32 33188, i32* %61, align 16
  %62 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %60, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %60, i32 0, i32 2
  store i32 3, i32* %63, align 16
  %64 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %60, i32 0, i32 3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %64, align 8
  %65 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %60, i64 1
  %66 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %65, i32 0, i32 0
  store i32 33188, i32* %66, align 16
  %67 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %65, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %67, align 8
  %68 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %65, i32 0, i32 2
  store i32 1, i32* %68, align 16
  %69 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %65, i32 0, i32 3
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8** %69, align 8
  %70 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %65, i64 1
  %71 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %70, i32 0, i32 0
  store i32 33188, i32* %71, align 16
  %72 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %70, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %72, align 8
  %73 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %70, i32 0, i32 2
  store i32 3, i32* %73, align 16
  %74 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %70, i32 0, i32 3
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8** %74, align 8
  %75 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %70, i64 1
  %76 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %75, i32 0, i32 0
  store i32 33188, i32* %76, align 16
  %77 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %75, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %77, align 8
  %78 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %75, i32 0, i32 2
  store i32 1, i32* %78, align 16
  %79 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %75, i32 0, i32 3
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8** %79, align 8
  %80 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %75, i64 1
  %81 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %80, i32 0, i32 0
  store i32 33188, i32* %81, align 16
  %82 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %80, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %82, align 8
  %83 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %80, i32 0, i32 2
  store i32 2, i32* %83, align 16
  %84 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %80, i32 0, i32 3
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8** %84, align 8
  %85 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %80, i64 1
  %86 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %85, i32 0, i32 0
  store i32 33188, i32* %86, align 16
  %87 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %85, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %87, align 8
  %88 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %85, i32 0, i32 2
  store i32 2, i32* %88, align 16
  %89 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %85, i32 0, i32 3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %89, align 8
  %90 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %85, i64 1
  %91 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %90, i32 0, i32 0
  store i32 33188, i32* %91, align 16
  %92 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %90, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %92, align 8
  %93 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %90, i32 0, i32 2
  store i32 3, i32* %93, align 16
  %94 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %90, i32 0, i32 3
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %94, align 8
  %95 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %90, i64 1
  %96 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %95, i32 0, i32 0
  store i32 33188, i32* %96, align 16
  %97 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %95, i32 0, i32 1
  %98 = load i8*, i8** @CONFLICTING_ANCESTOR_OID, align 8
  store i8* %98, i8** %97, align 8
  %99 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %95, i32 0, i32 2
  store i32 1, i32* %99, align 16
  %100 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %95, i32 0, i32 3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %100, align 8
  %101 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %95, i64 1
  %102 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %101, i32 0, i32 0
  store i32 33188, i32* %102, align 16
  %103 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %101, i32 0, i32 1
  %104 = load i8*, i8** @CONFLICTING_OURS_OID, align 8
  store i8* %104, i8** %103, align 8
  %105 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %101, i32 0, i32 2
  store i32 2, i32* %105, align 16
  %106 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %101, i32 0, i32 3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8** %106, align 8
  %107 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %101, i64 1
  %108 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %107, i32 0, i32 0
  store i32 33188, i32* %108, align 16
  %109 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %107, i32 0, i32 1
  %110 = load i8*, i8** @CONFLICTING_THEIRS_OID, align 8
  store i8* %110, i8** %109, align 8
  %111 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %107, i32 0, i32 2
  store i32 0, i32* %111, align 16
  %112 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %107, i32 0, i32 3
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8** %112, align 8
  %113 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %107, i64 1
  %114 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %113, i32 0, i32 0
  store i32 33188, i32* %114, align 16
  %115 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %113, i32 0, i32 1
  %116 = load i8*, i8** @CONFLICTING_ANCESTOR_OID, align 8
  store i8* %116, i8** %115, align 8
  %117 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %113, i32 0, i32 2
  store i32 1, i32* %117, align 16
  %118 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %113, i32 0, i32 3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8** %118, align 8
  %119 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %113, i64 1
  %120 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %119, i32 0, i32 0
  store i32 33188, i32* %120, align 16
  %121 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %119, i32 0, i32 1
  %122 = load i8*, i8** @CONFLICTING_OURS_OID, align 8
  store i8* %122, i8** %121, align 8
  %123 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %119, i32 0, i32 2
  store i32 0, i32* %123, align 16
  %124 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %119, i32 0, i32 3
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8** %124, align 8
  %125 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %119, i64 1
  %126 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %125, i32 0, i32 0
  store i32 33188, i32* %126, align 16
  %127 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %125, i32 0, i32 1
  %128 = load i8*, i8** @CONFLICTING_THEIRS_OID, align 8
  store i8* %128, i8** %127, align 8
  %129 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %125, i32 0, i32 2
  store i32 3, i32* %129, align 16
  %130 = getelementptr inbounds %struct.checkout_index_entry, %struct.checkout_index_entry* %125, i32 0, i32 3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8** %130, align 8
  %131 = bitcast [6 x %struct.checkout_name_entry]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %131, i8* align 16 bitcast ([6 x %struct.checkout_name_entry]* @__const.test_checkout_conflict__name_mangled_file_exists_in_workdir.checkout_name_entries to i8*), i64 144, i1 false)
  %132 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %132
  store i32 %135, i32* %133, align 4
  %136 = getelementptr inbounds [24 x %struct.checkout_index_entry], [24 x %struct.checkout_index_entry]* %2, i64 0, i64 0
  %137 = call i32 @create_index(%struct.checkout_index_entry* %136, i32 24)
  %138 = getelementptr inbounds [6 x %struct.checkout_name_entry], [6 x %struct.checkout_name_entry]* %3, i64 0, i64 0
  %139 = call i32 @create_index_names(%struct.checkout_name_entry* %138, i32 6)
  %140 = load i32, i32* @g_index, align 4
  %141 = call i32 @git_index_write(i32 %140)
  %142 = call i32 @cl_git_pass(i32 %141)
  %143 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0))
  %144 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0))
  %145 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  %146 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0))
  %147 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  %148 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0))
  %149 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  %150 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0))
  %151 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  %152 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0))
  %153 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.30, i64 0, i64 0))
  %154 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.32, i64 0, i64 0))
  %155 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i64 0, i64 0))
  %156 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.36, i64 0, i64 0))
  %157 = load i32, i32* @g_repo, align 4
  %158 = load i32, i32* @g_index, align 4
  %159 = call i32 @git_checkout_index(i32 %157, i32 %158, %struct.TYPE_4__* %1)
  %160 = call i32 @cl_git_pass(i32 %159)
  %161 = call i32 @ensure_workdir(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %162 = call i32 @ensure_workdir(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %163 = call i32 @ensure_workdir(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %164 = call i32 @ensure_workdir(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0), i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %165 = call i32 @ensure_workdir(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0), i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %166 = call i32 @ensure_workdir(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0), i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i8*, i8** @CONFLICTING_OURS_OID, align 8
  %168 = call i32 @ensure_workdir(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0), i32 33188, i8* %167)
  %169 = load i8*, i8** @CONFLICTING_THEIRS_OID, align 8
  %170 = call i32 @ensure_workdir(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i64 0, i64 0), i32 33188, i8* %169)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @create_index(%struct.checkout_index_entry*, i32) #2

declare dso_local i32 @create_index_names(%struct.checkout_name_entry*, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_index_write(i32) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @git_checkout_index(i32, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @ensure_workdir(i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
