; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_bsd-ifaddrs.c_uv__ifaddr_exclude.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_bsd-ifaddrs.c_uv__ifaddr_exclude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@UV__EXCLUDE_IFPHYS = common dso_local global i32 0, align 4
@AF_LINK = common dso_local global i64 0, align 8
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifaddrs*, i32)* @uv__ifaddr_exclude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__ifaddr_exclude(%struct.ifaddrs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca i32, align 4
  store %struct.ifaddrs* %0, %struct.ifaddrs** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %7 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IFF_UP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %14 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IFF_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %2
  store i32 1, i32* %3, align 4
  br label %40

20:                                               ; preds = %12
  %21 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %22 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp eq %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %40

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @UV__EXCLUDE_IFPHYS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %32 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AF_LINK, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %30, %25, %19
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
