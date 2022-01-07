; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NetadrToSockadr.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NetadrToSockadr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in6 = type { i32, %struct.in6_addr, i8*, i32 }

@NA_BROADCAST = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i8* null, align 8
@INADDR_BROADCAST = common dso_local global i32 0, align 4
@NA_IP = common dso_local global i64 0, align 8
@NA_IP6 = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i8* null, align 8
@NA_MULTICAST6 = common dso_local global i64 0, align 8
@curgroup = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.sockaddr*)* @NetadrToSockadr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NetadrToSockadr(%struct.TYPE_6__* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.sockaddr*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NA_BROADCAST, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i8*, i8** @AF_INET, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_in*
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  store i8* %11, i8** %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.sockaddr_in*
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load i32, i32* @INADDR_BROADCAST, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_in*
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  br label %105

26:                                               ; preds = %2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NA_IP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load i8*, i8** @AF_INET, align 8
  %34 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %35 = bitcast %struct.sockaddr* %34 to %struct.sockaddr_in*
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %41 = bitcast %struct.sockaddr* %40 to %struct.sockaddr_in*
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %48 = bitcast %struct.sockaddr* %47 to %struct.sockaddr_in*
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  br label %104

50:                                               ; preds = %26
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NA_IP6, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %50
  %57 = load i8*, i8** @AF_INET6, align 8
  %58 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %59 = bitcast %struct.sockaddr* %58 to %struct.sockaddr_in6*
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  %61 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %62 = bitcast %struct.sockaddr* %61 to %struct.sockaddr_in6*
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = bitcast i32* %65 to %struct.in6_addr*
  %67 = bitcast %struct.in6_addr* %63 to i8*
  %68 = bitcast %struct.in6_addr* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 8 %68, i64 4, i1 false)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %73 = bitcast %struct.sockaddr* %72 to %struct.sockaddr_in6*
  %74 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %79 = bitcast %struct.sockaddr* %78 to %struct.sockaddr_in6*
  %80 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 8
  br label %103

81:                                               ; preds = %50
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @NA_MULTICAST6, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %81
  %88 = load i8*, i8** @AF_INET6, align 8
  %89 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %90 = bitcast %struct.sockaddr* %89 to %struct.sockaddr_in6*
  %91 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %90, i32 0, i32 2
  store i8* %88, i8** %91, align 8
  %92 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %93 = bitcast %struct.sockaddr* %92 to %struct.sockaddr_in6*
  %94 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %93, i32 0, i32 1
  %95 = bitcast %struct.in6_addr* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 bitcast (%struct.TYPE_7__* @curgroup to i8*), i64 4, i1 false)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %100 = bitcast %struct.sockaddr* %99 to %struct.sockaddr_in6*
  %101 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %87, %81
  br label %103

103:                                              ; preds = %102, %56
  br label %104

104:                                              ; preds = %103, %32
  br label %105

105:                                              ; preds = %104, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
