; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_systemattrs.c_test_filter_systemattrs__reads_system_attributes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_systemattrs.c_test_filter_systemattrs__reads_system_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"799770d\00", align 1
@ALL_LF_TEXT_RAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"file.bin\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"file.crlf\00", align 1
@ALL_LF_TEXT_AS_CRLF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"file.lf\00", align 1
@ALL_LF_TEXT_AS_LF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_systemattrs__reads_system_attributes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 8, i1 false)
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_revparse_single(i32** %1, i32 %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @ALL_LF_TEXT_RAW, align 4
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @git_blob_rawcontent(i32* %8)
  %10 = call i32 @cl_assert_equal_s(i32 %7, i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_blob_filter(%struct.TYPE_4__* %2, i32* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @ALL_LF_TEXT_RAW, align 4
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cl_assert_equal_s(i32 %14, i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_blob_filter(%struct.TYPE_4__* %2, i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @ALL_LF_TEXT_AS_CRLF, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cl_assert_equal_s(i32 %21, i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_blob_filter(%struct.TYPE_4__* %2, i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @ALL_LF_TEXT_AS_LF, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cl_assert_equal_s(i32 %28, i32 %30)
  %32 = call i32 @git_buf_dispose(%struct.TYPE_4__* %2)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @git_blob_free(i32* %33)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_blob_rawcontent(i32*) #2

declare dso_local i32 @git_blob_filter(%struct.TYPE_4__*, i32*, i8*, i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_4__*) #2

declare dso_local i32 @git_blob_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
