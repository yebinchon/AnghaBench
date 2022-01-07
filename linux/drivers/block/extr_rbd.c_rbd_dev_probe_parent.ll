; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_probe_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_probe_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, %struct.rbd_device*, i32, i32 }

@RBD_MAX_PARENT_CHAIN_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"parent chain is too long (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, i32)* @rbd_dev_probe_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_dev_probe_parent(%struct.rbd_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rbd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rbd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rbd_device* null, %struct.rbd_device** %6, align 8
  %8 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %9 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @RBD_MAX_PARENT_CHAIN_LEN, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %58

23:                                               ; preds = %13
  %24 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %25 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %28 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.rbd_device* @__rbd_dev_create(i32 %26, i32 %29)
  store %struct.rbd_device* %30, %struct.rbd_device** %6, align 8
  %31 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %32 = icmp ne %struct.rbd_device* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %58

36:                                               ; preds = %23
  %37 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %38 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__rbd_get_client(i32 %39)
  %41 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %42 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @rbd_spec_get(i32 %43)
  %45 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @rbd_dev_image_probe(%struct.rbd_device* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %58

51:                                               ; preds = %36
  %52 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %53 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %54 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %53, i32 0, i32 1
  store %struct.rbd_device* %52, %struct.rbd_device** %54, align 8
  %55 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %56 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %55, i32 0, i32 0
  %57 = call i32 @atomic_set(i32* %56, i32 1)
  store i32 0, i32* %3, align 4
  br label %64

58:                                               ; preds = %50, %33, %18
  %59 = load %struct.rbd_device*, %struct.rbd_device** %4, align 8
  %60 = call i32 @rbd_dev_unparent(%struct.rbd_device* %59)
  %61 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  %62 = call i32 @rbd_dev_destroy(%struct.rbd_device* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %58, %51, %12
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.rbd_device* @__rbd_dev_create(i32, i32) #1

declare dso_local i32 @__rbd_get_client(i32) #1

declare dso_local i32 @rbd_spec_get(i32) #1

declare dso_local i32 @rbd_dev_image_probe(%struct.rbd_device*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rbd_dev_unparent(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_destroy(%struct.rbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
