; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_absorb_git_dir_into_superproject.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_absorb_git_dir_into_superproject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.child_process = type { i8*, i32, i32, i32, i32 }
%struct.submodule = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1
@READ_GITFILE_ERR_STAT_FAILED = common dso_local global i32 0, align 4
@READ_GITFILE_ERR_NOT_A_REPO = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not lookup name for submodule '%s'\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"modules/%s\00", align 1
@ABSORB_GITDIR_RECURSE_SUBMODULES = common dso_local global i32 0, align 4
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"we don't know how to pass the flags down?\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"--super-prefix\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"submodule--helper\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"absorb-git-dirs\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"could not recurse into submodule '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @absorb_git_dir_into_superproject(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca %struct.submodule*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.child_process, align 8
  %12 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @resolve_gitdir_gently(i32 %17, i32* %5)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @READ_GITFILE_ERR_STAT_FAILED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %109

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @READ_GITFILE_ERR_NOT_A_REPO, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @read_gitfile_error_die(i32 %32, i8* %33, i32* null)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @the_repository, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = call %struct.submodule* @submodule_from_path(i32 %36, i32* @null_oid, i8* %37)
  store %struct.submodule* %38, %struct.submodule** %8, align 8
  %39 = load %struct.submodule*, %struct.submodule** %8, align 8
  %40 = icmp ne %struct.submodule* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @die(i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i8*, i8** %3, align 8
  %47 = load %struct.submodule*, %struct.submodule** %8, align 8
  %48 = getelementptr inbounds %struct.submodule, %struct.submodule* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @git_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = call i32 @connect_work_tree_and_git_dir(i8* %46, i32 %50, i32 0)
  br label %69

52:                                               ; preds = %2
  %53 = load i8*, i8** %6, align 8
  %54 = call i8* @real_pathdup(i8* %53, i32 1)
  store i8* %54, i8** %9, align 8
  %55 = call i8* (...) @get_git_common_dir()
  %56 = call i8* @real_pathdup(i8* %55, i32 1)
  store i8* %56, i8** %10, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @starts_with(i8* %57, i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %52
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @relocate_single_git_dir_into_superproject(i8* %62)
  br label %64

64:                                               ; preds = %61, %52
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @free(i8* %67)
  br label %69

69:                                               ; preds = %64, %45
  %70 = call i32 @strbuf_release(%struct.strbuf* %7)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @ABSORB_GITDIR_RECURSE_SUBMODULES, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %109

75:                                               ; preds = %69
  %76 = bitcast %struct.child_process* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %77 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @ABSORB_GITDIR_RECURSE_SUBMODULES, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 @BUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %75
  %86 = call i8* (...) @get_super_prefix_or_empty()
  %87 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %86)
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %88)
  %90 = call i32 @strbuf_addch(%struct.strbuf* %12, i8 signext 47)
  %91 = load i8*, i8** %3, align 8
  %92 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 0
  store i8* %91, i8** %92, align 8
  %93 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  store i32 1, i32* %93, align 8
  %94 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 2
  store i32 1, i32* %94, align 4
  %95 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 4
  %96 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @argv_array_pushl(i32* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %99 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  %100 = call i32 @prepare_submodule_repo_env(i32* %99)
  %101 = call i64 @run_command(%struct.child_process* %11)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %85
  %104 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %105 = load i8*, i8** %3, align 8
  %106 = call i32 @die(i32 %104, i8* %105)
  br label %107

107:                                              ; preds = %103, %85
  %108 = call i32 @strbuf_release(%struct.strbuf* %12)
  br label %109

109:                                              ; preds = %25, %107, %69
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i8* @resolve_gitdir_gently(i32, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @read_gitfile_error_die(i32, i8*, i32*) #2

declare dso_local %struct.submodule* @submodule_from_path(i32, i32*, i8*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @connect_work_tree_and_git_dir(i8*, i32, i32) #2

declare dso_local i32 @git_path(i8*, i32) #2

declare dso_local i8* @real_pathdup(i8*, i32) #2

declare dso_local i8* @get_git_common_dir(...) #2

declare dso_local i32 @starts_with(i8*, i8*) #2

declare dso_local i32 @relocate_single_git_dir_into_superproject(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i8* @get_super_prefix_or_empty(...) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i32, i8*, i8*, i32*) #2

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
