; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_mode_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_mode_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.packet_command = type { i32*, i32*, i32, i32 }

@GPCMD_MODE_SELECT_10 = common dso_local global i32 0, align 4
@CGC_DATA_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdrom_mode_select(%struct.cdrom_device_info* %0, %struct.packet_command* %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.packet_command*, align 8
  %5 = alloca %struct.cdrom_device_ops*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store %struct.packet_command* %1, %struct.packet_command** %4, align 8
  %6 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %7 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %6, i32 0, i32 0
  %8 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %7, align 8
  store %struct.cdrom_device_ops* %8, %struct.cdrom_device_ops** %5, align 8
  %9 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %10 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @memset(i32* %11, i32 0, i32 8)
  %13 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %14 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @memset(i32* %15, i32 0, i32 2)
  %17 = load i32, i32* @GPCMD_MODE_SELECT_10, align 4
  %18 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %19 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %23 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 16, i32* %25, align 4
  %26 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %27 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 8
  %30 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %31 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 7
  store i32 %29, i32* %33, align 4
  %34 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 255
  %38 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %39 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 8
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @CGC_DATA_WRITE, align 4
  %43 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %44 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %46 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %45, i32 0, i32 0
  %47 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %46, align 8
  %48 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %49 = bitcast %struct.cdrom_device_info* %48 to %struct.cdrom_device_info.0*
  %50 = load %struct.packet_command*, %struct.packet_command** %4, align 8
  %51 = call i32 %47(%struct.cdrom_device_info.0* %49, %struct.packet_command* %50)
  ret i32 %51
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
