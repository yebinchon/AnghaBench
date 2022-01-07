; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_set_membership.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_udp_set_membership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@UV_EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_udp_set_membership(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca %struct.sockaddr_in6, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @uv_ip4_addr(i8* %12, i32 0, %struct.sockaddr_in* %10)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @uv__udp_set_membership4(i32* %16, %struct.sockaddr_in* %10, i8* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %31

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @uv_ip6_addr(i8* %21, i32 0, %struct.sockaddr_in6* %11)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @uv__udp_set_membership6(i32* %25, %struct.sockaddr_in6* %11, i8* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @UV_EINVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %24, %15
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i64 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv__udp_set_membership4(i32*, %struct.sockaddr_in*, i8*, i32) #1

declare dso_local i64 @uv_ip6_addr(i8*, i32, %struct.sockaddr_in6*) #1

declare dso_local i32 @uv__udp_set_membership6(i32*, %struct.sockaddr_in6*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
