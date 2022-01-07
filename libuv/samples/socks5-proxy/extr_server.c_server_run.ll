; ModuleID = '/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_server.c_server_run.c'
source_filename = "/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_server.c_server_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.addrinfo = type { i32*, i32, i32, i32, i32, i32*, %struct.TYPE_3__ }

@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@do_bind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"getaddrinfo: %s\00", align 1
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_run(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = call i32 @memset(%struct.addrinfo* %7, i32 0, i32 40)
  %10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 0
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = bitcast %struct.TYPE_3__* %11 to i8*
  %14 = bitcast %struct.TYPE_3__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 5
  store i32* %15, i32** %16, align 8
  %17 = call i32 @memset(%struct.addrinfo* %6, i32 0, i32 40)
  %18 = load i32, i32* @AF_UNSPEC, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* @IPPROTO_TCP, align 4
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 1
  %26 = load i32, i32* @do_bind, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @uv_getaddrinfo(i32* %24, i32* %25, i32 %26, i32 %29, i32* null, %struct.addrinfo* %6)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @uv_strerror(i32 %34)
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %51

38:                                               ; preds = %2
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %41 = call i64 @uv_run(i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (...) @abort() #4
  unreachable

45:                                               ; preds = %38
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @uv_loop_delete(i32* %46)
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %7, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @free(i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %33
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uv_getaddrinfo(i32*, i32*, i32, i32, i32*, %struct.addrinfo*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @uv_strerror(i32) #1

declare dso_local i64 @uv_run(i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @uv_loop_delete(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
