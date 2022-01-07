; ModuleID = '/home/carl/AnghaBench/i3/i3-dump-log/extr_main.c_disable_shmlog.c'
source_filename = "/home/carl/AnghaBench/i3/i3-dump-log/extr_main.c_disable_shmlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"debuglog off; shmlog off\00", align 1
@ipcfd = common dso_local global i32 0, align 4
@I3_IPC_MESSAGE_TYPE_COMMAND = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"IPC send\00", align 1
@I3_IPC_REPLY_TYPE_COMMAND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"IPC recv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @disable_shmlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_shmlog() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %4 = load i32, i32* @ipcfd, align 4
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = load i32, i32* @I3_IPC_MESSAGE_TYPE_COMMAND, align 4
  %8 = load i8*, i8** %1, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = call i64 @ipc_send_message(i32 %4, i32 %6, i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @EXIT_FAILURE, align 4
  %14 = call i32 @err(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %0
  store i32 0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %16 = load i32, i32* @ipcfd, align 4
  %17 = load i32, i32* @I3_IPC_REPLY_TYPE_COMMAND, align 4
  %18 = call i64 @ipc_recv_message(i32 %16, i32 %17, i32* %2, i32** %3)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EXIT_FAILURE, align 4
  %22 = call i32 @err(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @free(i32* %24)
  ret void
}

declare dso_local i64 @ipc_send_message(i32, i32, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @ipc_recv_message(i32, i32, i32*, i32**) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
