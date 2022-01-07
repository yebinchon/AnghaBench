; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_get_track_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_get_track_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.packet_command = type { i32*, i32, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_READ_TRACK_RZONE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pktcdvd_device*, i32, i32, %struct.TYPE_4__*)* @pkt_get_track_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_get_track_info(%struct.pktcdvd_device* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pktcdvd_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.packet_command, align 8
  %11 = alloca i32, align 4
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %13 = load i32, i32* @CGC_DATA_READ, align 4
  %14 = call i32 @init_cdrom_command(%struct.packet_command* %10, %struct.TYPE_4__* %12, i32 8, i32 %13)
  %15 = load i32, i32* @GPCMD_READ_TRACK_RZONE_INFO, align 4
  %16 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 3
  %21 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 65280
  %26 = ashr i32 %25, 8
  %27 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  store i32 %31, i32* %34, align 4
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32 8, i32* %37, align 4
  %38 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 1
  store i32 1, i32* %38, align 8
  %39 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %40 = call i32 @pkt_generic_packet(%struct.pktcdvd_device* %39, %struct.packet_command* %10)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %4
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %5, align 4
  br label %68

45:                                               ; preds = %4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @be16_to_cpu(i32 %48)
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %56, 4
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 2
  store i32 4, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %45
  %61 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %10, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  store i32 %62, i32* %65, align 4
  %66 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %6, align 8
  %67 = call i32 @pkt_generic_packet(%struct.pktcdvd_device* %66, %struct.packet_command* %10)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %60, %43
  %69 = load i32, i32* %5, align 4
  ret i32 %69
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
