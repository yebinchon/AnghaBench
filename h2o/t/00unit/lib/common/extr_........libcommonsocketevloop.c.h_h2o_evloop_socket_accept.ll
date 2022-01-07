; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_h2o_evloop_socket_accept.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloop.c.h_h2o_evloop_socket_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.st_h2o_evloop_socket_t = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.sockaddr = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }

@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@H2O_SOCKET_FLAG_IS_ACCEPTED_CONNECTION = common dso_local global i32 0, align 4
@h2o_socket_ebpf_init_key = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @h2o_evloop_socket_accept(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = bitcast %struct.TYPE_9__* %10 to %struct.st_h2o_evloop_socket_t*
  store %struct.st_h2o_evloop_socket_t* %11, %struct.st_h2o_evloop_socket_t** %4, align 8
  store %struct.sockaddr_storage* null, %struct.sockaddr_storage** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %13 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %16 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr*
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @cloexec_accept(i32 %14, %struct.sockaddr* %16, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %63

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @F_SETFL, align 4
  %24 = load i32, i32* @O_NONBLOCK, align 4
  %25 = call i32 @fcntl(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %27 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @H2O_SOCKET_FLAG_IS_ACCEPTED_CONNECTION, align 4
  %31 = call %struct.TYPE_11__* @create_socket_set_nodelay(i32 %28, i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %6, align 8
  %33 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %34 = icmp ne %struct.sockaddr_storage* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %21
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ule i64 %38, 4
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %43 = bitcast %struct.sockaddr_storage* %42 to %struct.sockaddr*
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @h2o_socket_setpeername(%struct.TYPE_9__* %41, %struct.sockaddr* %43, i32 %45)
  br label %47

47:                                               ; preds = %40, %35, %21
  %48 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %49 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @h2o_socket_ebpf_init_key, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = call i64 @h2o_socket_ebpf_lookup(i32 %50, i32 %51, %struct.TYPE_9__* %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %47
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %2, align 8
  br label %63

63:                                               ; preds = %61, %20
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %64
}

declare dso_local i32 @cloexec_accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @create_socket_set_nodelay(i32, i32, i32) #1

declare dso_local i32 @h2o_socket_setpeername(%struct.TYPE_9__*, %struct.sockaddr*, i32) #1

declare dso_local i64 @h2o_socket_ebpf_lookup(i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
