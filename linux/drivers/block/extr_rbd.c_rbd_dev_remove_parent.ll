; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_remove_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_remove_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.rbd_device*, i64, %struct.rbd_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_device*)* @rbd_dev_remove_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_dev_remove_parent(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_device*, align 8
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca %struct.rbd_device*, align 8
  %5 = alloca %struct.rbd_device*, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %2, align 8
  br label %6

6:                                                ; preds = %29, %1
  %7 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %8 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %7, i32 0, i32 2
  %9 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %10 = icmp ne %struct.rbd_device* %9, null
  br i1 %10, label %11, label %50

11:                                               ; preds = %6
  %12 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  store %struct.rbd_device* %12, %struct.rbd_device** %3, align 8
  %13 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %14 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %13, i32 0, i32 2
  %15 = load %struct.rbd_device*, %struct.rbd_device** %14, align 8
  store %struct.rbd_device* %15, %struct.rbd_device** %4, align 8
  br label %16

16:                                               ; preds = %26, %11
  %17 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %18 = icmp ne %struct.rbd_device* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %21 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %20, i32 0, i32 2
  %22 = load %struct.rbd_device*, %struct.rbd_device** %21, align 8
  store %struct.rbd_device* %22, %struct.rbd_device** %5, align 8
  %23 = icmp ne %struct.rbd_device* %22, null
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  store %struct.rbd_device* %27, %struct.rbd_device** %3, align 8
  %28 = load %struct.rbd_device*, %struct.rbd_device** %5, align 8
  store %struct.rbd_device* %28, %struct.rbd_device** %4, align 8
  br label %16

29:                                               ; preds = %24
  %30 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %31 = call i32 @rbd_assert(%struct.rbd_device* %30)
  %32 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %33 = call i32 @rbd_dev_image_release(%struct.rbd_device* %32)
  %34 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %35 = call i32 @rbd_dev_destroy(%struct.rbd_device* %34)
  %36 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %37 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %36, i32 0, i32 2
  store %struct.rbd_device* null, %struct.rbd_device** %37, align 8
  %38 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %39 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %41 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %40, i32 0, i32 0
  %42 = load %struct.rbd_device*, %struct.rbd_device** %41, align 8
  %43 = call i32 @rbd_assert(%struct.rbd_device* %42)
  %44 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %45 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %44, i32 0, i32 0
  %46 = load %struct.rbd_device*, %struct.rbd_device** %45, align 8
  %47 = call i32 @rbd_spec_put(%struct.rbd_device* %46)
  %48 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %49 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %48, i32 0, i32 0
  store %struct.rbd_device* null, %struct.rbd_device** %49, align 8
  br label %6

50:                                               ; preds = %6
  ret void
}

declare dso_local i32 @rbd_assert(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_image_release(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_destroy(%struct.rbd_device*) #1

declare dso_local i32 @rbd_spec_put(%struct.rbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
