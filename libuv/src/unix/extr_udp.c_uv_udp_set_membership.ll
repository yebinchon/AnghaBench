; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv_udp_set_membership.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv_udp_set_membership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@UV_UDP_REUSEADDR = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_udp_set_membership(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in, align 4
  %12 = alloca %struct.sockaddr_in6, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @uv_ip4_addr(i8* %13, i32 0, %struct.sockaddr_in* %11)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @AF_INET, align 4
  %19 = load i32, i32* @UV_UDP_REUSEADDR, align 4
  %20 = call i32 @uv__udp_maybe_deferred_bind(i32* %17, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %50

25:                                               ; preds = %16
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @uv__udp_set_membership4(i32* %26, %struct.sockaddr_in* %11, i8* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %4
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @uv_ip6_addr(i8* %31, i32 0, %struct.sockaddr_in6* %12)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @AF_INET6, align 4
  %37 = load i32, i32* @UV_UDP_REUSEADDR, align 4
  %38 = call i32 @uv__udp_maybe_deferred_bind(i32* %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %50

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @uv__udp_set_membership6(i32* %44, %struct.sockaddr_in6* %12, i8* %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %50

48:                                               ; preds = %30
  %49 = load i32, i32* @UV_EINVAL, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %43, %41, %25, %23
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv__udp_maybe_deferred_bind(i32*, i32, i32) #1

declare dso_local i32 @uv__udp_set_membership4(i32*, %struct.sockaddr_in*, i8*, i32) #1

declare dso_local i64 @uv_ip6_addr(i8*, i32, %struct.sockaddr_in6*) #1

declare dso_local i32 @uv__udp_set_membership6(i32*, %struct.sockaddr_in6*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
