; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_uv_tcp_close_reset.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_tcp.c_uv_tcp_close_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linger = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@__const.uv_tcp_close_reset.l = private unnamed_addr constant %struct.linger { i32 1, i32 0 }, align 4
@UV_HANDLE_SHUTTING = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_tcp_close_reset(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.linger, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.linger* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.linger* @__const.uv_tcp_close_reset.l to i8*), i64 8, i1 false)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UV_HANDLE_SHUTTING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @UV_EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = call i32 @uv__stream_fd(%struct.TYPE_4__* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SOL_SOCKET, align 4
  %22 = load i32, i32* @SO_LINGER, align 4
  %23 = call i64 @setsockopt(i32 %20, i32 %21, i32 %22, %struct.linger* %7, i32 8)
  %24 = icmp ne i64 0, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @UV__ERR(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = bitcast %struct.TYPE_4__* %29 to i32*
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @uv_close(i32* %30, i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %25, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @uv__stream_fd(%struct.TYPE_4__*) #2

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.linger*, i32) #2

declare dso_local i32 @UV__ERR(i32) #2

declare dso_local i32 @uv_close(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
