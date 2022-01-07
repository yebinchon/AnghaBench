; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_on_getaddr.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http3client.c_on_getaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32 }
%struct.st_h2o_http3client_conn_t = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.addrinfo*, i8*)* @on_getaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_getaddr(i32* %0, i8* %1, %struct.addrinfo* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.st_h2o_http3client_conn_t*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.st_h2o_http3client_conn_t*
  store %struct.st_h2o_http3client_conn_t* %12, %struct.st_h2o_http3client_conn_t** %9, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %9, align 8
  %15 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %9, align 8
  %21 = getelementptr inbounds %struct.st_h2o_http3client_conn_t, %struct.st_h2o_http3client_conn_t* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call i32 (...) @abort() #3
  unreachable

26:                                               ; preds = %4
  %27 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %28 = call %struct.addrinfo* @h2o_hostinfo_select_one(%struct.addrinfo* %27)
  store %struct.addrinfo* %28, %struct.addrinfo** %10, align 8
  %29 = load %struct.st_h2o_http3client_conn_t*, %struct.st_h2o_http3client_conn_t** %9, align 8
  %30 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @start_connect(%struct.st_h2o_http3client_conn_t* %29, i32 %32, i32 %35)
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.addrinfo* @h2o_hostinfo_select_one(%struct.addrinfo*) #1

declare dso_local i32 @start_connect(%struct.st_h2o_http3client_conn_t*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
