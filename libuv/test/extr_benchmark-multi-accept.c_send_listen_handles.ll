; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-multi-accept.c_send_listen_handles.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-multi-accept.c_send_listen_handles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_ctx = type { i32 }
%struct.ipc_server_ctx = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@UV_TCP = common dso_local global i64 0, align 8
@listen_addr = common dso_local global i32 0, align 4
@IPC_PIPE_NAME = common dso_local global i32 0, align 4
@ipc_connection_cb = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.server_ctx*)* @send_listen_handles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_listen_handles(i64 %0, i32 %1, %struct.server_ctx* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.server_ctx*, align 8
  %7 = alloca %struct.ipc_server_ctx, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.server_ctx* %2, %struct.server_ctx** %6, align 8
  %10 = call i32* (...) @uv_default_loop()
  store i32* %10, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = getelementptr inbounds %struct.ipc_server_ctx, %struct.ipc_server_ctx* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @UV_TCP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds %struct.ipc_server_ctx, %struct.ipc_server_ctx* %7, i32 0, i32 1
  %19 = call i64 @uv_tcp_init(i32* %17, i32* %18)
  %20 = icmp eq i64 0, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = getelementptr inbounds %struct.ipc_server_ctx, %struct.ipc_server_ctx* %7, i32 0, i32 1
  %24 = call i64 @uv_tcp_bind(i32* %23, %struct.sockaddr* bitcast (i32* @listen_addr to %struct.sockaddr*), i32 0)
  %25 = icmp eq i64 0, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  br label %30

28:                                               ; preds = %3
  %29 = call i32 @ASSERT(i32 0)
  br label %30

30:                                               ; preds = %28, %16
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds %struct.ipc_server_ctx, %struct.ipc_server_ctx* %7, i32 0, i32 2
  %33 = call i64 @uv_pipe_init(i32* %31, i32* %32, i32 1)
  %34 = icmp eq i64 0, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = getelementptr inbounds %struct.ipc_server_ctx, %struct.ipc_server_ctx* %7, i32 0, i32 2
  %38 = load i32, i32* @IPC_PIPE_NAME, align 4
  %39 = call i64 @uv_pipe_bind(i32* %37, i32 %38)
  %40 = icmp eq i64 0, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = getelementptr inbounds %struct.ipc_server_ctx, %struct.ipc_server_ctx* %7, i32 0, i32 2
  %44 = load i32, i32* @ipc_connection_cb, align 4
  %45 = call i64 @uv_listen(i32* %43, i32 128, i32 %44)
  %46 = icmp eq i64 0, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %60, %30
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load %struct.server_ctx*, %struct.server_ctx** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %54, i64 %56
  %58 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %57, i32 0, i32 0
  %59 = call i32 @uv_sem_post(i32* %58)
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %49

63:                                               ; preds = %49
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %66 = call i64 @uv_run(i32* %64, i32 %65)
  %67 = icmp eq i64 0, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ASSERT(i32 %68)
  %70 = getelementptr inbounds %struct.ipc_server_ctx, %struct.ipc_server_ctx* %7, i32 0, i32 1
  %71 = call i32 @uv_close(i32* %70, i32* null)
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %74 = call i64 @uv_run(i32* %72, i32 %73)
  %75 = icmp eq i64 0, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %89, %63
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load %struct.server_ctx*, %struct.server_ctx** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %83, i64 %85
  %87 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %86, i32 0, i32 0
  %88 = call i32 @uv_sem_wait(i32* %87)
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %9, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %78

92:                                               ; preds = %78
  ret void
}

declare dso_local i32* @uv_default_loop(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_tcp_init(i32*, i32*) #1

declare dso_local i64 @uv_tcp_bind(i32*, %struct.sockaddr*, i32) #1

declare dso_local i64 @uv_pipe_init(i32*, i32*, i32) #1

declare dso_local i64 @uv_pipe_bind(i32*, i32) #1

declare dso_local i64 @uv_listen(i32*, i32, i32) #1

declare dso_local i32 @uv_sem_post(i32*) #1

declare dso_local i64 @uv_run(i32*, i32) #1

declare dso_local i32 @uv_close(i32*, i32*) #1

declare dso_local i32 @uv_sem_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
