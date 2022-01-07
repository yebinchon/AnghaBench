; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_dvd_read_copyright.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_dvd_read_copyright.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.packet_command = type { i32*, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_READ_DVD_STRUCTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.TYPE_5__*, %struct.packet_command*)* @dvd_read_copyright to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvd_read_copyright(%struct.cdrom_device_info* %0, %struct.TYPE_5__* %1, %struct.packet_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_info*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.packet_command*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8*], align 16
  %10 = alloca %struct.cdrom_device_ops*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.packet_command* %2, %struct.packet_command** %7, align 8
  %11 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %12 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %11, i32 0, i32 0
  %13 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %12, align 8
  store %struct.cdrom_device_ops* %13, %struct.cdrom_device_ops** %10, align 8
  %14 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %15 = getelementptr inbounds [8 x i8*], [8 x i8*]* %9, i64 0, i64 0
  %16 = load i32, i32* @CGC_DATA_READ, align 4
  %17 = call i32 @init_cdrom_command(%struct.packet_command* %14, i8** %15, i32 64, i32 %16)
  %18 = load i32, i32* @GPCMD_READ_DVD_STRUCTURE, align 4
  %19 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %28 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 6
  store i32 %26, i32* %30, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  store i32 %33, i32* %37, align 4
  %38 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %39 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %40, 8
  %42 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %43 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  store i32 %41, i32* %45, align 4
  %46 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %47 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 255
  %50 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %51 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 9
  store i32 %49, i32* %53, align 4
  %54 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %10, align 8
  %55 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %54, i32 0, i32 0
  %56 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %55, align 8
  %57 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %58 = bitcast %struct.cdrom_device_info* %57 to %struct.cdrom_device_info.0*
  %59 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %60 = call i32 %56(%struct.cdrom_device_info.0* %58, %struct.packet_command* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %3
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %76

65:                                               ; preds = %3
  %66 = getelementptr inbounds [8 x i8*], [8 x i8*]* %9, i64 0, i64 4
  %67 = load i8*, i8** %66, align 16
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i8* %67, i8** %70, align 8
  %71 = getelementptr inbounds [8 x i8*], [8 x i8*]* %9, i64 0, i64 5
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %65, %63
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
