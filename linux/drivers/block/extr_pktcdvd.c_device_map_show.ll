; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_device_map_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_device_map_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.class = type { i32 }
%struct.class_attribute = type { i32 }

@ctl_mutex = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@MAX_WRITERS = common dso_local global i32 0, align 4
@pkt_devs = common dso_local global %struct.pktcdvd_device** null, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s %u:%u %u:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.class*, %struct.class_attribute*, i8*)* @device_map_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_map_show(%struct.class* %0, %struct.class_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.class*, align 8
  %5 = alloca %struct.class_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pktcdvd_device*, align 8
  store %struct.class* %0, %struct.class** %4, align 8
  store %struct.class_attribute* %1, %struct.class_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %11 = call i32 @mutex_lock_nested(i32* @ctl_mutex, i32 %10)
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %58, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MAX_WRITERS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %12
  %17 = load %struct.pktcdvd_device**, %struct.pktcdvd_device*** @pkt_devs, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pktcdvd_device*, %struct.pktcdvd_device** %17, i64 %19
  %21 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %20, align 8
  store %struct.pktcdvd_device* %21, %struct.pktcdvd_device** %9, align 8
  %22 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %23 = icmp ne %struct.pktcdvd_device* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %58

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %31 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %34 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @MAJOR(i32 %35)
  %37 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %38 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @MINOR(i32 %39)
  %41 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %42 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @MAJOR(i32 %45)
  %47 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %48 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MINOR(i32 %51)
  %53 = call i64 @sprintf(i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %36, i32 %40, i32 %46, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %25, %24
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %12

61:                                               ; preds = %12
  %62 = call i32 @mutex_unlock(i32* @ctl_mutex)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
