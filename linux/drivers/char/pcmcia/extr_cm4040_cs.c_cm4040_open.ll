; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_cm4040_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_cm4040_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.reader_dev* }
%struct.reader_dev = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.reader_dev* }

@CM_MAX_DEV = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cm4040_mutex = common dso_local global i32 0, align 4
@dev_table = common dso_local global %struct.pcmcia_device** null, align 8
@EBUSY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"filep->f_flags O_NONBLOCK set\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@POLL_PERIOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"<- cm4040_open (successfully)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cm4040_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm4040_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.reader_dev*, align 8
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @CM_MAX_DEV, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %77

18:                                               ; preds = %2
  %19 = call i32 @mutex_lock(i32* @cm4040_mutex)
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
  br label %74

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
  br label %74

42:                                               ; preds = %34
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %43, i32 0, i32 1
  %45 = load %struct.reader_dev*, %struct.reader_dev** %44, align 8
  store %struct.reader_dev* %45, %struct.reader_dev** %6, align 8
  %46 = load %struct.reader_dev*, %struct.reader_dev** %6, align 8
  %47 = load %struct.file*, %struct.file** %5, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 1
  store %struct.reader_dev* %46, %struct.reader_dev** %48, align 8
  %49 = load %struct.file*, %struct.file** %5, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @O_NONBLOCK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.reader_dev*, %struct.reader_dev** %6, align 8
  %57 = call i32 @DEBUGP(i32 4, %struct.reader_dev* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %74

60:                                               ; preds = %42
  %61 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %62 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.reader_dev*, %struct.reader_dev** %6, align 8
  %64 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %63, i32 0, i32 0
  %65 = load i64, i64* @jiffies, align 8
  %66 = load i64, i64* @POLL_PERIOD, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @mod_timer(i32* %64, i64 %67)
  %69 = load %struct.reader_dev*, %struct.reader_dev** %6, align 8
  %70 = call i32 @DEBUGP(i32 2, %struct.reader_dev* %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.inode*, %struct.inode** %4, align 8
  %72 = load %struct.file*, %struct.file** %5, align 8
  %73 = call i32 @nonseekable_open(%struct.inode* %71, %struct.file* %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %60, %55, %39, %31
  %75 = call i32 @mutex_unlock(i32* @cm4040_mutex)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i32 @DEBUGP(i32, %struct.reader_dev*, i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
