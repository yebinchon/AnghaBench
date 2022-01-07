; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_run_external_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_run_external_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.diff_queue_struct = type { i32 }
%struct.diff_filespec = type { i32 }
%struct.diff_options = type { i32, i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"GIT_DIFF_PATH_COUNTER=%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GIT_DIFF_PATH_TOTAL=%d\00", align 1
@RUN_USING_SHELL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"external diff died, stopping at %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, %struct.diff_options*)* @run_external_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_external_diff(i8* %0, i8* %1, i8* %2, %struct.diff_filespec* %3, %struct.diff_filespec* %4, i8* %5, %struct.diff_options* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.diff_filespec*, align 8
  %12 = alloca %struct.diff_filespec*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.diff_options*, align 8
  %15 = alloca %struct.argv_array, align 4
  %16 = alloca %struct.argv_array, align 4
  %17 = alloca %struct.diff_queue_struct*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %11, align 8
  store %struct.diff_filespec* %4, %struct.diff_filespec** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.diff_options* %6, %struct.diff_options** %14, align 8
  %18 = bitcast %struct.argv_array* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %19 = bitcast %struct.argv_array* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %17, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @argv_array_push(%struct.argv_array* %15, i8* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @argv_array_push(%struct.argv_array* %15, i8* %22)
  %24 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %25 = icmp ne %struct.diff_filespec* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %7
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %28 = icmp ne %struct.diff_filespec* %27, null
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load %struct.diff_options*, %struct.diff_options** %14, align 8
  %31 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %35 = call i32 @add_external_diff_name(i32 %32, %struct.argv_array* %15, i8* %33, %struct.diff_filespec* %34)
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %29
  %39 = load %struct.diff_options*, %struct.diff_options** %14, align 8
  %40 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %44 = call i32 @add_external_diff_name(i32 %41, %struct.argv_array* %15, i8* %42, %struct.diff_filespec* %43)
  br label %56

45:                                               ; preds = %29
  %46 = load %struct.diff_options*, %struct.diff_options** %14, align 8
  %47 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %51 = call i32 @add_external_diff_name(i32 %48, %struct.argv_array* %15, i8* %49, %struct.diff_filespec* %50)
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @argv_array_push(%struct.argv_array* %15, i8* %52)
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @argv_array_push(%struct.argv_array* %15, i8* %54)
  br label %56

56:                                               ; preds = %45, %38
  br label %57

57:                                               ; preds = %56, %26, %7
  %58 = load %struct.diff_options*, %struct.diff_options** %14, align 8
  %59 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = call i32 @argv_array_pushf(%struct.argv_array* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %17, align 8
  %64 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @argv_array_pushf(%struct.argv_array* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.diff_filespec*, %struct.diff_filespec** %11, align 8
  %68 = call i32 @diff_free_filespec_data(%struct.diff_filespec* %67)
  %69 = load %struct.diff_filespec*, %struct.diff_filespec** %12, align 8
  %70 = call i32 @diff_free_filespec_data(%struct.diff_filespec* %69)
  %71 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %15, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RUN_USING_SHELL, align 4
  %74 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %16, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @run_command_v_opt_cd_env(i32 %72, i32 %73, i32* null, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %57
  %79 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 @die(i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %78, %57
  %83 = call i32 (...) @remove_tempfile()
  %84 = call i32 @argv_array_clear(%struct.argv_array* %15)
  %85 = call i32 @argv_array_clear(%struct.argv_array* %16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #2

declare dso_local i32 @add_external_diff_name(i32, %struct.argv_array*, i8*, %struct.diff_filespec*) #2

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i32) #2

declare dso_local i32 @diff_free_filespec_data(%struct.diff_filespec*) #2

declare dso_local i64 @run_command_v_opt_cd_env(i32, i32, i32*, i32) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @remove_tempfile(...) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
