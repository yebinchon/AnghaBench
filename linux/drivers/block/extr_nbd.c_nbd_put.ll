; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32, i32 }

@nbd_index_mutex = common dso_local global i32 0, align 4
@nbd_index_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbd_device*)* @nbd_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbd_put(%struct.nbd_device* %0) #0 {
  %2 = alloca %struct.nbd_device*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %2, align 8
  %3 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %4 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %3, i32 0, i32 1
  %5 = call i64 @refcount_dec_and_mutex_lock(i32* %4, i32* @nbd_index_mutex)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %9 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @idr_remove(i32* @nbd_index_idr, i32 %10)
  %12 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %13 = call i32 @nbd_dev_remove(%struct.nbd_device* %12)
  %14 = call i32 @mutex_unlock(i32* @nbd_index_mutex)
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @refcount_dec_and_mutex_lock(i32*, i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @nbd_dev_remove(%struct.nbd_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
