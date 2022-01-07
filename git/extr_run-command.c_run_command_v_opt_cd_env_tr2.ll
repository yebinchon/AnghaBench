; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_run_command_v_opt_cd_env_tr2.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_run_command_v_opt_cd_env_tr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i8**, i32, i32, i32, i32, i32, i32, i8*, i8**, i8* }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@RUN_COMMAND_NO_STDIN = common dso_local global i32 0, align 4
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@RUN_COMMAND_STDOUT_TO_STDERR = common dso_local global i32 0, align 4
@RUN_SILENT_EXEC_FAILURE = common dso_local global i32 0, align 4
@RUN_USING_SHELL = common dso_local global i32 0, align 4
@RUN_CLEAN_ON_EXIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_command_v_opt_cd_env_tr2(i8** %0, i32 %1, i8* %2, i8** %3, i8* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.child_process, align 8
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = bitcast %struct.child_process* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 56, i1 false)
  %13 = load i8**, i8*** %6, align 8
  %14 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 0
  store i8** %13, i8*** %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @RUN_COMMAND_NO_STDIN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @RUN_GIT_CMD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @RUN_COMMAND_STDOUT_TO_STDERR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @RUN_SILENT_EXEC_FAILURE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @RUN_USING_SHELL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 5
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @RUN_CLEAN_ON_EXIT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 6
  store i32 %55, i32* %56, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 7
  store i8* %57, i8** %58, align 8
  %59 = load i8**, i8*** %9, align 8
  %60 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 8
  store i8** %59, i8*** %60, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds %struct.child_process, %struct.child_process* %11, i32 0, i32 9
  store i8* %61, i8** %62, align 8
  %63 = call i32 @run_command(%struct.child_process* %11)
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @run_command(%struct.child_process*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
