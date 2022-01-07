; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__using_path_and_attributes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_blob.c_test_diff_blob__using_path_and_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Hello from the root\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"0123456789\0A\01\02\03\04\05\06\07\08\09\00\0A0123456789\0A\00", align 1
@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"diff.iam_binary.binary\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"diff.iam_text.binary\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"diff.iam_alphactx.xfuncname\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"^[A-Za-z].*$\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"diff.iam_textalpha.binary\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"diff.iam_textalpha.xfuncname\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"diff.iam_numctx.funcname\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"^[0-9][0-9]*\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"diff.iam_textnum.binary\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"diff.iam_textnum.funcname\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"attr/.gitattributes\00", align 1
@.str.13 = private unnamed_addr constant [222 x i8] c"\0A\0A# test_diff_blob__using_path_and_attributes extra\0A\0A*.binary  diff=iam_binary\0A*.textary diff=iam_text\0A*.alphary diff=iam_alphactx\0A*.textalphary diff=iam_textalpha\0A*.textnumary diff=iam_textnum\0A*.numary  diff=iam_numctx\0A\0A\00", align 1
@opts = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"45141a79\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"b435cd56\00", align 1
@expected = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [49 x i8] c"Hello from the root\0AMore lines\0AAnd more\0AGo here\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"foo/bar.binary\00", align 1
@GIT_DELTA_MODIFIED = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"foo/bar.textary\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"foo/bar.alphary\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"zzz.normal\00", align 1
@.str.21 = private unnamed_addr constant [169 x i8] c"diff --git a/zzz.normal b/zzz.normal\0Aindex 45141a7..75b0dbb 100644\0A--- a/zzz.normal\0A+++ b/zzz.normal\0A@@ -1,0 +2,3 @@ Hello from the root\0A+More lines\0A+And more\0A+Go here\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"zzz.binary\00", align 1
@.str.23 = private unnamed_addr constant [118 x i8] c"diff --git a/zzz.binary b/zzz.binary\0Aindex 45141a7..75b0dbb 100644\0ABinary files a/zzz.binary and b/zzz.binary differ\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"zzz.alphary\00", align 1
@.str.25 = private unnamed_addr constant [173 x i8] c"diff --git a/zzz.alphary b/zzz.alphary\0Aindex 45141a7..75b0dbb 100644\0A--- a/zzz.alphary\0A+++ b/zzz.alphary\0A@@ -1,0 +2,3 @@ Hello from the root\0A+More lines\0A+And more\0A+Go here\0A\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"zzz.numary\00", align 1
@.str.27 = private unnamed_addr constant [149 x i8] c"diff --git a/zzz.numary b/zzz.numary\0Aindex 45141a7..75b0dbb 100644\0A--- a/zzz.numary\0A+++ b/zzz.numary\0A@@ -1,0 +2,3 @@\0A+More lines\0A+And more\0A+Go here\0A\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"0123456789\0A\01\02\03\04\05\06\07\08\09\00\0Areplace a line\0A\00", align 1
@.str.29 = private unnamed_addr constant [118 x i8] c"diff --git a/zzz.normal b/zzz.normal\0Aindex b435cd5..1604519 100644\0ABinary files a/zzz.normal and b/zzz.normal differ\0A\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"zzz.textary\00", align 1
@.str.31 = private unnamed_addr constant [146 x i8] c"diff --git a/zzz.textary b/zzz.textary\0Aindex b435cd5..1604519 100644\0A--- a/zzz.textary\0A+++ b/zzz.textary\0A@@ -3 +3 @@\0A-0123456789\0A+replace a line\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"zzz.textalphary\00", align 1
@.str.33 = private unnamed_addr constant [162 x i8] c"diff --git a/zzz.textalphary b/zzz.textalphary\0Aindex b435cd5..1604519 100644\0A--- a/zzz.textalphary\0A+++ b/zzz.textalphary\0A@@ -3 +3 @@\0A-0123456789\0A+replace a line\0A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"zzz.textnumary\00", align 1
@.str.35 = private unnamed_addr constant [169 x i8] c"diff --git a/zzz.textnumary b/zzz.textnumary\0Aindex b435cd5..1604519 100644\0A--- a/zzz.textnumary\0A+++ b/zzz.textnumary\0A@@ -3 +3 @@ 0123456789\0A-0123456789\0A+replace a line\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_blob__using_path_and_attributes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i64 33, i64* %7, align 8
  %11 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_repository_config(i32** %1, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_config_set_bool(i32* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_config_set_bool(i32* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_config_set_string(i32* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @git_config_set_bool(i32* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_config_set_string(i32* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_config_set_string(i32* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_config_set_bool(i32* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_config_set_string(i32* %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_config_free(i32* %39)
  %41 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.13, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @opts, i32 0, i32 1), align 8
  %42 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @opts, i32 0, i32 0), align 8
  %44 = or i32 %43, %42
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @opts, i32 0, i32 0), align 8
  %45 = call i32 @git_oid_fromstrn(i32* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 8)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i32, i32* @g_repo, align 4
  %48 = call i32 @git_blob_lookup_prefix(i32** %3, i32 %47, i32* %4, i32 8)
  %49 = call i32 @cl_git_pass(i32 %48)
  %50 = call i32 @git_oid_fromstrn(i32* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 8)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32, i32* @g_repo, align 4
  %53 = call i32 @git_blob_lookup_prefix(i32** %2, i32 %52, i32* %4, i32 8)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @quick_diff_blob_to_str(i32* %55, i8* null, i8* %56, i64 0, i32* null)
  %58 = call i32 @assert_identical_blobs_comparison(%struct.TYPE_13__* @expected)
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expected, i32 0, i32 2), align 8
  %60 = call i32 @cl_assert_equal_i(i32 0, i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @quick_diff_blob_to_str(i32* %61, i8* null, i8* %62, i64 %63, i32* null)
  %65 = call i32 @assert_identical_blobs_comparison(%struct.TYPE_13__* @expected)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expected, i32 0, i32 2), align 8
  %67 = call i32 @cl_assert_equal_i(i32 1, i32 %66)
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i64 0, i64 0), i8** %8, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @quick_diff_blob_to_str(i32* %68, i8* null, i8* %69, i64 0, i32* null)
  %71 = call i32 @assert_one_modified(i32 1, i32 3, i32 0, i32 3, i32 0, %struct.TYPE_13__* @expected)
  %72 = load i32*, i32** %3, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @quick_diff_blob_to_str(i32* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %73, i64 0, i32* null)
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expected, i32 0, i32 4), align 8
  %76 = call i32 @cl_assert_equal_i(i32 1, i32 %75)
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expected, i32 0, i32 3), align 8
  %78 = load i64, i64* @GIT_DELTA_MODIFIED, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cl_assert_equal_i(i32 1, i32 %80)
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expected, i32 0, i32 2), align 8
  %83 = call i32 @cl_assert_equal_i(i32 1, i32 %82)
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expected, i32 0, i32 1), align 4
  %85 = call i32 @cl_assert_equal_i(i32 0, i32 %84)
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @expected, i32 0, i32 0), align 8
  %87 = call i32 @cl_assert_equal_i(i32 0, i32 %86)
  %88 = load i32*, i32** %3, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @quick_diff_blob_to_str(i32* %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %89, i64 0, i32* null)
  %91 = call i32 @assert_one_modified(i32 1, i32 3, i32 0, i32 3, i32 0, %struct.TYPE_13__* @expected)
  %92 = load i32*, i32** %3, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @quick_diff_blob_to_str(i32* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %93, i64 0, i32* null)
  %95 = call i32 @assert_one_modified(i32 1, i32 3, i32 0, i32 3, i32 0, %struct.TYPE_13__* @expected)
  %96 = load i32*, i32** %3, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = call i32 @git_patch_from_blob_and_buffer(i32** %9, i32* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* %97, i32 %99, i32* null, %struct.TYPE_12__* @opts)
  %101 = call i32 @cl_git_pass(i32 %100)
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @git_patch_to_buf(%struct.TYPE_11__* %10, i32* %102)
  %104 = call i32 @cl_git_pass(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.21, i64 0, i64 0), i32 %106)
  %108 = call i32 @git_buf_clear(%struct.TYPE_11__* %10)
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @git_patch_free(i32* %109)
  %111 = load i32*, i32** %3, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = call i32 @git_patch_from_blob_and_buffer(i32** %9, i32* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* %112, i32 %114, i32* null, %struct.TYPE_12__* @opts)
  %116 = call i32 @cl_git_pass(i32 %115)
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @git_patch_to_buf(%struct.TYPE_11__* %10, i32* %117)
  %119 = call i32 @cl_git_pass(i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.23, i64 0, i64 0), i32 %121)
  %123 = call i32 @git_buf_clear(%struct.TYPE_11__* %10)
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 @git_patch_free(i32* %124)
  %126 = load i32*, i32** %3, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @strlen(i8* %128)
  %130 = call i32 @git_patch_from_blob_and_buffer(i32** %9, i32* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* %127, i32 %129, i32* null, %struct.TYPE_12__* @opts)
  %131 = call i32 @cl_git_pass(i32 %130)
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @git_patch_to_buf(%struct.TYPE_11__* %10, i32* %132)
  %134 = call i32 @cl_git_pass(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.25, i64 0, i64 0), i32 %136)
  %138 = call i32 @git_buf_clear(%struct.TYPE_11__* %10)
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @git_patch_free(i32* %139)
  %141 = load i32*, i32** %3, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 @strlen(i8* %143)
  %145 = call i32 @git_patch_from_blob_and_buffer(i32** %9, i32* %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8* %142, i32 %144, i32* null, %struct.TYPE_12__* @opts)
  %146 = call i32 @cl_git_pass(i32 %145)
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @git_patch_to_buf(%struct.TYPE_11__* %10, i32* %147)
  %149 = call i32 @cl_git_pass(i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.27, i64 0, i64 0), i32 %151)
  %153 = call i32 @git_buf_clear(%struct.TYPE_11__* %10)
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @git_patch_free(i32* %154)
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0), i8** %8, align 8
  %156 = load i32*, i32** %2, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @git_patch_from_blob_and_buffer(i32** %9, i32* %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* %157, i32 37, i32* null, %struct.TYPE_12__* @opts)
  %159 = call i32 @cl_git_pass(i32 %158)
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @git_patch_to_buf(%struct.TYPE_11__* %10, i32* %160)
  %162 = call i32 @cl_git_pass(i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.29, i64 0, i64 0), i32 %164)
  %166 = call i32 @git_buf_clear(%struct.TYPE_11__* %10)
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 @git_patch_free(i32* %167)
  %169 = load i32*, i32** %2, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = call i32 @git_patch_from_blob_and_buffer(i32** %9, i32* %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i8* %170, i32 37, i32* null, %struct.TYPE_12__* @opts)
  %172 = call i32 @cl_git_pass(i32 %171)
  %173 = load i32*, i32** %9, align 8
  %174 = call i32 @git_patch_to_buf(%struct.TYPE_11__* %10, i32* %173)
  %175 = call i32 @cl_git_pass(i32 %174)
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.31, i64 0, i64 0), i32 %177)
  %179 = call i32 @git_buf_clear(%struct.TYPE_11__* %10)
  %180 = load i32*, i32** %9, align 8
  %181 = call i32 @git_patch_free(i32* %180)
  %182 = load i32*, i32** %2, align 8
  %183 = load i8*, i8** %8, align 8
  %184 = call i32 @git_patch_from_blob_and_buffer(i32** %9, i32* %182, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i8* %183, i32 37, i32* null, %struct.TYPE_12__* @opts)
  %185 = call i32 @cl_git_pass(i32 %184)
  %186 = load i32*, i32** %9, align 8
  %187 = call i32 @git_patch_to_buf(%struct.TYPE_11__* %10, i32* %186)
  %188 = call i32 @cl_git_pass(i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.33, i64 0, i64 0), i32 %190)
  %192 = call i32 @git_buf_clear(%struct.TYPE_11__* %10)
  %193 = load i32*, i32** %9, align 8
  %194 = call i32 @git_patch_free(i32* %193)
  %195 = load i32*, i32** %2, align 8
  %196 = load i8*, i8** %8, align 8
  %197 = call i32 @git_patch_from_blob_and_buffer(i32** %9, i32* %195, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0), i8* %196, i32 37, i32* null, %struct.TYPE_12__* @opts)
  %198 = call i32 @cl_git_pass(i32 %197)
  %199 = load i32*, i32** %9, align 8
  %200 = call i32 @git_patch_to_buf(%struct.TYPE_11__* %10, i32* %199)
  %201 = call i32 @cl_git_pass(i32 %200)
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.35, i64 0, i64 0), i32 %203)
  %205 = call i32 @git_buf_clear(%struct.TYPE_11__* %10)
  %206 = load i32*, i32** %9, align 8
  %207 = call i32 @git_patch_free(i32* %206)
  %208 = call i32 @git_buf_dispose(%struct.TYPE_11__* %10)
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 @git_blob_free(i32* %209)
  %211 = load i32*, i32** %2, align 8
  %212 = call i32 @git_blob_free(i32* %211)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_config(i32**, i32) #2

declare dso_local i32 @git_config_set_bool(i32*, i8*, i32) #2

declare dso_local i32 @git_config_set_string(i32*, i8*, i8*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @cl_git_append2file(i8*, i8*) #2

declare dso_local i32 @git_oid_fromstrn(i32*, i8*, i32) #2

declare dso_local i32 @git_blob_lookup_prefix(i32**, i32, i32*, i32) #2

declare dso_local i32 @quick_diff_blob_to_str(i32*, i8*, i8*, i64, i32*) #2

declare dso_local i32 @assert_identical_blobs_comparison(%struct.TYPE_13__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @assert_one_modified(i32, i32, i32, i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @git_patch_from_blob_and_buffer(i32**, i32*, i8*, i8*, i32, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_11__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

declare dso_local i32 @git_blob_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
