; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmb_dev_int.c_ipmb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmb_dev_int.c_ipmb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ipmb_dev = type { %struct.TYPE_5__, %struct.i2c_client*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ipmb-\00", align 1
@ipmb_fops = common dso_local global i32 0, align 4
@ipmb_slave_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ipmb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmb_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ipmb_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ipmb_dev* @devm_kzalloc(i32* %9, i32 56, i32 %10)
  store %struct.ipmb_dev* %11, %struct.ipmb_dev** %6, align 8
  %12 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %13 = icmp ne %struct.ipmb_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %82

17:                                               ; preds = %2
  %18 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %19 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %18, i32 0, i32 6
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %22 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %21, i32 0, i32 5
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %25 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %24, i32 0, i32 4
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  %27 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %28 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %31 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %30, i32 0, i32 2
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %34 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %35 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @devm_kasprintf(i32* %38, i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %47 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %50 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32* @ipmb_fops, i32** %51, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %55 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32* %53, i32** %56, align 8
  %57 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %58 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %57, i32 0, i32 0
  %59 = call i32 @misc_register(%struct.TYPE_5__* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %17
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %82

64:                                               ; preds = %17
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %67 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %66, i32 0, i32 1
  store %struct.i2c_client* %65, %struct.i2c_client** %67, align 8
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %70 = call i32 @i2c_set_clientdata(%struct.i2c_client* %68, %struct.ipmb_dev* %69)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load i32, i32* @ipmb_slave_cb, align 4
  %73 = call i32 @i2c_slave_register(%struct.i2c_client* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %64
  %77 = load %struct.ipmb_dev*, %struct.ipmb_dev** %6, align 8
  %78 = getelementptr inbounds %struct.ipmb_dev, %struct.ipmb_dev* %77, i32 0, i32 0
  %79 = call i32 @misc_deregister(%struct.TYPE_5__* %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %82

81:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %76, %62, %14
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.ipmb_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_kasprintf(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @misc_register(%struct.TYPE_5__*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ipmb_dev*) #1

declare dso_local i32 @i2c_slave_register(%struct.i2c_client*, i32) #1

declare dso_local i32 @misc_deregister(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
