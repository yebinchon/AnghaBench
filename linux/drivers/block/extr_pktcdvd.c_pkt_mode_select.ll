; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_mode_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_mode_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32 }
%struct.packet_command = type { i32*, i32*, i32, i32 }

@GPCMD_MODE_SELECT_10 = common dso_local global i32 0, align 4
@CGC_DATA_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*, %struct.packet_command*)* @pkt_mode_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_mode_select(%struct.pktcdvd_device* %0, %struct.packet_command* %1) #0 {
  %3 = alloca %struct.pktcdvd_device*, align 8
  %4 = alloca %struct.packet_command*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %3, align 8
  store %struct.packet_command* %1, %struct.packet_command** %4, align 8
  %5 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %6 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @memset(i32* %7, i32 0, i32 8)
  %9 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %10 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @memset(i32* %11, i32 0, i32 2)
  %13 = load i32, i32* @GPCMD_MODE_SELECT_10, align 4
  %14 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %19 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 16, i32* %21, align 4
  %22 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %23 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 8
  %26 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %27 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 7
  store i32 %25, i32* %29, align 4
  %30 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %31 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 255
  %34 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @CGC_DATA_WRITE, align 4
  %39 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %40 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %42 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %43 = call i32 @pkt_generic_packet(%struct.pktcdvd_device* %41, %struct.packet_command* %42)
  ret i32 %43
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pkt_generic_packet(%struct.pktcdvd_device*, %struct.packet_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
