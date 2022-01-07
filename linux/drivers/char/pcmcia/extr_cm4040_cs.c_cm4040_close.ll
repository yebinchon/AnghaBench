; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_cm4040_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_cm4040_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64 }
%struct.inode = type { i32 }
%struct.file = type { %struct.reader_dev* }
%struct.reader_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"-> cm4040_close(maj/min=%d.%d)\0A\00", align 1
@CM_MAX_DEV = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dev_table = common dso_local global %struct.pcmcia_device** null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"<- cm4040_close\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cm4040_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm4040_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.reader_dev*, align 8
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.reader_dev*, %struct.reader_dev** %10, align 8
  store %struct.reader_dev* %11, %struct.reader_dev** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @iminor(%struct.inode* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.reader_dev*, %struct.reader_dev** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call i32 @imajor(%struct.inode* %15)
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @iminor(%struct.inode* %17)
  %19 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 2, %struct.reader_dev* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @CM_MAX_DEV, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %2
  %27 = load %struct.pcmcia_device**, %struct.pcmcia_device*** @dev_table, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pcmcia_device*, %struct.pcmcia_device** %27, i64 %29
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %30, align 8
  store %struct.pcmcia_device* %31, %struct.pcmcia_device** %7, align 8
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %33 = icmp eq %struct.pcmcia_device* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %47

37:                                               ; preds = %26
  %38 = load %struct.reader_dev*, %struct.reader_dev** %6, align 8
  %39 = call i32 @cm4040_stop_poll(%struct.reader_dev* %38)
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.reader_dev*, %struct.reader_dev** %6, align 8
  %43 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %42, i32 0, i32 0
  %44 = call i32 @wake_up(i32* %43)
  %45 = load %struct.reader_dev*, %struct.reader_dev** %6, align 8
  %46 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 2, %struct.reader_dev* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %37, %34, %23
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @DEBUGP(i32, %struct.reader_dev*, i8*, ...) #1

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local i32 @cm4040_stop_poll(%struct.reader_dev*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
