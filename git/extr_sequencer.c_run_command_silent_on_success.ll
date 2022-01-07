; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_run_command_silent_on_success.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_run_command_silent_on_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.child_process = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.child_process*)* @run_command_silent_on_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_command_silent_on_success(%struct.child_process* %0) #0 {
  %2 = alloca %struct.child_process*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i32, align 4
  store %struct.child_process* %0, %struct.child_process** %2, align 8
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = load %struct.child_process*, %struct.child_process** %2, align 8
  %7 = getelementptr inbounds %struct.child_process, %struct.child_process* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.child_process*, %struct.child_process** %2, align 8
  %9 = call i32 @pipe_command(%struct.child_process* %8, i32* null, i32 0, i32* null, i32 0, %struct.strbuf* %3, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fputs(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = call i32 @strbuf_release(%struct.strbuf* %3)
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pipe_command(%struct.child_process*, i32*, i32, i32*, i32, %struct.strbuf*, i32) #2

declare dso_local i32 @fputs(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
