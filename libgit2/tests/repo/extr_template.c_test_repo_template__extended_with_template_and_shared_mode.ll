; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_test_repo_template__extended_with_template_and_shared_mode.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_test_repo_template__extended_with_template_and_shared_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32 }

@GIT_REPOSITORY_INIT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GIT_REPOSITORY_INIT_MKPATH = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"template\00", align 1
@GIT_REPOSITORY_INIT_SHARED_GROUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"init_shared_from_tpl\00", align 1
@_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"core.filemode\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"hooks\00", align 1
@GIT_FILEMODE_TREE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_template__extended_with_template_and_shared_mode() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_REPOSITORY_INIT_OPTIONS_INIT to i8*), i64 24, i1 false)
  %5 = load i32, i32* @GIT_REPOSITORY_INIT_MKPATH, align 4
  %6 = load i32, i32* @GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE, align 4
  %7 = or i32 %5, %6
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = load i32, i32* @GIT_REPOSITORY_INIT_SHARED_GROUP, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i32 %10, i32* %11, align 8
  %12 = call i32 @setup_templates(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = call i32 @setup_repo(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %1)
  %14 = load i32, i32* @_repo, align 4
  %15 = call i32 @cl_repo_get_bool(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @_repo, align 4
  %17 = call i8* @git_repository_path(i32 %16)
  store i8* %17, i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %20 = load i32, i32* @GIT_REPOSITORY_INIT_SHARED_GROUP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @assert_mode_seems_okay(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 1, i32 %22)
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* @GIT_FILEMODE_TREE, align 4
  %26 = load i32, i32* @GIT_REPOSITORY_INIT_SHARED_GROUP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @assert_mode_seems_okay(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %27, i32 1, i32 %28)
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @assert_mode_seems_okay(i8* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %31, i32 0, i32 %32)
  %34 = load i32, i32* @_repo, align 4
  %35 = call i32 @validate_templates(i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_templates(i8*, i32) #2

declare dso_local i32 @setup_repo(i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_repo_get_bool(i32, i8*) #2

declare dso_local i8* @git_repository_path(i32) #2

declare dso_local i32 @assert_mode_seems_okay(i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @validate_templates(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
