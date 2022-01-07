; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_sunos.c_uv__set_phys_addr.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_sunos.c_uv__set_phys_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.ifaddrs = type { i64 }
%struct.sockaddr_dl = type { i32 }
%struct.arpreq = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64* }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIOCGARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.ifaddrs*)* @uv__set_phys_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__set_phys_addr(%struct.TYPE_19__* %0, %struct.ifaddrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.ifaddrs*, align 8
  %6 = alloca %struct.sockaddr_dl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.arpreq, align 4
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.ifaddrs* %1, %struct.ifaddrs** %5, align 8
  %12 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %13 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %15, %struct.sockaddr_dl** %6, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %6, align 8
  %20 = call i32 @LLADDR(%struct.sockaddr_dl* %19)
  %21 = call i32 @memcpy(i64* %18, i32 %20, i32 8)
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %35, %2
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %23, 8
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %113

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %22

38:                                               ; preds = %22
  %39 = call i32 @memset(%struct.arpreq* %9, i32 0, i32 8)
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_INET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %9, i32 0, i32 1
  %49 = bitcast i32* %48 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %49, %struct.sockaddr_in** %10, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %57 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  br label %83

59:                                               ; preds = %38
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AF_INET6, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %9, i32 0, i32 1
  %69 = bitcast i32* %68 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %69, %struct.sockaddr_in6** %11, align 8
  %70 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %71 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memcpy(i64* %73, i32 %79, i32 4)
  br label %82

81:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %113

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %47
  %84 = load i64, i64* @AF_INET, align 8
  %85 = load i32, i32* @SOCK_DGRAM, align 4
  %86 = call i32 @socket(i64 %84, i32 %85, i32 0)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @errno, align 4
  %91 = call i32 @UV__ERR(i32 %90)
  store i32 %91, i32* %3, align 4
  br label %113

92:                                               ; preds = %83
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @SIOCGARP, align 4
  %95 = bitcast %struct.arpreq* %9 to i8*
  %96 = call i32 @ioctl(i32 %93, i32 %94, i8* %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @uv__close(i32 %99)
  %101 = load i32, i32* @errno, align 4
  %102 = call i32 @UV__ERR(i32 %101)
  store i32 %102, i32* %3, align 4
  br label %113

103:                                              ; preds = %92
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds %struct.arpreq, %struct.arpreq* %9, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @memcpy(i64* %106, i32 %109, i32 8)
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @uv__close(i32 %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %103, %98, %89, %81, %33
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @memset(%struct.arpreq*, i32, i32) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @uv__close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
