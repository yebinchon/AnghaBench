; ModuleID = '/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_confirm_restart.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_confirm_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ipc_confirm_restart(fd %d)\0A\00", align 1
@ipc_confirm_restart.reply = internal global i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"[{\22success\22:true}]\00", align 1
@I3_IPC_REPLY_TYPE_COMMAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_confirm_restart(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @DLOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = load i8*, i8** @ipc_confirm_restart.reply, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = load i32, i32* @I3_IPC_REPLY_TYPE_COMMAND, align 4
  %11 = load i8*, i8** @ipc_confirm_restart.reply, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = call i32 @ipc_send_client_message(%struct.TYPE_5__* %7, i32 %9, i32 %10, i32* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = call i32 @ipc_push_pending(%struct.TYPE_5__* %14)
  ret void
}

declare dso_local i32 @DLOG(i8*, i32) #1

declare dso_local i32 @ipc_send_client_message(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ipc_push_pending(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
