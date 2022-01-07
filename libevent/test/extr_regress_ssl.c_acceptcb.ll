; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_acceptcb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_ssl.c_acceptcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.evconnlistener = type { i32 }
%struct.sockaddr = type { i32 }
%struct.basic_test_data = type { i32, i64 }
%struct.bufferevent = type { i32 }

@the_cert = common dso_local global i32 0, align 4
@the_key = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_ACCEPTING = common dso_local global i32 0, align 4
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@respond_to_number = common dso_local global i32 0, align 4
@eventcb = common dso_local global i32 0, align 4
@REGRESS_OPENSSL_SERVER = common dso_local global i64 0, align 8
@REGRESS_OPENSSL_SLEEP = common dso_local global i32 0, align 4
@__const.acceptcb.when = private unnamed_addr constant %struct.timeval { i32 1, i32 0 }, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4
@acceptcb_deferred = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evconnlistener*, i32, %struct.sockaddr*, i32, i8*)* @acceptcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acceptcb(%struct.evconnlistener* %0, i32 %1, %struct.sockaddr* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evconnlistener*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.basic_test_data*, align 8
  %12 = alloca %struct.bufferevent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.timeval, align 4
  store %struct.evconnlistener* %0, %struct.evconnlistener** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.basic_test_data*
  store %struct.basic_test_data* %17, %struct.basic_test_data** %11, align 8
  %18 = call i32 (...) @get_ssl_ctx()
  %19 = call i32* @SSL_new(i32 %18)
  store i32* %19, i32** %14, align 8
  %20 = load %struct.basic_test_data*, %struct.basic_test_data** %11, align 8
  %21 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* @the_cert, align 4
  %26 = call i32 @SSL_use_certificate(i32* %24, i32 %25)
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* @the_key, align 4
  %29 = call i32 @SSL_use_PrivateKey(i32* %27, i32 %28)
  %30 = load %struct.basic_test_data*, %struct.basic_test_data** %11, align 8
  %31 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = load i32, i32* @BUFFEREVENT_SSL_ACCEPTING, align 4
  %36 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %37 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.bufferevent* @bufferevent_openssl_socket_new(i32 %32, i32 %33, i32* %34, i32 %35, i32 %38)
  store %struct.bufferevent* %39, %struct.bufferevent** %12, align 8
  %40 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %41 = call i32 @tt_assert(%struct.bufferevent* %40)
  %42 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %43 = load i32, i32* @respond_to_number, align 4
  %44 = load i32, i32* @eventcb, align 4
  %45 = load i64, i64* @REGRESS_OPENSSL_SERVER, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @bufferevent_setcb(%struct.bufferevent* %42, i32 %43, i32* null, i32 %44, i8* %46)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @REGRESS_OPENSSL_SLEEP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %5
  %53 = bitcast %struct.timeval* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 bitcast (%struct.timeval* @__const.acceptcb.when to i8*), i64 8, i1 false)
  %54 = load %struct.basic_test_data*, %struct.basic_test_data** %11, align 8
  %55 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EV_TIMEOUT, align 4
  %58 = load i32, i32* @acceptcb_deferred, align 4
  %59 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %60 = call i32 @event_base_once(i32 %56, i32 -1, i32 %57, i32 %58, %struct.bufferevent* %59, %struct.timeval* %15)
  %61 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %62 = load i32, i32* @EV_READ, align 4
  %63 = load i32, i32* @EV_WRITE, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @bufferevent_disable(%struct.bufferevent* %61, i32 %64)
  br label %72

66:                                               ; preds = %5
  %67 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  %68 = load i32, i32* @EV_READ, align 4
  %69 = load i32, i32* @EV_WRITE, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @bufferevent_enable(%struct.bufferevent* %67, i32 %70)
  br label %72

72:                                               ; preds = %66, %52
  %73 = load %struct.evconnlistener*, %struct.evconnlistener** %6, align 8
  %74 = call i32 @evconnlistener_disable(%struct.evconnlistener* %73)
  br label %75

75:                                               ; preds = %72
  ret void
}

declare dso_local i32* @SSL_new(i32) #1

declare dso_local i32 @get_ssl_ctx(...) #1

declare dso_local i32 @SSL_use_certificate(i32*, i32) #1

declare dso_local i32 @SSL_use_PrivateKey(i32*, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_socket_new(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @tt_assert(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @event_base_once(i32, i32, i32, i32, %struct.bufferevent*, %struct.timeval*) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

declare dso_local i32 @evconnlistener_disable(%struct.evconnlistener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
