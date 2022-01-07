; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_sunos.c_uv__ifaddr_exclude.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_sunos.c_uv__ifaddr_exclude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifaddrs*)* @uv__ifaddr_exclude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__ifaddr_exclude(%struct.ifaddrs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifaddrs*, align 8
  store %struct.ifaddrs* %0, %struct.ifaddrs** %3, align 8
  %4 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %5 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @IFF_UP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %12 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IFF_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  store i32 1, i32* %2, align 4
  br label %42

18:                                               ; preds = %10
  %19 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %20 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %42

24:                                               ; preds = %18
  %25 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %26 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_INET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %34 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AF_INET6, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %42

41:                                               ; preds = %32, %24
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40, %23, %17
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
