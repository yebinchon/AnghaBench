; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_spec_fill_names.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_spec_fill_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.rbd_spec*, %struct.TYPE_4__* }
%struct.rbd_spec = type { i64, i32, i64, i8*, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32 }

@CEPH_NOPOOL = common dso_local global i64 0, align 8
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"no pool with id %llu\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to get image name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_spec_fill_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_spec_fill_names(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca %struct.ceph_osd_client*, align 8
  %5 = alloca %struct.rbd_spec*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %10 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %11 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.ceph_osd_client* %15, %struct.ceph_osd_client** %4, align 8
  %16 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %17 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %16, i32 0, i32 0
  %18 = load %struct.rbd_spec*, %struct.rbd_spec** %17, align 8
  store %struct.rbd_spec* %18, %struct.rbd_spec** %5, align 8
  %19 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %20 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CEPH_NOPOOL, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @rbd_assert(i32 %24)
  %26 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %27 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @rbd_assert(i32 %28)
  %30 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %31 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CEPH_NOSNAP, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @rbd_assert(i32 %35)
  %37 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %4, align 8
  %38 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %41 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @ceph_pg_pool_name_by_id(i32 %39, i64 %42)
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %1
  %47 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %48 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %49 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct.rbd_device*, i8*, ...) @rbd_warn(%struct.rbd_device* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %99

54:                                               ; preds = %1
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kstrdup(i8* %55, i32 %56)
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %99

63:                                               ; preds = %54
  %64 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %65 = call i8* @rbd_dev_image_name(%struct.rbd_device* %64)
  store i8* %65, i8** %7, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %70 = call i32 (%struct.rbd_device*, i8*, ...) @rbd_warn(%struct.rbd_device* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %73 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %74 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @rbd_snap_name(%struct.rbd_device* %72, i64 %75)
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %9, align 4
  br label %93

83:                                               ; preds = %71
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %86 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %89 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.rbd_spec*, %struct.rbd_spec** %5, align 8
  %92 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  store i32 0, i32* %2, align 4
  br label %99

93:                                               ; preds = %80
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @kfree(i8* %94)
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @kfree(i8* %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %83, %60, %46
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i8* @ceph_pg_pool_name_by_id(i32, i64) #1

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, ...) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @rbd_dev_image_name(%struct.rbd_device*) #1

declare dso_local i8* @rbd_snap_name(%struct.rbd_device*, i64) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
