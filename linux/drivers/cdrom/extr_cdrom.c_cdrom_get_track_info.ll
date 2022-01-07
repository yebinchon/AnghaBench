; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_get_track_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_get_track_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.packet_command = type { i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_READ_TRACK_RZONE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32, i32, %struct.TYPE_4__*)* @cdrom_get_track_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_get_track_info(%struct.cdrom_device_info* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdrom_device_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.cdrom_device_ops*, align 8
  %11 = alloca %struct.packet_command, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  %14 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %15 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %14, i32 0, i32 0
  %16 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %15, align 8
  store %struct.cdrom_device_ops* %16, %struct.cdrom_device_ops** %10, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %18 = load i32, i32* @CGC_DATA_READ, align 4
  %19 = call i32 @init_cdrom_command(%struct.packet_command* %11, %struct.TYPE_4__* %17, i32 8, i32 %18)
  %20 = load i32, i32* @GPCMD_READ_TRACK_RZONE_INFO, align 4
  %21 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 3
  %26 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 65280
  %31 = ashr i32 %30, 8
  %32 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  store i32 %36, i32* %39, align 4
  %40 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  store i32 8, i32* %42, align 4
  %43 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %10, align 8
  %45 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %44, i32 0, i32 0
  %46 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %45, align 8
  %47 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %48 = bitcast %struct.cdrom_device_info* %47 to %struct.cdrom_device_info.0*
  %49 = call i32 %46(%struct.cdrom_device_info.0* %48, %struct.packet_command* %11)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %4
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %84

54:                                               ; preds = %4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be16_to_cpu(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ugt i64 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store i32 4, i32* %13, align 4
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i32, i32* %13, align 4
  %68 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %11, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 8
  store i32 %67, i32* %71, align 4
  %72 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %10, align 8
  %73 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %72, i32 0, i32 0
  %74 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %73, align 8
  %75 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %6, align 8
  %76 = bitcast %struct.cdrom_device_info* %75 to %struct.cdrom_device_info.0*
  %77 = call i32 %74(%struct.cdrom_device_info.0* %76, %struct.packet_command* %11)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %5, align 4
  br label %84

82:                                               ; preds = %66
  %83 = load i32, i32* %13, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %80, %52
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
