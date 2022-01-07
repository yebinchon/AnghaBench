; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_reader_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_reader_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.reader_dev* }
%struct.reader_dev = type { i32 }

@CM_MAX_DEV = common dso_local global i32 0, align 4
@dev_table = common dso_local global %struct.pcmcia_device** null, align 8
@cmx_class = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @reader_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reader_detach(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.reader_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %5 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %6 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %5, i32 0, i32 0
  %7 = load %struct.reader_dev*, %struct.reader_dev** %6, align 8
  store %struct.reader_dev* %7, %struct.reader_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @CM_MAX_DEV, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load %struct.pcmcia_device**, %struct.pcmcia_device*** @dev_table, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pcmcia_device*, %struct.pcmcia_device** %13, i64 %15
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %16, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %19 = icmp eq %struct.pcmcia_device* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %25

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %8

25:                                               ; preds = %20, %8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @CM_MAX_DEV, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %44

30:                                               ; preds = %25
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %32 = call i32 @reader_release(%struct.pcmcia_device* %31)
  %33 = load %struct.pcmcia_device**, %struct.pcmcia_device*** @dev_table, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.pcmcia_device*, %struct.pcmcia_device** %33, i64 %35
  store %struct.pcmcia_device* null, %struct.pcmcia_device** %36, align 8
  %37 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %38 = call i32 @kfree(%struct.reader_dev* %37)
  %39 = load i32, i32* @cmx_class, align 4
  %40 = load i32, i32* @major, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @MKDEV(i32 %40, i32 %41)
  %43 = call i32 @device_destroy(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @reader_release(%struct.pcmcia_device*) #1

declare dso_local i32 @kfree(%struct.reader_dev*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
