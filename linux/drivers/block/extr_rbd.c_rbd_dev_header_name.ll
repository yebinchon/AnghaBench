; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_header_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_header_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, i32, %struct.rbd_spec* }
%struct.rbd_spec = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@RBD_SUFFIX = common dso_local global i32 0, align 4
@RBD_HEADER_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_dev_header_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_dev_header_name(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_device*, align 8
  %3 = alloca %struct.rbd_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %2, align 8
  %5 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %6 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %5, i32 0, i32 2
  %7 = load %struct.rbd_spec*, %struct.rbd_spec** %6, align 8
  store %struct.rbd_spec* %7, %struct.rbd_spec** %3, align 8
  %8 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %9 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @rbd_image_format_valid(i32 %10)
  %12 = call i32 @rbd_assert(i32 %11)
  %13 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %14 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %19 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %18, i32 0, i32 1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load %struct.rbd_spec*, %struct.rbd_spec** %3, align 8
  %22 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RBD_SUFFIX, align 4
  %25 = call i32 @ceph_oid_aprintf(i32* %19, i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %35

26:                                               ; preds = %1
  %27 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %28 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %27, i32 0, i32 1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load i32, i32* @RBD_HEADER_PREFIX, align 4
  %31 = load %struct.rbd_spec*, %struct.rbd_spec** %3, align 8
  %32 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ceph_oid_aprintf(i32* %28, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %26, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @rbd_image_format_valid(i32) #1

declare dso_local i32 @ceph_oid_aprintf(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
