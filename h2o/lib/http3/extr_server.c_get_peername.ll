; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_get_peername.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_get_peername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.st_h2o_http3_server_conn_t = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sockaddr*)* @get_peername to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_peername(i32* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.st_h2o_http3_server_conn_t*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.st_h2o_http3_server_conn_t*
  store %struct.st_h2o_http3_server_conn_t* %10, %struct.st_h2o_http3_server_conn_t** %5, align 8
  %11 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %5, align 8
  %12 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sockaddr* @quicly_get_peername(i32 %14)
  store %struct.sockaddr* %15, %struct.sockaddr** %6, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %17 = call i32 @quicly_get_socklen(%struct.sockaddr* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @memcpy(%struct.sockaddr* %18, %struct.sockaddr* %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local %struct.sockaddr* @quicly_get_peername(i32) #1

declare dso_local i32 @quicly_get_socklen(%struct.sockaddr*) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
