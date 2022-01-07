; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_dvd_read_disckey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_dvd_read_disckey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.packet_command = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_READ_DVD_STRUCTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.TYPE_5__*, %struct.packet_command*)* @dvd_read_disckey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvd_read_disckey(%struct.cdrom_device_info* %0, %struct.TYPE_5__* %1, %struct.packet_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_info*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.packet_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.cdrom_device_ops*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.packet_command* %2, %struct.packet_command** %7, align 8
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %13 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %12, i32 0, i32 0
  %14 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %13, align 8
  store %struct.cdrom_device_ops* %14, %struct.cdrom_device_ops** %11, align 8
  store i32 8, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %83

23:                                               ; preds = %3
  %24 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CGC_DATA_READ, align 4
  %28 = call i32 @init_cdrom_command(%struct.packet_command* %24, i32* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @GPCMD_READ_DVD_STRUCTURE, align 4
  %30 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %31 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %38 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 8
  %43 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %44 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 255
  %49 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %50 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 9
  store i32 %48, i32* %52, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 6
  %58 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %59 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 10
  store i32 %57, i32* %61, align 4
  %62 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %11, align 8
  %63 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %62, i32 0, i32 0
  %64 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %63, align 8
  %65 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %66 = bitcast %struct.cdrom_device_info* %65 to %struct.cdrom_device_info.0*
  %67 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %68 = call i32 %64(%struct.cdrom_device_info.0* %66, %struct.packet_command* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %23
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = call i32 @memcpy(i32 %75, i32* %77, i32 4)
  br label %79

79:                                               ; preds = %71, %23
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @kfree(i32* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %20
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
