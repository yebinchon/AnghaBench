; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-multi-accept.c_server_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-multi-accept.c_server_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_ctx = type { i32, i32, i32 }

@sv_async_cb = common dso_local global i32 0, align 4
@sv_connection_cb = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @server_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.server_ctx*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.server_ctx*
  store %struct.server_ctx* %6, %struct.server_ctx** %3, align 8
  %7 = call i64 @uv_loop_init(i32* %4)
  %8 = icmp eq i64 0, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.server_ctx*, %struct.server_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %11, i32 0, i32 2
  %13 = load i32, i32* @sv_async_cb, align 4
  %14 = call i64 @uv_async_init(i32* %4, i32* %12, i32 %13)
  %15 = icmp eq i64 0, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.server_ctx*, %struct.server_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %18, i32 0, i32 2
  %20 = call i32 @uv_unref(i32* %19)
  %21 = load %struct.server_ctx*, %struct.server_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %21, i32 0, i32 1
  %23 = call i32 @uv_sem_wait(i32* %22)
  %24 = load %struct.server_ctx*, %struct.server_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %24, i32 0, i32 0
  %26 = call i32 @get_listen_handle(i32* %4, i32* %25)
  %27 = load %struct.server_ctx*, %struct.server_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %27, i32 0, i32 1
  %29 = call i32 @uv_sem_post(i32* %28)
  %30 = load %struct.server_ctx*, %struct.server_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.server_ctx, %struct.server_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* @sv_connection_cb, align 4
  %33 = call i64 @uv_listen(i32* %31, i32 128, i32 %32)
  %34 = icmp eq i64 0, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %38 = call i64 @uv_run(i32* %4, i32 %37)
  %39 = icmp eq i64 0, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = call i32 @uv_loop_close(i32* %4)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_loop_init(i32*) #1

declare dso_local i64 @uv_async_init(i32*, i32*, i32) #1

declare dso_local i32 @uv_unref(i32*) #1

declare dso_local i32 @uv_sem_wait(i32*) #1

declare dso_local i32 @get_listen_handle(i32*, i32*) #1

declare dso_local i32 @uv_sem_post(i32*) #1

declare dso_local i64 @uv_listen(i32*, i32, i32) #1

declare dso_local i64 @uv_run(i32*, i32) #1

declare dso_local i32 @uv_loop_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
