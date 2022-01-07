; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_get_disc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_get_disc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.packet_command = type { i32*, i32, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_READ_DISC_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*, %struct.TYPE_4__*)* @pkt_get_disc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_get_disc_info(%struct.pktcdvd_device* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pktcdvd_device*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.packet_command, align 8
  %7 = alloca i32, align 4
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = load i32, i32* @CGC_DATA_READ, align 4
  %10 = call i32 @init_cdrom_command(%struct.packet_command* %6, %struct.TYPE_4__* %8, i32 4, i32 %9)
  %11 = load i32, i32* @GPCMD_READ_DISC_INFO, align 4
  %12 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %11, i32* %14, align 4
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  store i32 2, i32* %15, align 8
  %16 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 8
  store i32 2, i32* %18, align 4
  %19 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %21 = call i32 @pkt_generic_packet(%struct.pktcdvd_device* %20, %struct.packet_command* %6)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be16_to_cpu(i32 %29)
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  store i32 4, i32* %40, align 8
  br label %41

41:                                               ; preds = %39, %26
  %42 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  store i32 %43, i32* %46, align 4
  %47 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %4, align 8
  %48 = call i32 @pkt_generic_packet(%struct.pktcdvd_device* %47, %struct.packet_command* %6)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %24
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @pkt_generic_packet(%struct.pktcdvd_device*, %struct.packet_command*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
