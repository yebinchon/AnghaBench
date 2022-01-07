; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_crlf.c_test_checkout.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_crlf.c_test_checkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32 }
%struct.compare_data = type { i8*, i8*, i8*, i32* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@systype = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"_to_workdir\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"autocrlf_\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"* %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"crlf/.gitattributes\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@expected_fixture = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"crlf_data\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@compare_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_checkout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_checkout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca %struct.compare_data, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = bitcast %struct.TYPE_14__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %14 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %15 = bitcast %struct.TYPE_14__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %16 = bitcast %struct.TYPE_14__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %17 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %18 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %19 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 0
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 1
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 2
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 3
  store i32* null, i32** %24, align 8
  %25 = call i32 @git_buf_puts(%struct.TYPE_14__* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i8*, i8** @systype, align 8
  %28 = call i32 @git_buf_puts(%struct.TYPE_14__* %7, i8* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @git_buf_puts(%struct.TYPE_14__* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = call i32 @git_buf_puts(%struct.TYPE_14__* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @git_buf_puts(%struct.TYPE_14__* %8, i8* %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %81

40:                                               ; preds = %2
  %41 = call i32 @git_buf_puts(%struct.TYPE_14__* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i8*, i8** %4, align 8
  store i8* %43, i8** %12, align 8
  br label %44

44:                                               ; preds = %71, %40
  %45 = load i8*, i8** %12, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = call i32 @git_buf_putc(%struct.TYPE_14__* %8, i8 signext 44)
  %55 = call i32 @cl_git_pass(i32 %54)
  br label %70

56:                                               ; preds = %48
  %57 = load i8*, i8** %12, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 61
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = call i32 @git_buf_putc(%struct.TYPE_14__* %8, i8 signext 95)
  %63 = call i32 @cl_git_pass(i32 %62)
  br label %69

64:                                               ; preds = %56
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @git_buf_putc(%struct.TYPE_14__* %8, i8 signext %66)
  %68 = call i32 @cl_git_pass(i32 %67)
  br label %69

69:                                               ; preds = %64, %61
  br label %70

70:                                               ; preds = %69, %53
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %12, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %12, align 8
  br label %44

74:                                               ; preds = %44
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @git_buf_printf(%struct.TYPE_14__* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  %77 = call i32 @cl_git_pass(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %74, %2
  %82 = load i32, i32* @g_repo, align 4
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @cl_repo_set_string(i32 %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %83)
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @git_buf_joinpath(%struct.TYPE_14__* %6, i8* %86, i8* %88)
  %90 = call i32 @cl_git_pass(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @git_buf_joinpath(%struct.TYPE_14__* @expected_fixture, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %92)
  %94 = call i32 @cl_git_pass(i32 %93)
  %95 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @expected_fixture, i32 0, i32 0), align 8
  %96 = call i32 @cl_fixture_sandbox(i8* %95)
  %97 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @g_repo, align 4
  %100 = call i32 @git_checkout_head(i32 %99, %struct.TYPE_13__* %10)
  %101 = call i32 @cl_git_pass(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds %struct.compare_data, %struct.compare_data* %11, i32 0, i32 2
  store i8* %103, i8** %104, align 8
  %105 = load i32, i32* @compare_file, align 4
  %106 = call i32 @git_path_direach(%struct.TYPE_14__* %9, i32 0, i32 %105, %struct.compare_data* %11)
  %107 = call i32 @cl_git_pass(i32 %106)
  %108 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @expected_fixture, i32 0, i32 0), align 8
  %109 = call i32 @cl_fixture_cleanup(i8* %108)
  %110 = call i32 @git_buf_dispose(%struct.TYPE_14__* @expected_fixture)
  %111 = call i32 @git_buf_dispose(%struct.TYPE_14__* %5)
  %112 = call i32 @git_buf_dispose(%struct.TYPE_14__* @expected_fixture)
  %113 = call i32 @git_buf_dispose(%struct.TYPE_14__* %6)
  %114 = call i32 @git_buf_dispose(%struct.TYPE_14__* %8)
  %115 = call i32 @git_buf_dispose(%struct.TYPE_14__* %7)
  %116 = call i32 @git_buf_dispose(%struct.TYPE_14__* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @git_buf_putc(%struct.TYPE_14__*, i8 signext) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_14__*, i8*, i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_repo_set_string(i32, i8*, i8*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_14__*, i8*, i8*) #2

declare dso_local i32 @cl_fixture_sandbox(i8*) #2

declare dso_local i32 @git_checkout_head(i32, %struct.TYPE_13__*) #2

declare dso_local i32 @git_path_direach(%struct.TYPE_14__*, i32, i32, %struct.compare_data*) #2

declare dso_local i32 @cl_fixture_cleanup(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
