; ModuleID = '/home/carl/AnghaBench/git/extr_git.c_execv_dashed_external.c'
source_filename = "/home/carl/AnghaBench/git/extr_git.c_execv_dashed_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s doesn't support --super-prefix\00", align 1
@use_pager = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"git-%s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dashed\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"_run_dashed_\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"trace: exec:\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @execv_dashed_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execv_dashed_external(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.child_process, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %5 = bitcast %struct.child_process* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 32, i1 false)
  %6 = call i64 (...) @get_super_prefix()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %10 = load i8**, i8*** %2, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @die(i32 %9, i8* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i32, i32* @use_pager, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i8**, i8*** %2, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @is_builtin(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load i8**, i8*** %2, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @check_pager_config(i8* %26)
  store i32 %27, i32* @use_pager, align 4
  br label %28

28:                                               ; preds = %23, %17, %14
  %29 = call i32 (...) @commit_pager_choice()
  %30 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 4
  %31 = load i8**, i8*** %2, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @argv_array_pushf(%struct.TYPE_3__* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 4
  %36 = load i8**, i8*** %2, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = call i32 @argv_array_pushv(%struct.TYPE_3__* %35, i8** %37)
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %42, align 8
  %43 = call i32 @trace2_cmd_name(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.child_process, %struct.child_process* %3, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @trace_argv_printf(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 @run_command(%struct.child_process* %3)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %28
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @exit(i32 %52) #4
  unreachable

54:                                               ; preds = %28
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @ENOENT, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @exit(i32 128) #4
  unreachable

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @get_super_prefix(...) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @is_builtin(i8*) #2

declare dso_local i32 @check_pager_config(i8*) #2

declare dso_local i32 @commit_pager_choice(...) #2

declare dso_local i32 @argv_array_pushf(%struct.TYPE_3__*, i8*, i8*) #2

declare dso_local i32 @argv_array_pushv(%struct.TYPE_3__*, i8**) #2

declare dso_local i32 @trace2_cmd_name(i8*) #2

declare dso_local i32 @trace_argv_printf(i32, i8*) #2

declare dso_local i32 @run_command(%struct.child_process*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
