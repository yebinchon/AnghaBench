; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_mode_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.packet_command = type { i32*, i32, i32 }

@GPCMD_MODE_SENSE_10 = common dso_local global i32 0, align 4
@CGC_DATA_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_mode_sense(%struct.cdrom_device_info* %0, %struct.packet_command* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cdrom_device_info*, align 8
  %6 = alloca %struct.packet_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cdrom_device_ops*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %5, align 8
  store %struct.packet_command* %1, %struct.packet_command** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 0
  %12 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %11, align 8
  store %struct.cdrom_device_ops* %12, %struct.cdrom_device_ops** %9, align 8
  %13 = load %struct.packet_command*, %struct.packet_command** %6, align 8
  %14 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @memset(i32* %15, i32 0, i32 8)
  %17 = load i32, i32* @GPCMD_MODE_SENSE_10, align 4
  %18 = load %struct.packet_command*, %struct.packet_command** %6, align 8
  %19 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 6
  %25 = or i32 %22, %24
  %26 = load %struct.packet_command*, %struct.packet_command** %6, align 8
  %27 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %25, i32* %29, align 4
  %30 = load %struct.packet_command*, %struct.packet_command** %6, align 8
  %31 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 8
  %34 = load %struct.packet_command*, %struct.packet_command** %6, align 8
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  store i32 %33, i32* %37, align 4
  %38 = load %struct.packet_command*, %struct.packet_command** %6, align 8
  %39 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 255
  %42 = load %struct.packet_command*, %struct.packet_command** %6, align 8
  %43 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @CGC_DATA_READ, align 4
  %47 = load %struct.packet_command*, %struct.packet_command** %6, align 8
  %48 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %9, align 8
  %50 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %49, i32 0, i32 0
  %51 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %50, align 8
  %52 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %53 = bitcast %struct.cdrom_device_info* %52 to %struct.cdrom_device_info.0*
  %54 = load %struct.packet_command*, %struct.packet_command** %6, align 8
  %55 = call i32 %51(%struct.cdrom_device_info.0* %53, %struct.packet_command* %54)
  ret i32 %55
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
