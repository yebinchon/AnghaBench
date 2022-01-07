; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_bind.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr = type { i64 }

@UV_UDP_IPV6ONLY = common dso_local global i32 0, align 4
@UV_UDP_REUSEADDR = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@UV_ENOTSUP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i64 0, align 8
@UV_HANDLE_IPV6 = common dso_local global i32 0, align 4
@UV_HANDLE_BOUND = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__udp_bind(%struct.TYPE_5__* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @UV_UDP_IPV6ONLY, align 4
  %15 = load i32, i32* @UV_UDP_REUSEADDR, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @UV_EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %113

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @UV_UDP_IPV6ONLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @UV_EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %113

35:                                               ; preds = %27, %22
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %44 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @SOCK_DGRAM, align 4
  %47 = call i32 @uv__socket(i64 %45, i32 %46, i32 0)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %113

52:                                               ; preds = %42
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %35
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @UV_UDP_REUSEADDR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @uv__set_reuse(i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %113

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %58
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @UV_UDP_IPV6ONLY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @UV_ENOTSUP, align 4
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %113

79:                                               ; preds = %71
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @bind(i32 %80, %struct.sockaddr* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i64, i64* @errno, align 8
  %87 = call i32 @UV__ERR(i64 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i64, i64* @errno, align 8
  %89 = load i64, i64* @EAFNOSUPPORT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @UV_EINVAL, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %85
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %113

95:                                               ; preds = %79
  %96 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %97 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AF_INET6, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load i32, i32* @UV_HANDLE_IPV6, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %95
  %108 = load i32, i32* @UV_HANDLE_BOUND, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %107, %93, %76, %68, %50, %33, %20
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @uv__socket(i64, i32, i32) #1

declare dso_local i32 @uv__set_reuse(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
