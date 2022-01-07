; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_bad_to_remove_submodule.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_bad_to_remove_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i8*, i32, i32 }
%struct.strbuf = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"--porcelain\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"--ignore-submodules=none\00", align 1
@SUBMODULE_REMOVAL_IGNORE_UNTRACKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"-uno\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"-uall\00", align 1
@SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"--ignored\00", align 1
@SUBMODULE_REMOVAL_DIE_ON_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"could not start 'git status' in submodule '%s'\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"could not run 'git status' in submodule '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bad_to_remove_submodule(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.child_process, align 8
  %8 = alloca %struct.strbuf, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.child_process* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %11 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @file_exists(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @is_empty_dir(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %93

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @submodule_uses_gitfile(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %93

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 5
  %27 = call i32 @argv_array_pushl(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SUBMODULE_REMOVAL_IGNORE_UNTRACKED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 5
  %34 = call i32 @argv_array_push(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %38

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 5
  %37 = call i32 @argv_array_push(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SUBMODULE_REMOVAL_IGNORE_IGNORED_UNTRACKED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 5
  %45 = call i32 @argv_array_push(i32* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 4
  %48 = call i32 @prepare_submodule_repo_env(i32* %47)
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  store i32 -1, i32* %51, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  store i8* %52, i8** %53, align 8
  %54 = call i64 @start_command(%struct.child_process* %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SUBMODULE_REMOVAL_DIE_ON_ERROR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @die(i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %61, %56
  store i32 -1, i32* %9, align 4
  br label %90

66:                                               ; preds = %46
  %67 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @strbuf_read(%struct.strbuf* %8, i32 %68, i32 1024)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 1, i32* %9, align 4
  br label %73

73:                                               ; preds = %72, %66
  %74 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @close(i32 %75)
  %77 = call i64 @finish_command(%struct.child_process* %7)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SUBMODULE_REMOVAL_DIE_ON_ERROR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @die(i32 %85, i8* %86)
  br label %88

88:                                               ; preds = %84, %79
  store i32 -1, i32* %9, align 4
  br label %89

89:                                               ; preds = %88, %73
  br label %90

90:                                               ; preds = %89, %65
  %91 = call i32 @strbuf_release(%struct.strbuf* %8)
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %90, %24, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @file_exists(i8*) #2

declare dso_local i64 @is_empty_dir(i8*) #2

declare dso_local i32 @submodule_uses_gitfile(i8*) #2

declare dso_local i32 @argv_array_pushl(i32*, i8*, i8*, i8*, i32*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @prepare_submodule_repo_env(i32*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_read(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @finish_command(%struct.child_process*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
