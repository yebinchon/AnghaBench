; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_lock_door.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_lock_door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32 }
%struct.packet_command = type { i32* }

@CGC_DATA_NONE = common dso_local global i32 0, align 4
@GPCMD_PREVENT_ALLOW_MEDIUM_REMOVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*, i32)* @pkt_lock_door to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_lock_door(%struct.pktcdvd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.pktcdvd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_command, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @CGC_DATA_NONE, align 4
  %7 = call i32 @init_cdrom_command(%struct.packet_command* %5, i32* null, i32 0, i32 %6)
  %8 = load i32, i32* @GPCMD_PREVENT_ALLOW_MEDIUM_REMOVAL, align 4
  %9 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %5, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %5, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  store i32 %15, i32* %18, align 4
  %19 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %20 = call i32 @pkt_generic_packet(%struct.pktcdvd_device* %19, %struct.packet_command* %5)
  ret i32 %20
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i32*, i32, i32) #1

declare dso_local i32 @pkt_generic_packet(%struct.pktcdvd_device*, %struct.packet_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
