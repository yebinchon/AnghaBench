; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_device_peer_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_seq_print_device_peer_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drbd_device = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"minor\09vnr\09sector\09size\09rw\09age\09flags\0A\00", align 1
@FLUSH_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%u\09%u\09-\09-\09F\09%u\09flush\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.drbd_device*, i64)* @seq_print_device_peer_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seq_print_device_peer_requests(%struct.seq_file* %0, %struct.drbd_device* %1, i64 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.drbd_device* %1, %struct.drbd_device** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = call i32 @seq_puts(%struct.seq_file* %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %10 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %16 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %17 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %16, i32 0, i32 7
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @seq_print_peer_request(%struct.seq_file* %14, %struct.drbd_device* %15, i32* %17, i64 %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %21 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %22 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %23 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %22, i32 0, i32 6
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @seq_print_peer_request(%struct.seq_file* %20, %struct.drbd_device* %21, i32* %23, i64 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %28 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %29 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %28, i32 0, i32 5
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @seq_print_peer_request(%struct.seq_file* %26, %struct.drbd_device* %27, i32* %29, i64 %30)
  %32 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %33 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load i32, i32* @FLUSH_PENDING, align 4
  %38 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %39 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %38, i32 0, i32 3
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %3
  %43 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %44 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %45 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %48 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %52 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %50, %53
  %55 = call i32 @jiffies_to_msecs(i64 %54)
  %56 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49, i32 %55)
  br label %57

57:                                               ; preds = %42, %3
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @seq_print_peer_request(%struct.seq_file*, %struct.drbd_device*, i32*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
