; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_GetLocalAddress.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_GetLocalAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32, i32, i32, i32, %struct.ifaddrs* }

@numIP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"NET_GetLocalAddress: Unable to get list of network interfaces: %s\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @NET_GetLocalAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NET_GetLocalAddress() #0 {
  %1 = alloca %struct.ifaddrs*, align 8
  %2 = alloca %struct.ifaddrs*, align 8
  store i64 0, i64* @numIP, align 8
  %3 = call i64 @getifaddrs(%struct.ifaddrs** %1)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 (...) @NET_ErrorString()
  %7 = call i32 @Com_Printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %40

8:                                                ; preds = %0
  %9 = load %struct.ifaddrs*, %struct.ifaddrs** %1, align 8
  store %struct.ifaddrs* %9, %struct.ifaddrs** %2, align 8
  br label %10

10:                                               ; preds = %32, %8
  %11 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %12 = icmp ne %struct.ifaddrs* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load %struct.ifaddrs*, %struct.ifaddrs** %1, align 8
  %15 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IFF_UP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %22 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %25 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %28 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @NET_AddLocalAddress(i32 %23, i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %20, %13
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %34 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %33, i32 0, i32 4
  %35 = load %struct.ifaddrs*, %struct.ifaddrs** %34, align 8
  store %struct.ifaddrs* %35, %struct.ifaddrs** %2, align 8
  br label %10

36:                                               ; preds = %10
  %37 = load %struct.ifaddrs*, %struct.ifaddrs** %1, align 8
  %38 = call i32 @freeifaddrs(%struct.ifaddrs* %37)
  %39 = call i32 (...) @Sys_ShowIP()
  br label %40

40:                                               ; preds = %36, %5
  ret void
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @NET_ErrorString(...) #1

declare dso_local i32 @NET_AddLocalAddress(i32, i32, i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

declare dso_local i32 @Sys_ShowIP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
