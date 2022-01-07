; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_crlf.c_test_add_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_crlf.c_test_add_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.compare_data = type { i8*, i8*, i8*, i8*, i8*, i32* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"autocrlf_\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c",safecrlf_\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"* %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"crlf/.gitattributes\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"core.safecrlf\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@g_index = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"crlf_data\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"_to_odb\00", align 1
@expected_fixture = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@add_and_check_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @test_add_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_add_index(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca %struct.compare_data, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = bitcast %struct.TYPE_10__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %14 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %15 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %16 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %17 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 0
  %18 = call i8* (...) @system_type()
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 1
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 2
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 3
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 4
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = call i32 @git_buf_puts(%struct.TYPE_10__* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @git_buf_puts(%struct.TYPE_10__* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @git_buf_puts(%struct.TYPE_10__* %9, i8* %29)
  %31 = call i32 @git_buf_puts(%struct.TYPE_10__* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @git_buf_puts(%struct.TYPE_10__* %9, i8* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %3
  %38 = call i32 @git_buf_puts(%struct.TYPE_10__* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %12, align 8
  br label %40

40:                                               ; preds = %64, %37
  %41 = load i8*, i8** %12, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i8*, i8** %12, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @git_buf_putc(%struct.TYPE_10__* %9, i8 signext 44)
  br label %63

51:                                               ; preds = %44
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 61
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @git_buf_putc(%struct.TYPE_10__* %9, i8 signext 95)
  br label %62

58:                                               ; preds = %51
  %59 = load i8*, i8** %12, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @git_buf_putc(%struct.TYPE_10__* %9, i8 signext %60)
  br label %62

62:                                               ; preds = %58, %56
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %12, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %12, align 8
  br label %40

67:                                               ; preds = %40
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @git_buf_printf(%struct.TYPE_10__* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %68)
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %67, %3
  %74 = load i32, i32* @g_repo, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @cl_repo_set_string(i32 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @g_repo, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @cl_repo_set_string(i32 %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @g_index, align 4
  %81 = call i32 @git_index_clear(i32 %80)
  %82 = call i32 @cl_git_pass(i32 %81)
  %83 = call i8* (...) @system_type()
  %84 = call i32 @git_buf_joinpath(%struct.TYPE_10__* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %83)
  %85 = call i32 @git_buf_puts(%struct.TYPE_10__* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @git_buf_joinpath(%struct.TYPE_10__* @expected_fixture, i8* %87, i8* %89)
  %91 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expected_fixture, i32 0, i32 0), align 8
  %92 = call i32 @cl_fixture_sandbox(i8* %91)
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 4
  store i8* %94, i8** %95, align 8
  %96 = load i32, i32* @add_and_check_file, align 4
  %97 = call i32 @git_path_direach(%struct.TYPE_10__* %10, i32 0, i32 %96, %struct.compare_data* %11)
  %98 = call i32 @cl_git_pass(i32 %97)
  %99 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @expected_fixture, i32 0, i32 0), align 8
  %100 = call i32 @cl_fixture_cleanup(i8* %99)
  %101 = call i32 @git_buf_dispose(%struct.TYPE_10__* @expected_fixture)
  %102 = call i32 @git_buf_dispose(%struct.TYPE_10__* %7)
  %103 = call i32 @git_buf_dispose(%struct.TYPE_10__* @expected_fixture)
  %104 = call i32 @git_buf_dispose(%struct.TYPE_10__* %8)
  %105 = call i32 @git_buf_dispose(%struct.TYPE_10__* %9)
  %106 = call i32 @git_buf_dispose(%struct.TYPE_10__* %10)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @system_type(...) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @git_buf_putc(%struct.TYPE_10__*, i8 signext) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_10__*, i8*, i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_repo_set_string(i32, i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_index_clear(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_10__*, i8*, i8*) #2

declare dso_local i32 @cl_fixture_sandbox(i8*) #2

declare dso_local i32 @git_path_direach(%struct.TYPE_10__*, i32, i32, %struct.compare_data*) #2

declare dso_local i32 @cl_fixture_cleanup(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
