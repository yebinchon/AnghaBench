; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_connect.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sockaddr = type { i32 }

@AF_NETLINK = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NL_SOCK_BUFSIZE_SET = common dso_local global i32 0, align 4
@NLE_NOADDR = common dso_local global i32 0, align 4
@NLE_AF_NOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_connect(%struct.nl_sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nl_sock* %0, %struct.nl_sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @AF_NETLINK, align 8
  %9 = load i32, i32* @SOCK_RAW, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @socket(i64 %8, i32 %9, i32 %10)
  %12 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %13 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %15 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @nl_syserr2nlerr(i32 %19)
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %85

22:                                               ; preds = %2
  %23 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %24 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NL_SOCK_BUFSIZE_SET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22
  %30 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %31 = call i32 @nl_socket_set_buffer_size(%struct.nl_sock* %30, i32 0, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %85

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %22
  %37 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %38 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %41 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %40, i32 0, i32 3
  %42 = bitcast %struct.TYPE_2__* %41 to %struct.sockaddr*
  %43 = call i32 @bind(i32 %39, %struct.sockaddr* %42, i32 8)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* @errno, align 4
  %48 = call i32 @nl_syserr2nlerr(i32 %47)
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %85

50:                                               ; preds = %36
  store i32 8, i32* %7, align 4
  %51 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %52 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %55 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %54, i32 0, i32 3
  %56 = bitcast %struct.TYPE_2__* %55 to %struct.sockaddr*
  %57 = call i32 @getsockname(i32 %53, %struct.sockaddr* %56, i32* %7)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @nl_syserr2nlerr(i32 %61)
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %85

64:                                               ; preds = %50
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %66, 8
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @NLE_NOADDR, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %85

71:                                               ; preds = %64
  %72 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %73 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AF_NETLINK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @NLE_AF_NOSUPPORT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %85

81:                                               ; preds = %71
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %84 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %3, align 4
  br label %93

85:                                               ; preds = %78, %68, %60, %46, %34, %18
  %86 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %87 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @close(i32 %88)
  %90 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %91 = getelementptr inbounds %struct.nl_sock, %struct.nl_sock* %90, i32 0, i32 0
  store i32 -1, i32* %91, align 8
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %81
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @nl_syserr2nlerr(i32) #1

declare dso_local i32 @nl_socket_set_buffer_size(%struct.nl_sock*, i32, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
