; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_alternates.c_init_linked_repo.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_alternates.c_init_linked_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@destpath = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@filepath = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"objects\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"objects/info\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"alternates\00", align 1
@file = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @init_linked_repo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_linked_repo(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 @git_buf_clear(%struct.TYPE_7__* @destpath)
  %6 = call i32 @git_buf_clear(%struct.TYPE_7__* @filepath)
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @git_repository_init(i32* @repo, i8* %7, i32 1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @git_path_prettify(%struct.TYPE_7__* @destpath, i8* %10, i32* null)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @destpath, i32 0, i32 0), align 4
  %14 = call i32 @git_buf_joinpath(%struct.TYPE_7__* @destpath, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @git_repository_path(i32 %16)
  %18 = call i32 @git_buf_joinpath(%struct.TYPE_7__* @filepath, i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @filepath, i32 0, i32 0), align 4
  %21 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %22 = call i32 @git_futils_mkdir(i32 %20, i32 493, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @filepath, i32 0, i32 0), align 4
  %25 = call i32 @git_buf_joinpath(%struct.TYPE_7__* @filepath, i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = call i32 @git_buf_cstr(%struct.TYPE_7__* @filepath)
  %28 = call i32 @git_filebuf_open(i32* @file, i32 %27, i32 0, i32 438)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = call i32 @git_buf_cstr(%struct.TYPE_7__* @destpath)
  %31 = call i32 @git_filebuf_printf(i32* @file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = call i32 @git_filebuf_commit(i32* @file)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @repo, align 4
  %35 = call i32 @git_repository_free(i32 %34)
  ret void
}

declare dso_local i32 @git_buf_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32*, i8*, i32) #1

declare dso_local i32 @git_path_prettify(%struct.TYPE_7__*, i8*, i32*) #1

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @git_repository_path(i32) #1

declare dso_local i32 @git_futils_mkdir(i32, i32, i32) #1

declare dso_local i32 @git_filebuf_open(i32*, i32, i32, i32) #1

declare dso_local i32 @git_buf_cstr(%struct.TYPE_7__*) #1

declare dso_local i32 @git_filebuf_printf(i32*, i8*, i32) #1

declare dso_local i32 @git_filebuf_commit(i32*) #1

declare dso_local i32 @git_repository_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
