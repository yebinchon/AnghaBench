; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_get_sockname.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_get_sockname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.st_h2o_http1_conn_t = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sockaddr*)* @get_sockname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sockname(i32* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.st_h2o_http1_conn_t*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = bitcast i8* %7 to %struct.st_h2o_http1_conn_t*
  store %struct.st_h2o_http1_conn_t* %8, %struct.st_h2o_http1_conn_t** %5, align 8
  %9 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %5, align 8
  %10 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %13 = call i32 @h2o_socket_getsockname(i32 %11, %struct.sockaddr* %12)
  ret i32 %13
}

declare dso_local i32 @h2o_socket_getsockname(i32, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
