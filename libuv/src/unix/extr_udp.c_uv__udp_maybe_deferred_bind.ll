; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_maybe_deferred_bind.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_maybe_deferred_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.anon = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_in = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.sockaddr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @uv__udp_maybe_deferred_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__udp_maybe_deferred_bind(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.anon, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %40 [
    i32 129, label %20
    i32 128, label %31
  ]

20:                                               ; preds = %18
  %21 = bitcast %union.anon* %8 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %21, %struct.sockaddr_in** %10, align 8
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %23 = bitcast %struct.sockaddr_in* %22 to %struct.sockaddr_in6*
  %24 = call i32 @memset(%struct.sockaddr_in6* %23, i32 0, i32 16)
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 0
  store i32 129, i32* %26, align 4
  %27 = load i32, i32* @INADDR_ANY, align 4
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  store i32 16, i32* %9, align 4
  br label %43

31:                                               ; preds = %18
  %32 = bitcast %union.anon* %8 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %32, %struct.sockaddr_in6** %11, align 8
  %33 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %34 = call i32 @memset(%struct.sockaddr_in6* %33, i32 0, i32 16)
  %35 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i32 0, i32 1
  store i32 128, i32* %36, align 4
  %37 = load i32, i32* @in6addr_any, align 4
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  store i32 16, i32* %9, align 4
  br label %43

40:                                               ; preds = %18
  %41 = call i32 @assert(i32 0)
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %31, %20
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = bitcast %union.anon* %8 to %struct.sockaddr*
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @uv__udp_bind(%struct.TYPE_8__* %44, %struct.sockaddr* %45, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @uv__udp_bind(%struct.TYPE_8__*, %struct.sockaddr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
