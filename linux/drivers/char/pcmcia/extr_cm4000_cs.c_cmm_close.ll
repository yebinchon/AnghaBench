; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_cmm_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4000_cs.c_cmm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, %struct.cm4000_dev* }
%struct.cm4000_dev = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@CM4000_MAX_DEV = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dev_table = common dso_local global %struct.pcmcia_device** null, align 8
@.str = private unnamed_addr constant [29 x i8] c"-> cmm_close(maj/min=%d.%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"cmm_close\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cmm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmm_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.cm4000_dev*, align 8
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @CM4000_MAX_DEV, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.pcmcia_device**, %struct.pcmcia_device*** @dev_table, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pcmcia_device*, %struct.pcmcia_device** %18, i64 %20
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %21, align 8
  store %struct.pcmcia_device* %22, %struct.pcmcia_device** %7, align 8
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %24 = icmp eq %struct.pcmcia_device* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %48

28:                                               ; preds = %17
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 1
  %31 = load %struct.cm4000_dev*, %struct.cm4000_dev** %30, align 8
  store %struct.cm4000_dev* %31, %struct.cm4000_dev** %6, align 8
  %32 = load %struct.cm4000_dev*, %struct.cm4000_dev** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call i32 @imajor(%struct.inode* %33)
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 2, %struct.cm4000_dev* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.cm4000_dev*, %struct.cm4000_dev** %6, align 8
  %38 = call i32 @stop_monitor(%struct.cm4000_dev* %37)
  %39 = load %struct.cm4000_dev*, %struct.cm4000_dev** %6, align 8
  %40 = call i32 @ZERO_DEV(%struct.cm4000_dev* %39)
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %7, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.cm4000_dev*, %struct.cm4000_dev** %6, align 8
  %44 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %43, i32 0, i32 0
  %45 = call i32 @wake_up(i32* %44)
  %46 = load %struct.cm4000_dev*, %struct.cm4000_dev** %6, align 8
  %47 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 2, %struct.cm4000_dev* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %28, %25, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @DEBUGP(i32, %struct.cm4000_dev*, i8*, ...) #1

declare dso_local i32 @imajor(%struct.inode*) #1

declare dso_local i32 @stop_monitor(%struct.cm4000_dev*) #1

declare dso_local i32 @ZERO_DEV(%struct.cm4000_dev*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
