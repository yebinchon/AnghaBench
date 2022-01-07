; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv_udp_set_source_membership.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv_udp_set_source_membership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@UV_ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_udp_set_source_membership(i32* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sockaddr_storage, align 4
  %14 = alloca %struct.sockaddr_in*, align 8
  %15 = alloca %struct.sockaddr_in6*, align 8
  %16 = alloca %struct.sockaddr_storage, align 4
  %17 = alloca %struct.sockaddr_in*, align 8
  %18 = alloca %struct.sockaddr_in6*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %14, align 8
  %20 = bitcast %struct.sockaddr_storage* %13 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %20, %struct.sockaddr_in6** %15, align 8
  %21 = bitcast %struct.sockaddr_storage* %16 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %21, %struct.sockaddr_in** %17, align 8
  %22 = bitcast %struct.sockaddr_storage* %16 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %22, %struct.sockaddr_in6** %18, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %25 = call i32 @uv_ip4_addr(i8* %23, i32 0, %struct.sockaddr_in* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %5
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %31 = call i32 @uv_ip6_addr(i8* %29, i32 0, %struct.sockaddr_in6* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %66

36:                                               ; preds = %28
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %18, align 8
  %39 = call i32 @uv_ip6_addr(i8* %37, i32 0, %struct.sockaddr_in6* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %66

44:                                               ; preds = %36
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %18, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @uv__udp_set_source_membership6(i32* %45, %struct.sockaddr_in6* %46, i8* %47, %struct.sockaddr_in6* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %66

51:                                               ; preds = %5
  %52 = load i8*, i8** %10, align 8
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %54 = call i32 @uv_ip4_addr(i8* %52, i32 0, %struct.sockaddr_in* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %66

59:                                               ; preds = %51
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.sockaddr_in*, %struct.sockaddr_in** %17, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @uv__udp_set_source_membership4(i32* %60, %struct.sockaddr_in* %61, i8* %62, %struct.sockaddr_in* %63, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %59, %57, %44, %42, %34
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @uv_ip4_addr(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @uv_ip6_addr(i8*, i32, %struct.sockaddr_in6*) #1

declare dso_local i32 @uv__udp_set_source_membership6(i32*, %struct.sockaddr_in6*, i8*, %struct.sockaddr_in6*, i32) #1

declare dso_local i32 @uv__udp_set_source_membership4(i32*, %struct.sockaddr_in*, i8*, %struct.sockaddr_in*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
