; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_reader_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_reader_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.reader_dev* }
%struct.reader_dev = type { i32, i32, i32, i32, i32, %struct.pcmcia_device*, i64, i32 }

@CM_MAX_DEV = common dso_local global i32 0, align 4
@dev_table = common dso_local global %struct.pcmcia_device** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CCID_DRIVER_MINIMUM_TIMEOUT = common dso_local global i32 0, align 4
@cm4040_do_poll = common dso_local global i32 0, align 4
@cmx_class = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cmx%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @reader_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.reader_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @CM_MAX_DEV, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load %struct.pcmcia_device**, %struct.pcmcia_device*** @dev_table, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pcmcia_device*, %struct.pcmcia_device** %12, i64 %14
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %15, align 8
  %17 = icmp eq %struct.pcmcia_device* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %23

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %7

23:                                               ; preds = %18, %7
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CM_MAX_DEV, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %91

30:                                               ; preds = %23
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.reader_dev* @kzalloc(i32 48, i32 %31)
  store %struct.reader_dev* %32, %struct.reader_dev** %4, align 8
  %33 = load %struct.reader_dev*, %struct.reader_dev** %4, align 8
  %34 = icmp eq %struct.reader_dev* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %91

38:                                               ; preds = %30
  %39 = load i32, i32* @CCID_DRIVER_MINIMUM_TIMEOUT, align 4
  %40 = load %struct.reader_dev*, %struct.reader_dev** %4, align 8
  %41 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.reader_dev*, %struct.reader_dev** %4, align 8
  %43 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %42, i32 0, i32 6
  store i64 0, i64* %43, align 8
  %44 = load %struct.reader_dev*, %struct.reader_dev** %4, align 8
  %45 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %46 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %45, i32 0, i32 0
  store %struct.reader_dev* %44, %struct.reader_dev** %46, align 8
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %48 = load %struct.reader_dev*, %struct.reader_dev** %4, align 8
  %49 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %48, i32 0, i32 5
  store %struct.pcmcia_device* %47, %struct.pcmcia_device** %49, align 8
  %50 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %51 = load %struct.pcmcia_device**, %struct.pcmcia_device*** @dev_table, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.pcmcia_device*, %struct.pcmcia_device** %51, i64 %53
  store %struct.pcmcia_device* %50, %struct.pcmcia_device** %54, align 8
  %55 = load %struct.reader_dev*, %struct.reader_dev** %4, align 8
  %56 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %55, i32 0, i32 4
  %57 = call i32 @init_waitqueue_head(i32* %56)
  %58 = load %struct.reader_dev*, %struct.reader_dev** %4, align 8
  %59 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %58, i32 0, i32 3
  %60 = call i32 @init_waitqueue_head(i32* %59)
  %61 = load %struct.reader_dev*, %struct.reader_dev** %4, align 8
  %62 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %61, i32 0, i32 2
  %63 = call i32 @init_waitqueue_head(i32* %62)
  %64 = load %struct.reader_dev*, %struct.reader_dev** %4, align 8
  %65 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %64, i32 0, i32 1
  %66 = call i32 @init_waitqueue_head(i32* %65)
  %67 = load %struct.reader_dev*, %struct.reader_dev** %4, align 8
  %68 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %67, i32 0, i32 0
  %69 = load i32, i32* @cm4040_do_poll, align 4
  %70 = call i32 @timer_setup(i32* %68, i32 %69, i32 0)
  %71 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @reader_config(%struct.pcmcia_device* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %38
  %77 = load %struct.pcmcia_device**, %struct.pcmcia_device*** @dev_table, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.pcmcia_device*, %struct.pcmcia_device** %77, i64 %79
  store %struct.pcmcia_device* null, %struct.pcmcia_device** %80, align 8
  %81 = load %struct.reader_dev*, %struct.reader_dev** %4, align 8
  %82 = call i32 @kfree(%struct.reader_dev* %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %91

84:                                               ; preds = %38
  %85 = load i32, i32* @cmx_class, align 4
  %86 = load i32, i32* @major, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @MKDEV(i32 %86, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @device_create(i32 %85, i32* null, i32 %88, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %84, %76, %35, %27
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.reader_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @reader_config(%struct.pcmcia_device*, i32) #1

declare dso_local i32 @kfree(%struct.reader_dev*) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
