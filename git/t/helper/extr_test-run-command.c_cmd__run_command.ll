; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-run-command.c_cmd__run_command.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-run-command.c_cmd__run_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"testsuite\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"env\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"env specifier without a value\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"start-command-ENOENT\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"FAIL %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"run-command\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"run-command-parallel\00", align 1
@parallel_next = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"run-command-abort\00", align 1
@task_finished = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"run-command-no-jobs\00", align 1
@no_job = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"check usage\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__run_command(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.child_process, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = bitcast %struct.child_process* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = call i32 @testsuite(i32 %19, i8** %21)
  %23 = call i32 @exit(i32 %22) #4
  unreachable

24:                                               ; preds = %11, %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %134

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %53

36:                                               ; preds = %29
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 1
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @argv_array_push(i32* %44, i8* %47)
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 2
  store i8** %50, i8*** %5, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sub nsw i32 %51, 2
  store i32 %52, i32* %4, align 4
  br label %29

53:                                               ; preds = %29
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %134

57:                                               ; preds = %53
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 2
  %60 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  store i8** %59, i8*** %60, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %57
  %67 = call i64 @start_command(%struct.child_process* %6)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @ENOENT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %134

74:                                               ; preds = %69, %66
  %75 = load i32, i32* @stderr, align 4
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  store i32 1, i32* %3, align 4
  br label %134

80:                                               ; preds = %57
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = call i32 @run_command(%struct.child_process* %6)
  %88 = call i32 @exit(i32 %87) #4
  unreachable

89:                                               ; preds = %80
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @atoi(i8* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 3
  %96 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  store i8** %95, i8*** %96, align 8
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @parallel_next, align 4
  %105 = call i32 @run_processes_parallel(i32 %103, i32 %104, i32* null, i32* null, %struct.child_process* %6)
  %106 = call i32 @exit(i32 %105) #4
  unreachable

107:                                              ; preds = %89
  %108 = load i8**, i8*** %5, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @parallel_next, align 4
  %116 = load i32*, i32** @task_finished, align 8
  %117 = call i32 @run_processes_parallel(i32 %114, i32 %115, i32* null, i32* %116, %struct.child_process* %6)
  %118 = call i32 @exit(i32 %117) #4
  unreachable

119:                                              ; preds = %107
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @no_job, align 4
  %128 = load i32*, i32** @task_finished, align 8
  %129 = call i32 @run_processes_parallel(i32 %126, i32 %127, i32* null, i32* %128, %struct.child_process* %6)
  %130 = call i32 @exit(i32 %129) #4
  unreachable

131:                                              ; preds = %119
  %132 = load i32, i32* @stderr, align 4
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %134

134:                                              ; preds = %131, %74, %73, %56, %27
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @testsuite(i32, i8**) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @run_processes_parallel(i32, i32, i32*, i32*, %struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
