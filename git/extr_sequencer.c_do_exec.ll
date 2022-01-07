; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_do_exec.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_do_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.repository = type { i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Executing: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"GIT_DIR=%s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"GIT_WORK_TREE=%s\00", align 1
@RUN_USING_SHELL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"could not read index\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@.str.5 = private unnamed_addr constant [88 x i8] c"execution failed: %s\0A%sYou can fix the problem, and then run\0A\0A  git rebase --continue\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"and made changes to the index and/or the working tree\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [148 x i8] c"execution succeeded: %s\0Abut left changes to the index and/or the working tree\0ACommit or stash your changes, and then run\0A\0A  git rebase --continue\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*)* @do_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_exec(%struct.repository* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.argv_array, align 4
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast %struct.argv_array* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %11 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 16, i1 false)
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %15, i8** %16, align 16
  %17 = call i32 (...) @get_git_dir()
  %18 = call i32 @absolute_path(i32 %17)
  %19 = call i32 @argv_array_pushf(%struct.argv_array* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i32 (...) @get_git_work_tree()
  %21 = call i32 @absolute_path(i32 %20)
  %22 = call i32 @argv_array_pushf(%struct.argv_array* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %24 = load i32, i32* @RUN_USING_SHELL, align 4
  %25 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @run_command_v_opt_cd_env(i8** %23, i32 %24, i32* null, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.repository*, %struct.repository** %4, align 8
  %29 = getelementptr inbounds %struct.repository, %struct.repository* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @discard_index(i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = load %struct.repository*, %struct.repository** %4, align 8
  %35 = call i64 @repo_read_index(%struct.repository* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %2
  %38 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @error(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %33
  %41 = load %struct.repository*, %struct.repository** %4, align 8
  %42 = call i32 @require_clean_work_tree(%struct.repository* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 1, i32 1)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = call i32 @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i8* @N_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  br label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i8* [ %51, %50 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %52 ]
  %55 = call i32 (i32, i8*, ...) @warning(i32 %46, i8* %47, i8* %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 127
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %53
  br label %68

60:                                               ; preds = %40
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = call i32 @_(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.8, i64 0, i64 0))
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 (i32, i8*, ...) @warning(i32 %64, i8* %65)
  store i32 1, i32* %9, align 4
  br label %67

67:                                               ; preds = %63, %60
  br label %68

68:                                               ; preds = %67, %59
  %69 = call i32 @argv_array_clear(%struct.argv_array* %6)
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %37
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i32) #2

declare dso_local i32 @absolute_path(i32) #2

declare dso_local i32 @get_git_dir(...) #2

declare dso_local i32 @get_git_work_tree(...) #2

declare dso_local i32 @run_command_v_opt_cd_env(i8**, i32, i32*, i32) #2

declare dso_local i64 @discard_index(i32) #2

declare dso_local i64 @repo_read_index(%struct.repository*) #2

declare dso_local i32 @error(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @require_clean_work_tree(%struct.repository*, i8*, i32*, i32, i32) #2

declare dso_local i32 @warning(i32, i8*, ...) #2

declare dso_local i8* @N_(i8*) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
