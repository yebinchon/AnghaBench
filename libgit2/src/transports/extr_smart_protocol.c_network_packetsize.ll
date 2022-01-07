; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_network_packetsize.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_network_packetsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.network_packetsize_payload = type { i64, i32, %struct.TYPE_2__*, i64 (%struct.TYPE_2__*, i32)* }
%struct.TYPE_2__ = type { i64 }

@NETWORK_XFER_THRESHOLD = common dso_local global i64 0, align 8
@GIT_EUSER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @network_packetsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_packetsize(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.network_packetsize_payload*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.network_packetsize_payload*
  store %struct.network_packetsize_payload* %8, %struct.network_packetsize_payload** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.network_packetsize_payload*, %struct.network_packetsize_payload** %6, align 8
  %11 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, %9
  store i64 %15, i64* %13, align 8
  %16 = load %struct.network_packetsize_payload*, %struct.network_packetsize_payload** %6, align 8
  %17 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.network_packetsize_payload*, %struct.network_packetsize_payload** %6, align 8
  %22 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load i64, i64* @NETWORK_XFER_THRESHOLD, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %2
  %28 = load %struct.network_packetsize_payload*, %struct.network_packetsize_payload** %6, align 8
  %29 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.network_packetsize_payload*, %struct.network_packetsize_payload** %6, align 8
  %34 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.network_packetsize_payload*, %struct.network_packetsize_payload** %6, align 8
  %36 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %35, i32 0, i32 3
  %37 = load i64 (%struct.TYPE_2__*, i32)*, i64 (%struct.TYPE_2__*, i32)** %36, align 8
  %38 = load %struct.network_packetsize_payload*, %struct.network_packetsize_payload** %6, align 8
  %39 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.network_packetsize_payload*, %struct.network_packetsize_payload** %6, align 8
  %42 = getelementptr inbounds %struct.network_packetsize_payload, %struct.network_packetsize_payload* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 %37(%struct.TYPE_2__* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = load i32, i32* @GIT_EUSER, align 4
  store i32 %47, i32* %3, align 4
  br label %50

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %48, %2
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
