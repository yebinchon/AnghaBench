; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_validate_req_change_req_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_validate_req_change_req_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rb_root = type { i32 }
%struct.drbd_request = type { i32 }
%struct.bio_and_error = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*, i32, i32, %struct.rb_root*, i8*, i32, i32)* @validate_req_change_req_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_req_change_req_state(%struct.drbd_device* %0, i32 %1, i32 %2, %struct.rb_root* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.drbd_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rb_root*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.drbd_request*, align 8
  %17 = alloca %struct.bio_and_error, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.rb_root* %3, %struct.rb_root** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %19 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %24 = load %struct.rb_root*, %struct.rb_root** %12, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = call %struct.drbd_request* @find_request(%struct.drbd_device* %23, %struct.rb_root* %24, i32 %25, i32 %26, i32 %27, i8* %28)
  store %struct.drbd_request* %29, %struct.drbd_request** %16, align 8
  %30 = load %struct.drbd_request*, %struct.drbd_request** %16, align 8
  %31 = icmp ne %struct.drbd_request* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %7
  %37 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %38 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_irq(i32* %40)
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %60

44:                                               ; preds = %7
  %45 = load %struct.drbd_request*, %struct.drbd_request** %16, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @__req_mod(%struct.drbd_request* %45, i32 %46, %struct.bio_and_error* %17)
  %48 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %49 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_irq(i32* %51)
  %53 = getelementptr inbounds %struct.bio_and_error, %struct.bio_and_error* %17, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %58 = call i32 @complete_master_bio(%struct.drbd_device* %57, %struct.bio_and_error* %17)
  br label %59

59:                                               ; preds = %56, %44
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.drbd_request* @find_request(%struct.drbd_device*, %struct.rb_root*, i32, i32, i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @__req_mod(%struct.drbd_request*, i32, %struct.bio_and_error*) #1

declare dso_local i32 @complete_master_bio(%struct.drbd_device*, %struct.bio_and_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
