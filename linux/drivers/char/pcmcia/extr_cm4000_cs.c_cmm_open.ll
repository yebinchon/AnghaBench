; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_cmm_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_cmm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.cm4000_dev* }
%struct.cm4000_dev = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.cm4000_dev* }

@CM4000_MAX_DEV = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cmm_mutex = common dso_local global i32 0, align 4
@dev_table = common dso_local global %struct.pcmcia_device** null, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"-> cmm_open(device=%d.%d process=%s,%d)\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@T_50MSEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"<- cmm_open\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cmm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmm_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.cm4000_dev*, align 8
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @CM4000_MAX_DEV, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %87

18:                                               ; preds = %2
  %19 = call i32 @mutex_lock(i32* @cmm_mutex)
  %20 = load %struct.pcmcia_device**, %struct.pcmcia_device*** @dev_table, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pcmcia_device*, %struct.pcmcia_device** %20, i64 %22
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %23, align 8
  store %struct.pcmcia_device* %24, %struct.pcmcia_device** %7, align 8
  %25 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %26 = icmp eq %struct.pcmcia_device* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %29 = call i32 @pcmcia_dev_present(%struct.pcmcia_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %18
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %84

34:                                               ; preds = %27
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %84

42:                                               ; preds = %34
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %43, i32 0, i32 1
  %45 = load %struct.cm4000_dev*, %struct.cm4000_dev** %44, align 8
  store %struct.cm4000_dev* %45, %struct.cm4000_dev** %6, align 8
  %46 = load %struct.cm4000_dev*, %struct.cm4000_dev** %6, align 8
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 1
  store %struct.cm4000_dev* %46, %struct.cm4000_dev** %48, align 8
  %49 = load %struct.cm4000_dev*, %struct.cm4000_dev** %6, align 8
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = call i32 @imajor(%struct.inode* %50)
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 2, %struct.cm4000_dev* %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.cm4000_dev*, %struct.cm4000_dev** %6, align 8
  %61 = call i32 @ZERO_DEV(%struct.cm4000_dev* %60)
  %62 = load %struct.file*, %struct.file** %5, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @O_NONBLOCK, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %42
  %69 = load i32, i32* @EAGAIN, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %84

71:                                               ; preds = %42
  %72 = load i32, i32* @T_50MSEC, align 4
  %73 = load %struct.cm4000_dev*, %struct.cm4000_dev** %6, align 8
  %74 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.cm4000_dev*, %struct.cm4000_dev** %6, align 8
  %76 = call i32 @start_monitor(%struct.cm4000_dev* %75)
  %77 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %78 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.cm4000_dev*, %struct.cm4000_dev** %6, align 8
  %80 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 2, %struct.cm4000_dev* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = load %struct.file*, %struct.file** %5, align 8
  %83 = call i32 @stream_open(%struct.inode* %81, %struct.file* %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %71, %68, %39, %31
  %85 = call i32 @mutex_unlock(i32* @cmm_mutex)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %15
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i32 @DEBUGP(i32, %struct.cm4000_dev*, i8*, ...) #1

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local i32 @ZERO_DEV(%struct.cm4000_dev*) #1

declare dso_local i32 @start_monitor(%struct.cm4000_dev*) #1

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
