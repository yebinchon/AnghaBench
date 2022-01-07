; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-multi-accept.c_get_listen_handle.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-multi-accept.c_get_listen_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.ipc_client_ctx = type { i32, i32, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [14 x i8] c"server handle\00", align 1
@IPC_PIPE_NAME = common dso_local global i32 0, align 4
@ipc_connect_cb = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @get_listen_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_listen_handle(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.ipc_client_ctx, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.ipc_client_ctx, %struct.ipc_client_ctx* %5, i32 0, i32 2
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %7, align 8
  %8 = getelementptr inbounds %struct.ipc_client_ctx, %struct.ipc_client_ctx* %5, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds %struct.ipc_client_ctx, %struct.ipc_client_ctx* %5, i32 0, i32 0
  %13 = call i64 @uv_pipe_init(i32* %11, i32* %12, i32 1)
  %14 = icmp eq i64 0, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = getelementptr inbounds %struct.ipc_client_ctx, %struct.ipc_client_ctx* %5, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ipc_client_ctx, %struct.ipc_client_ctx* %5, i32 0, i32 0
  %19 = load i32, i32* @IPC_PIPE_NAME, align 4
  %20 = load i32, i32* @ipc_connect_cb, align 4
  %21 = call i32 @uv_pipe_connect(i32* %17, i32* %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %24 = call i64 @uv_run(i32* %22, i32 %23)
  %25 = icmp eq i64 0, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_pipe_init(i32*, i32*, i32) #1

declare dso_local i32 @uv_pipe_connect(i32*, i32*, i32, i32) #1

declare dso_local i64 @uv_run(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
