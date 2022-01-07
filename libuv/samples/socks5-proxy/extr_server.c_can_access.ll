; ModuleID = '/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_server.c_can_access.c'
source_filename = "/home/carl/AnghaBench/libuv/samples/socks5-proxy/extr_server.c_can_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in6 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_access(i32* %0, i32* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %22, %struct.sockaddr_in** %9, align 8
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohl(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = ashr i32 %28, 24
  %30 = icmp ne i32 %29, 127
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %88

32:                                               ; preds = %3
  %33 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_INET6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %87

38:                                               ; preds = %32
  %39 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %40 = bitcast %struct.sockaddr* %39 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %40, %struct.sockaddr_in6** %8, align 8
  %41 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohl(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohl(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohl(i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ntohl(i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %38
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %88

72:                                               ; preds = %68, %65, %62, %38
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 65535
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %14, align 4
  %83 = ashr i32 %82, 24
  %84 = icmp eq i32 %83, 127
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %88

86:                                               ; preds = %81, %78, %75, %72
  store i32 1, i32* %4, align 4
  br label %88

87:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %86, %85, %71, %20
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
