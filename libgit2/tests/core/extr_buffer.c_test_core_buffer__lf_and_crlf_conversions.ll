; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__lf_and_crlf_conversions.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_buffer.c_test_core_buffer__lf_and_crlf_conversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"lf\0Alf\0Alf\0Alf\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"lf\0D\0Alf\0D\0Alf\0D\0Alf\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\0Alf\0Alf\0Alf\0Alf\0Alf\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\0D\0Alf\0D\0Alf\0D\0Alf\0D\0Alf\0D\0Alf\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"crlf\0D\0Acrlf\0D\0Acrlf\0D\0Acrlf\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"crlf\0Acrlf\0Acrlf\0Acrlf\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"\0D\0Acrlf\0D\0Acrlf\0D\0Acrlf\0D\0Acrlf\0D\0Acrlf\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"\0Acrlf\0Acrlf\0Acrlf\0Acrlf\0Acrlf\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"\0Alf\0Alf\0Acrlf\0D\0Alf\0Alf\0Acrlf\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"\0D\0Alf\0D\0Alf\0D\0Acrlf\0D\0Alf\0D\0Alf\0D\0Acrlf\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"\0Alf\0Alf\0Acrlf\0Alf\0Alf\0Acrlf\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\0Acrlf\0D\0Acrlf\0D\0Alf\0Acrlf\0D\0Acrlf\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"\0D\0Acrlf\0D\0Acrlf\0D\0Alf\0D\0Acrlf\0D\0Acrlf\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"\0Acrlf\0Acrlf\0Alf\0Acrlf\0Acrlf\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\0Dcrlf\0D\0Alf\0Alf\0Acr\0Dcrlf\0D\0Alf\0Acr\0D\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"\0Dcrlf\0D\0Alf\0D\0Alf\0D\0Acr\0Dcrlf\0D\0Alf\0D\0Acr\0D\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"\0Dcrlf\0Alf\0Alf\0Acr\0Dcrlf\0Alf\0Acr\0D\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\0Dcr\0D\00", align 1
@ALL_CRLF_TEXT_RAW = common dso_local global i8* null, align 8
@ALL_CRLF_TEXT_AS_CRLF = common dso_local global i8* null, align 8
@ALL_CRLF_TEXT_AS_LF = common dso_local global i8* null, align 8
@ALL_LF_TEXT_RAW = common dso_local global i8* null, align 8
@ALL_LF_TEXT_AS_CRLF = common dso_local global i8* null, align 8
@ALL_LF_TEXT_AS_LF = common dso_local global i8* null, align 8
@MORE_CRLF_TEXT_RAW = common dso_local global i8* null, align 8
@MORE_CRLF_TEXT_AS_CRLF = common dso_local global i8* null, align 8
@MORE_CRLF_TEXT_AS_LF = common dso_local global i8* null, align 8
@MORE_LF_TEXT_RAW = common dso_local global i8* null, align 8
@MORE_LF_TEXT_AS_CRLF = common dso_local global i8* null, align 8
@MORE_LF_TEXT_AS_LF = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_buffer__lf_and_crlf_conversions() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca %struct.TYPE_10__, align 8
  %3 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %4 = bitcast %struct.TYPE_10__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %5 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @check_buf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @check_buf(i8* %14, i8* %16)
  %18 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @check_buf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %24 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @check_buf(i8* %27, i8* %29)
  %31 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @check_buf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %35)
  %37 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %38 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @check_buf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %43 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %44 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @check_buf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %47)
  %49 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %50 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @check_buf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %53)
  %55 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %56 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %57 = call i32 @cl_git_pass(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @check_buf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %59)
  %61 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %62 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @check_buf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %65)
  %67 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %68 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %69 = call i32 @cl_git_pass(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @check_buf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %71)
  %73 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %74 = call i32 @cl_git_pass(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @check_buf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8* %76)
  %78 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %79 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %80 = call i32 @cl_git_pass(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @check_buf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8* %82)
  %84 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %85 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %86 = call i32 @cl_git_pass(i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @check_buf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8* %88)
  %90 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %91 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %92 = call i32 @cl_git_pass(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @check_buf(i8* %94, i8* %96)
  %98 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %99 = call i32 @cl_git_pass(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @check_buf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* %101)
  %103 = call i32 @git_buf_dispose(%struct.TYPE_10__* %1)
  %104 = call i32 @git_buf_dispose(%struct.TYPE_10__* %2)
  %105 = load i8*, i8** @ALL_CRLF_TEXT_RAW, align 8
  %106 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* %105)
  %107 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %108 = call i32 @cl_git_pass(i32 %107)
  %109 = load i8*, i8** @ALL_CRLF_TEXT_AS_CRLF, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @check_buf(i8* %109, i8* %111)
  %113 = load i8*, i8** @ALL_CRLF_TEXT_RAW, align 8
  %114 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* %113)
  %115 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %116 = call i32 @cl_git_pass(i32 %115)
  %117 = load i8*, i8** @ALL_CRLF_TEXT_AS_LF, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @check_buf(i8* %117, i8* %119)
  %121 = call i32 @git_buf_dispose(%struct.TYPE_10__* %1)
  %122 = call i32 @git_buf_dispose(%struct.TYPE_10__* %2)
  %123 = load i8*, i8** @ALL_LF_TEXT_RAW, align 8
  %124 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* %123)
  %125 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %126 = call i32 @cl_git_pass(i32 %125)
  %127 = load i8*, i8** @ALL_LF_TEXT_AS_CRLF, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @check_buf(i8* %127, i8* %129)
  %131 = load i8*, i8** @ALL_LF_TEXT_RAW, align 8
  %132 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* %131)
  %133 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %134 = call i32 @cl_git_pass(i32 %133)
  %135 = load i8*, i8** @ALL_LF_TEXT_AS_LF, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @check_buf(i8* %135, i8* %137)
  %139 = call i32 @git_buf_dispose(%struct.TYPE_10__* %1)
  %140 = call i32 @git_buf_dispose(%struct.TYPE_10__* %2)
  %141 = load i8*, i8** @MORE_CRLF_TEXT_RAW, align 8
  %142 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* %141)
  %143 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %144 = call i32 @cl_git_pass(i32 %143)
  %145 = load i8*, i8** @MORE_CRLF_TEXT_AS_CRLF, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @check_buf(i8* %145, i8* %147)
  %149 = load i8*, i8** @MORE_CRLF_TEXT_RAW, align 8
  %150 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* %149)
  %151 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %152 = call i32 @cl_git_pass(i32 %151)
  %153 = load i8*, i8** @MORE_CRLF_TEXT_AS_LF, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @check_buf(i8* %153, i8* %155)
  %157 = call i32 @git_buf_dispose(%struct.TYPE_10__* %1)
  %158 = call i32 @git_buf_dispose(%struct.TYPE_10__* %2)
  %159 = load i8*, i8** @MORE_LF_TEXT_RAW, align 8
  %160 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* %159)
  %161 = call i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %162 = call i32 @cl_git_pass(i32 %161)
  %163 = load i8*, i8** @MORE_LF_TEXT_AS_CRLF, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @check_buf(i8* %163, i8* %165)
  %167 = load i8*, i8** @MORE_LF_TEXT_RAW, align 8
  %168 = call i32 @git_buf_sets(%struct.TYPE_10__* %1, i8* %167)
  %169 = call i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__* %2, %struct.TYPE_10__* %1)
  %170 = call i32 @cl_git_pass(i32 %169)
  %171 = load i8*, i8** @MORE_LF_TEXT_AS_LF, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %2, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @check_buf(i8* %171, i8* %173)
  %175 = call i32 @git_buf_dispose(%struct.TYPE_10__* %1)
  %176 = call i32 @git_buf_dispose(%struct.TYPE_10__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_sets(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_text_lf_to_crlf(%struct.TYPE_10__*, %struct.TYPE_10__*) #2

declare dso_local i32 @check_buf(i8*, i8*) #2

declare dso_local i32 @git_buf_text_crlf_to_lf(%struct.TYPE_10__*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
