; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_request_get_addr_on_close.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_request_get_addr_on_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.sockaddr = type { i32 }

@__const.http_request_get_addr_on_close.local = private unnamed_addr constant [11 x i8] c"127.0.0.1:\00", align 1
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, i8*)* @http_request_get_addr_on_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_request_get_addr_on_close(%struct.evhttp_connection* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca [11 x i8], align 1
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast [11 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.http_request_get_addr_on_close.local, i32 0, i32 0), i64 11, i1 false)
  store i32 0, i32* @test_ok, align 4
  %9 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %10 = ptrtoint %struct.evhttp_connection* %9 to i32
  %11 = call i32 @tt_assert(i32 %10)
  %12 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %13 = call %struct.sockaddr* @evhttp_connection_get_addr(%struct.evhttp_connection* %12)
  store %struct.sockaddr* %13, %struct.sockaddr** %5, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = ptrtoint %struct.sockaddr* %14 to i32
  %16 = call i32 @tt_assert(i32 %15)
  %17 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %19 = call i32 @evutil_format_sockaddr_port_(%struct.sockaddr* %17, i8* %18, i32 128)
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %21 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %22 = call i32 @strncmp(i8* %20, i8* %21, i32 10)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @tt_assert(i32 %25)
  store i32 1, i32* @test_ok, align 4
  br label %28

27:                                               ; No predecessors!
  store i32 0, i32* @test_ok, align 4
  br label %28

28:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tt_assert(i32) #2

declare dso_local %struct.sockaddr* @evhttp_connection_get_addr(%struct.evhttp_connection*) #2

declare dso_local i32 @evutil_format_sockaddr_port_(%struct.sockaddr*, i8*, i32) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
