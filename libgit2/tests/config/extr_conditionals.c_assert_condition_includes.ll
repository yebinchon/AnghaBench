; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_conditionals.c_assert_condition_includes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_conditionals.c_assert_condition_includes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"[includeIf \22%s:%s\22]\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"path = other\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"empty_standard_repo/.git/config\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.git/other\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"[foo]\0Abar=baz\0A\00", align 1
@_repo = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"foo.bar\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @assert_condition_includes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_condition_includes(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @git_buf_printf(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_buf_puts(%struct.TYPE_9__* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 (...) @cl_git_sandbox_reopen()
  store i32 %20, i32* @_repo, align 4
  %21 = load i32, i32* @_repo, align 4
  %22 = call i32 @git_repository_config(i32** %8, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = call i32 @git_buf_clear(%struct.TYPE_9__* %7)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @git_config_get_string_buf(%struct.TYPE_9__* %7, i32* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @git_buf_cstr(%struct.TYPE_9__* %7)
  %32 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %31)
  br label %38

33:                                               ; preds = %3
  %34 = load i32, i32* @GIT_ENOTFOUND, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @git_config_get_string_buf(%struct.TYPE_9__* %7, i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %37 = call i32 @cl_git_fail_with(i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = call i32 @git_buf_dispose(%struct.TYPE_9__* %7)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @git_config_free(i32* %40)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_printf(%struct.TYPE_9__*, i8*, i8*, i8*) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_sandbox_reopen(...) #2

declare dso_local i32 @git_repository_config(i32**, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_9__*) #2

declare dso_local i32 @git_config_get_string_buf(%struct.TYPE_9__*, i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_cstr(%struct.TYPE_9__*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

declare dso_local i32 @git_config_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
