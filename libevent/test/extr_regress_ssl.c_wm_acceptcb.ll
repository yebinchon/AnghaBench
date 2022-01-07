; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_wm_acceptcb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_wm_acceptcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evconnlistener = type { i32 }
%struct.sockaddr = type { i32 }
%struct.wm_context = type { %struct.bufferevent*, i32, i64, i32 }
%struct.bufferevent = type { i32 }
%struct.event_base = type { i32 }

@the_cert = common dso_local global i32 0, align 4
@the_key = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_ACCEPTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"wm_transfer-%s(%p): accept\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@EV_READ = common dso_local global i32 0, align 4
@wm_transfer = common dso_local global i32 0, align 4
@wm_eventcb = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evconnlistener*, i32, %struct.sockaddr*, i32, i8*)* @wm_acceptcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_acceptcb(%struct.evconnlistener* %0, i32 %1, %struct.sockaddr* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evconnlistener*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.wm_context*, align 8
  %12 = alloca %struct.bufferevent*, align 8
  %13 = alloca %struct.event_base*, align 8
  %14 = alloca i32*, align 8
  store %struct.evconnlistener* %0, %struct.evconnlistener** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.wm_context*
  store %struct.wm_context* %16, %struct.wm_context** %11, align 8
  %17 = load %struct.evconnlistener*, %struct.evconnlistener** %6, align 8
  %18 = call %struct.event_base* @evconnlistener_get_base(%struct.evconnlistener* %17)
  store %struct.event_base* %18, %struct.event_base** %13, align 8
  %19 = call i32 (...) @get_ssl_ctx()
  %20 = call i32* @SSL_new(i32 %19)
  store i32* %20, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load i32, i32* @the_cert, align 4
  %23 = call i32 @SSL_use_certificate(i32* %21, i32 %22)
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* @the_key, align 4
  %26 = call i32 @SSL_use_PrivateKey(i32* %24, i32 %25)
  %27 = load %struct.event_base*, %struct.event_base** %13, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* @BUFFEREVENT_SSL_ACCEPTING, align 4
  %31 = load %struct.wm_context*, %struct.wm_context** %11, align 8
  %32 = getelementptr inbounds %struct.wm_context, %struct.wm_context* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base* %27, i32 %28, i32* %29, i32 %30, i32 %33)
  store %struct.bufferevent* %34, %struct.bufferevent** %12, align 8
  %35 = load %struct.wm_context*, %struct.wm_context** %11, align 8
  %36 = getelementptr inbounds %struct.wm_context, %struct.wm_context* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %41 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %42 = bitcast %struct.bufferevent* %41 to i8*
  %43 = call i32 @TT_BLATHER(i8* %42)
  %44 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %45 = load i32, i32* @EV_READ, align 4
  %46 = load %struct.wm_context*, %struct.wm_context** %11, align 8
  %47 = getelementptr inbounds %struct.wm_context, %struct.wm_context* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bufferevent_setwatermark(%struct.bufferevent* %44, i32 %45, i32 0, i32 %48)
  %50 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %51 = load i32, i32* @wm_transfer, align 4
  %52 = load i32, i32* @wm_eventcb, align 4
  %53 = load %struct.wm_context*, %struct.wm_context** %11, align 8
  %54 = call i32 @bufferevent_setcb(%struct.bufferevent* %50, i32 %51, i32* null, i32 %52, %struct.wm_context* %53)
  %55 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %56 = load i32, i32* @EV_READ, align 4
  %57 = load i32, i32* @EV_WRITE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @bufferevent_enable(%struct.bufferevent* %55, i32 %58)
  %60 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %61 = load %struct.wm_context*, %struct.wm_context** %11, align 8
  %62 = getelementptr inbounds %struct.wm_context, %struct.wm_context* %61, i32 0, i32 0
  store %struct.bufferevent* %60, %struct.bufferevent** %62, align 8
  %63 = load %struct.evconnlistener*, %struct.evconnlistener** %6, align 8
  %64 = call i32 @evconnlistener_disable(%struct.evconnlistener* %63)
  ret void
}

declare dso_local %struct.event_base* @evconnlistener_get_base(%struct.evconnlistener*) #1

declare dso_local i32* @SSL_new(i32) #1

declare dso_local i32 @get_ssl_ctx(...) #1

declare dso_local i32 @SSL_use_certificate(i32*, i32) #1

declare dso_local i32 @SSL_use_PrivateKey(i32*, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_socket_new(%struct.event_base*, i32, i32*, i32, i32) #1

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32 @bufferevent_setwatermark(%struct.bufferevent*, i32, i32, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32*, i32, %struct.wm_context*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @evconnlistener_disable(%struct.evconnlistener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
