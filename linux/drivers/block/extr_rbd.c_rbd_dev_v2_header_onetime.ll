; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_v2_header_onetime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_v2_header_onetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@RBD_FEATURE_STRIPINGV2 = common dso_local global i32 0, align 4
@RBD_FEATURE_DATA_POOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_dev_v2_header_onetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_dev_v2_header_onetime(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %5 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %6 = call i32 @rbd_dev_v2_object_prefix(%struct.rbd_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %49

10:                                               ; preds = %1
  %11 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %12 = call i32 @rbd_dev_v2_features(%struct.rbd_device* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %49

16:                                               ; preds = %10
  %17 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %18 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RBD_FEATURE_STRIPINGV2, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %26 = call i32 @rbd_dev_v2_striping_info(%struct.rbd_device* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %49

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %33 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @RBD_FEATURE_DATA_POOL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %41 = call i32 @rbd_dev_v2_data_pool(%struct.rbd_device* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %49

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %31
  %47 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %48 = call i32 @rbd_init_layout(%struct.rbd_device* %47)
  store i32 0, i32* %2, align 4
  br label %62

49:                                               ; preds = %44, %29, %15, %9
  %50 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %51 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %54 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %59 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %49, %46
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @rbd_dev_v2_object_prefix(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_v2_features(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_v2_striping_info(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_v2_data_pool(%struct.rbd_device*) #1

declare dso_local i32 @rbd_init_layout(%struct.rbd_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
