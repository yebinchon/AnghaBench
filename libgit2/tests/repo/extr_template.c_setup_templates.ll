; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_setup_templates.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_setup_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"template\00", align 1
@fixture_templates = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"hooks\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"link.sample\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"update.sample\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c".dotfile\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"something\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"tmp_global_path\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"init.templatedir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @setup_templates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_templates(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = call i32 @cl_fixture_sandbox(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @p_rename(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @cl_must_pass(i32 %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** @fixture_templates, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @git_buf_join3(%struct.TYPE_7__* %5, i8 signext 47, i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @p_symlink(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = call i32 @cl_must_pass(i32 %22)
  %24 = call i32 @git_buf_clear(%struct.TYPE_7__* %5)
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @git_buf_join3(%struct.TYPE_7__* %5, i8 signext 47, i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cl_git_mkfile(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %31 = call i32 @git_buf_clear(%struct.TYPE_7__* %5)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %15
  %35 = call i32 (...) @clar_sandbox_path()
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @git_buf_joinpath(%struct.TYPE_7__* %5, i32 %35, i8* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @create_tmp_global_config(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %34, %15
  %43 = call i32 @git_buf_dispose(%struct.TYPE_7__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_fixture_sandbox(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_rename(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_join3(%struct.TYPE_7__*, i8 signext, i8*, i8*, i8*) #2

declare dso_local i32 @p_symlink(i8*, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_7__*) #2

declare dso_local i32 @cl_git_mkfile(i32, i8*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_7__*, i32, i8*) #2

declare dso_local i32 @clar_sandbox_path(...) #2

declare dso_local i32 @create_tmp_global_config(i8*, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
