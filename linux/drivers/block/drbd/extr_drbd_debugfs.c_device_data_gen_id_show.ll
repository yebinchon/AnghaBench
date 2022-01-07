; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_device_data_gen_id_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_device_data_gen_id_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drbd_device* }
%struct.drbd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drbd_md }
%struct.drbd_md = type { i32, i32* }

@D_FAILED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@UI_CURRENT = common dso_local global i32 0, align 4
@UI_HISTORY_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"0x%016llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @device_data_gen_id_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_data_gen_id_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drbd_device*, align 8
  %7 = alloca %struct.drbd_md*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  store %struct.drbd_device* %11, %struct.drbd_device** %6, align 8
  %12 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %13 = load i32, i32* @D_FAILED, align 4
  %14 = call i32 @get_ldev_if_state(%struct.drbd_device* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %21 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.drbd_md* %23, %struct.drbd_md** %7, align 8
  %24 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %25 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load i32, i32* @UI_CURRENT, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %42, %19
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @UI_HISTORY_END, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %35 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load %struct.drbd_md*, %struct.drbd_md** %7, align 8
  %47 = getelementptr inbounds %struct.drbd_md, %struct.drbd_md* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_irq(i32* %47)
  %49 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %50 = call i32 @put_ldev(%struct.drbd_device* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @get_ldev_if_state(%struct.drbd_device*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
