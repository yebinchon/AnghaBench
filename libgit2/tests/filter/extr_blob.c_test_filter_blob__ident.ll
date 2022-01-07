; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_blob.c_test_filter_blob__ident.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_blob.c_test_filter_blob__ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"crlf/test.ident\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Some text\0A$Id$\0AGoes there\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"test.ident\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Some text\0A$Id: Any old just you want$\0AGoes there\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"filter.bin\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"filter.identcrlf\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"Some text\0D\0A$Id: 3164f585d548ac68027d22b104f2d8100b2b6845 $\0D\0AGoes there\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"filter.identlf\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Some text\0A$Id: 3164f585d548ac68027d22b104f2d8100b2b6845 $\0AGoes there\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_blob__ident() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  %5 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_blob_create_from_workdir(i32* %1, i32 %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_blob_lookup(i32** %2, i32 %9, i32* %1)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @git_blob_rawcontent(i32* %12)
  %14 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_blob_free(i32* %15)
  %17 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32, i32* @g_repo, align 4
  %19 = call i32 @git_blob_create_from_workdir(i32* %1, i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_blob_lookup(i32** %2, i32 %21, i32* %1)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_blob_rawcontent(i32* %24)
  %26 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_blob_filter(%struct.TYPE_4__* %3, i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_blob_filter(%struct.TYPE_4__* %3, i32* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @git_blob_filter(%struct.TYPE_4__* %3, i32* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* null)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0), i32 %43)
  %45 = call i32 @git_buf_dispose(%struct.TYPE_4__* %3)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @git_blob_free(i32* %46)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_blob_create_from_workdir(i32*, i32, i8*) #2

declare dso_local i32 @git_blob_lookup(i32**, i32, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_blob_rawcontent(i32*) #2

declare dso_local i32 @git_blob_free(i32*) #2

declare dso_local i32 @git_blob_filter(%struct.TYPE_4__*, i32*, i8*, i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
