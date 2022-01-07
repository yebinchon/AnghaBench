; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_dvd_rw_close_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_cdrom.c_cdrom_dvd_rw_close_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*, %struct.packet_command*)* }
%struct.packet_command = type { i32*, i32, i32 }

@CD_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: No DVD+RW\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: DVD+RW media clean\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: dirty DVD+RW media, \22finalizing\22\0A\00", align 1
@CGC_DATA_NONE = common dso_local global i32 0, align 4
@GPCMD_FLUSH_CACHE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@GPCMD_CLOSE_TRACK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdrom_device_info*)* @cdrom_dvd_rw_close_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdrom_dvd_rw_close_write(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca %struct.cdrom_device_info*, align 8
  %3 = alloca %struct.packet_command, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %2, align 8
  %4 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %5 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 26
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @CD_CLOSE, align 4
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @cd_dbg(i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %87

14:                                               ; preds = %1
  %15 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %16 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @CD_CLOSE, align 4
  %21 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %22 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cd_dbg(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %87

25:                                               ; preds = %14
  %26 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %27 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @CGC_DATA_NONE, align 4
  %31 = call i32 @init_cdrom_command(%struct.packet_command* %3, i32* null, i32 0, i32 %30)
  %32 = load i32, i32* @GPCMD_FLUSH_CACHE, align 4
  %33 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 30, %36
  %38 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %40 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.cdrom_device_info*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info*, %struct.packet_command*)** %42, align 8
  %44 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %45 = call i32 %43(%struct.cdrom_device_info* %44, %struct.packet_command* %3)
  %46 = load i32, i32* @CGC_DATA_NONE, align 4
  %47 = call i32 @init_cdrom_command(%struct.packet_command* %3, i32* null, i32 0, i32 %46)
  %48 = load i8*, i8** @GPCMD_CLOSE_TRACK, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @HZ, align 4
  %54 = mul nsw i32 3000, %53
  %55 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 2
  store i32 1, i32* %56, align 4
  %57 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %58 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.cdrom_device_info*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info*, %struct.packet_command*)** %60, align 8
  %62 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %63 = call i32 %61(%struct.cdrom_device_info* %62, %struct.packet_command* %3)
  %64 = load i32, i32* @CGC_DATA_NONE, align 4
  %65 = call i32 @init_cdrom_command(%struct.packet_command* %3, i32* null, i32 0, i32 %64)
  %66 = load i8*, i8** @GPCMD_CLOSE_TRACK, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %67, i32* %70, align 4
  %71 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 2, i32* %73, align 4
  %74 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 2
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* @HZ, align 4
  %76 = mul nsw i32 3000, %75
  %77 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %3, i32 0, i32 1
  store i32 %76, i32* %77, align 8
  %78 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %79 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (%struct.cdrom_device_info*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info*, %struct.packet_command*)** %81, align 8
  %83 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %84 = call i32 %82(%struct.cdrom_device_info* %83, %struct.packet_command* %3)
  %85 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %86 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %25, %19, %8
  ret void
}

declare dso_local i32 @cd_dbg(i32, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
