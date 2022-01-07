; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_trace_run_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_trace_run_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.child_process = type { i32, i64, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@trace_default_key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"trace: run_command:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" cd \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" git\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.child_process*)* @trace_run_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_run_command(%struct.child_process* %0) #0 {
  %2 = alloca %struct.child_process*, align 8
  %3 = alloca %struct.strbuf, align 4
  store %struct.child_process* %0, %struct.child_process** %2, align 8
  %4 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %5 = call i32 @trace_want(i32* @trace_default_key)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %47

8:                                                ; preds = %1
  %9 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.child_process*, %struct.child_process** %2, align 8
  %11 = getelementptr inbounds %struct.child_process, %struct.child_process* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.child_process*, %struct.child_process** %2, align 8
  %17 = getelementptr inbounds %struct.child_process, %struct.child_process* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sq_quote_buf_pretty(%struct.strbuf* %3, i32 %18)
  %20 = call i32 @strbuf_addch(%struct.strbuf* %3, i8 signext 59)
  br label %21

21:                                               ; preds = %14, %8
  %22 = load %struct.child_process*, %struct.child_process** %2, align 8
  %23 = getelementptr inbounds %struct.child_process, %struct.child_process* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.child_process*, %struct.child_process** %2, align 8
  %28 = getelementptr inbounds %struct.child_process, %struct.child_process* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @trace_add_env(%struct.strbuf* %3, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.child_process*, %struct.child_process** %2, align 8
  %33 = getelementptr inbounds %struct.child_process, %struct.child_process* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load %struct.child_process*, %struct.child_process** %2, align 8
  %40 = getelementptr inbounds %struct.child_process, %struct.child_process* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sq_quote_argv_pretty(%struct.strbuf* %3, i32 %41)
  %43 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @trace_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = call i32 @strbuf_release(%struct.strbuf* %3)
  br label %47

47:                                               ; preds = %38, %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace_want(i32*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @sq_quote_buf_pretty(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @trace_add_env(%struct.strbuf*, i32) #2

declare dso_local i32 @sq_quote_argv_pretty(%struct.strbuf*, i32) #2

declare dso_local i32 @trace_printf(i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
