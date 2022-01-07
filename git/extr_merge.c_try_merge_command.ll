; ModuleID = '/home/carl/AnghaBench/git/extr_merge.c_try_merge_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge.c_try_merge_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.repository = type { i32 }
%struct.commit_list = type { i32, %struct.commit_list* }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"merge-%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to read the cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_merge_command(%struct.repository* %0, i8* %1, i64 %2, i8** %3, %struct.commit_list* %4, i8* %5, %struct.commit_list* %6) #0 {
  %8 = alloca %struct.repository*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.commit_list*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.commit_list*, align 8
  %15 = alloca %struct.argv_array, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.commit_list*, align 8
  store %struct.repository* %0, %struct.repository** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8** %3, i8*** %11, align 8
  store %struct.commit_list* %4, %struct.commit_list** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.commit_list* %6, %struct.commit_list** %14, align 8
  %19 = bitcast %struct.argv_array* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @argv_array_pushf(%struct.argv_array* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 0, i32* %16, align 4
  br label %22

22:                                               ; preds = %34, %7
  %23 = load i32, i32* %16, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load i8**, i8*** %11, align 8
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @argv_array_pushf(%struct.argv_array* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %16, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  store %struct.commit_list* %38, %struct.commit_list** %18, align 8
  br label %39

39:                                               ; preds = %48, %37
  %40 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %41 = icmp ne %struct.commit_list* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %44 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @merge_argument(i32 %45)
  %47 = call i32 @argv_array_push(%struct.argv_array* %15, i8* %46)
  br label %48

48:                                               ; preds = %42
  %49 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %50 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %49, i32 0, i32 1
  %51 = load %struct.commit_list*, %struct.commit_list** %50, align 8
  store %struct.commit_list* %51, %struct.commit_list** %18, align 8
  br label %39

52:                                               ; preds = %39
  %53 = call i32 @argv_array_push(%struct.argv_array* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @argv_array_push(%struct.argv_array* %15, i8* %54)
  %56 = load %struct.commit_list*, %struct.commit_list** %14, align 8
  store %struct.commit_list* %56, %struct.commit_list** %18, align 8
  br label %57

57:                                               ; preds = %66, %52
  %58 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %59 = icmp ne %struct.commit_list* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %62 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @merge_argument(i32 %63)
  %65 = call i32 @argv_array_push(%struct.argv_array* %15, i8* %64)
  br label %66

66:                                               ; preds = %60
  %67 = load %struct.commit_list*, %struct.commit_list** %18, align 8
  %68 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %67, i32 0, i32 1
  %69 = load %struct.commit_list*, %struct.commit_list** %68, align 8
  store %struct.commit_list* %69, %struct.commit_list** %18, align 8
  br label %57

70:                                               ; preds = %57
  %71 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %15, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RUN_GIT_CMD, align 4
  %74 = call i32 @run_command_v_opt(i32 %72, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = call i32 @argv_array_clear(%struct.argv_array* %15)
  %76 = load %struct.repository*, %struct.repository** %8, align 8
  %77 = getelementptr inbounds %struct.repository, %struct.repository* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @discard_index(i32 %78)
  %80 = load %struct.repository*, %struct.repository** %8, align 8
  %81 = call i64 @repo_read_index(%struct.repository* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %85 = call i32 @die(i32 %84)
  br label %86

86:                                               ; preds = %83, %70
  %87 = load %struct.repository*, %struct.repository** %8, align 8
  %88 = getelementptr inbounds %struct.repository, %struct.repository* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @resolve_undo_clear_index(i32 %89)
  %91 = load i32, i32* %17, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i8*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i8* @merge_argument(i32) #2

declare dso_local i32 @run_command_v_opt(i32, i32) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

declare dso_local i32 @discard_index(i32) #2

declare dso_local i64 @repo_read_index(%struct.repository*) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @resolve_undo_clear_index(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
