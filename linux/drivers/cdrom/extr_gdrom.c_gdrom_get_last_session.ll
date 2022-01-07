; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_get_last_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_get_last_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32, i32 }
%struct.cdrom_device_info = type { i32 }
%struct.cdrom_multisession = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@gd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Could not get CD table of contents\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"No data on the last session of the CD\0A\00", align 1
@CDROM_LBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.cdrom_multisession*)* @gdrom_get_last_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdrom_get_last_session(%struct.cdrom_device_info* %0, %struct.cdrom_multisession* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.cdrom_multisession*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.cdrom_multisession* %1, %struct.cdrom_multisession** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %90

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %18 = call i32 @gdrom_readtoc_cmd(%struct.TYPE_5__* %17, i32 1)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %23 = call i32 @gdrom_readtoc_cmd(%struct.TYPE_5__* %22, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %90

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @get_entry_track(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @get_entry_track(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @get_entry_track(i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %60, %31
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @get_entry_q_ctrl(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %64

57:                                               ; preds = %44
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %44, label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %8, align 4
  %66 = icmp sgt i32 %65, 100
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @get_entry_track(i32 %71)
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67, %64
  %75 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32 @gdrom_getsense(i32* null)
  %77 = load i32, i32* @ENXIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %90

79:                                               ; preds = %67
  %80 = load i32, i32* @CDROM_LBA, align 4
  %81 = load %struct.cdrom_multisession*, %struct.cdrom_multisession** %5, align 8
  %82 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @get_entry_lba(i32 %83)
  %85 = load %struct.cdrom_multisession*, %struct.cdrom_multisession** %5, align 8
  %86 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load %struct.cdrom_multisession*, %struct.cdrom_multisession** %5, align 8
  %89 = getelementptr inbounds %struct.cdrom_multisession, %struct.cdrom_multisession* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %79, %74, %26, %13
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @gdrom_readtoc_cmd(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @get_entry_track(i32) #1

declare dso_local i64 @get_entry_q_ctrl(i32) #1

declare dso_local i32 @gdrom_getsense(i32*) #1

declare dso_local i32 @get_entry_lba(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
