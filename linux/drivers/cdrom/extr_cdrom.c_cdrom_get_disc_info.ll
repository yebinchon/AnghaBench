; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_get_disc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_get_disc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.packet_command = type { i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_READ_DISC_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.TYPE_4__*)* @cdrom_get_disc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_get_disc_info(%struct.cdrom_device_info* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.cdrom_device_ops*, align 8
  %7 = alloca %struct.packet_command, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 0
  %12 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %11, align 8
  store %struct.cdrom_device_ops* %12, %struct.cdrom_device_ops** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = load i32, i32* @CGC_DATA_READ, align 4
  %15 = call i32 @init_cdrom_command(%struct.packet_command* %7, %struct.TYPE_4__* %13, i32 4, i32 %14)
  %16 = load i32, i32* @GPCMD_READ_DISC_INFO, align 4
  %17 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 1
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 8
  store i32 2, i32* %23, align 4
  %24 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 2
  store i32 1, i32* %24, align 4
  %25 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %6, align 8
  %26 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %26, align 8
  %28 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %29 = bitcast %struct.cdrom_device_info* %28 to %struct.cdrom_device_info.0*
  %30 = call i32 %27(%struct.cdrom_device_info.0* %29, %struct.packet_command* %7)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %65

35:                                               ; preds = %2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be16_to_cpu(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ugt i64 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 4, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 8
  store i32 %48, i32* %52, align 4
  %53 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %6, align 8
  %54 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %53, i32 0, i32 0
  %55 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %54, align 8
  %56 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %57 = bitcast %struct.cdrom_device_info* %56 to %struct.cdrom_device_info.0*
  %58 = call i32 %55(%struct.cdrom_device_info.0* %57, %struct.packet_command* %7)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %47
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %61, %33
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
