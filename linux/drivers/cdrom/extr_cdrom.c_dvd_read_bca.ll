; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_dvd_read_bca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_dvd_read_bca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.packet_command = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_READ_DVD_STRUCTURE = common dso_local global i32 0, align 4
@CD_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Received invalid BCA length (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.TYPE_5__*, %struct.packet_command*)* @dvd_read_bca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvd_read_bca(%struct.cdrom_device_info* %0, %struct.TYPE_5__* %1, %struct.packet_command* %2) #0 {
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
  store i32 192, i32* %9, align 4
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %13 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %12, i32 0, i32 0
  %14 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %13, align 8
  store %struct.cdrom_device_ops* %14, %struct.cdrom_device_ops** %11, align 8
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
  br label %107

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
  %41 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %42 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 255
  %45 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %46 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 9
  store i32 %44, i32* %48, align 4
  %49 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %11, align 8
  %50 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %49, i32 0, i32 0
  %51 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %50, align 8
  %52 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %5, align 8
  %53 = bitcast %struct.cdrom_device_info* %52 to %struct.cdrom_device_info.0*
  %54 = load %struct.packet_command*, %struct.packet_command** %7, align 8
  %55 = call i32 %51(%struct.cdrom_device_info.0* %53, %struct.packet_command* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %23
  br label %103

59:                                               ; preds = %23
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 12
  br i1 %75, label %82, label %76

76:                                               ; preds = %59
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 188
  br i1 %81, label %82, label %91

82:                                               ; preds = %76, %59
  %83 = load i32, i32* @CD_WARNING, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @cd_dbg(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %103

91:                                               ; preds = %76
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @memcpy(i32 %95, i32* %97, i32 %101)
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %91, %82, %58
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @kfree(i32* %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %20
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i32*, i32, i32) #1

declare dso_local i32 @cd_dbg(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
