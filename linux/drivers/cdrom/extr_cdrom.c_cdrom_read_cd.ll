; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_read_cd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_read_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.packet_command = type { i32*, i32 }

@GPCMD_READ_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.packet_command*, i32, i32, i32)* @cdrom_read_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_read_cd(%struct.cdrom_device_info* %0, %struct.packet_command* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cdrom_device_info*, align 8
  %7 = alloca %struct.packet_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cdrom_device_ops*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %6, align 8
  store %struct.packet_command* %1, %struct.packet_command** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %13 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %12, i32 0, i32 0
  %14 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %13, align 8
  store %struct.cdrom_device_ops* %14, %struct.cdrom_device_ops** %11, align 8
  %15 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %16 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %15, i32 0, i32 0
  %17 = call i32 @memset(i32** %16, i32 0, i32 8)
  %18 = load i32, i32* @GPCMD_READ_10, align 4
  %19 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 24
  %25 = and i32 %24, 255
  %26 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %27 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %25, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %34 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %41 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 255
  %46 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %47 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %54 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = ashr i32 %57, 8
  %59 = and i32 %58, 255
  %60 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %61 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, 255
  %66 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %67 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %74 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %11, align 8
  %76 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %75, i32 0, i32 0
  %77 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %76, align 8
  %78 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %79 = bitcast %struct.cdrom_device_info* %78 to %struct.cdrom_device_info.0*
  %80 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %81 = call i32 %77(%struct.cdrom_device_info.0* %79, %struct.packet_command* %80)
  ret i32 %81
}

declare dso_local i32 @memset(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
