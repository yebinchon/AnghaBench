; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_ltq_mei_probe.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-adsl-mei/src/extr_drv_mei_cpe.c_ltq_mei_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.platform_device = type { i32 }

@ltq_mei_probe.dsl_class = internal global %struct.class* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"IFX MEI Version %ld.%02ld.%02ld\0A\00", align 1
@bsp_mei_version = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@BSP_MAX_DEVICES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Init device fail!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DSL_BSP_CB_LAST = common dso_local global i32 0, align 4
@dsl_bsp_event_callback = common dso_local global %struct.TYPE_3__* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ifx_mei\00", align 1
@MEI_MAJOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltq_mei_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_mei_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bsp_mei_version, i32 0, i32 2), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bsp_mei_version, i32 0, i32 1), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bsp_mei_version, i32 0, i32 0), align 4
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6, i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BSP_MAX_DEVICES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @IFX_MEI_InitDevice(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = call i32 @IFX_MEI_EMSG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %48

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @IFX_MEI_InitDevNode(i32 %22)
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %9

27:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @DSL_BSP_CB_LAST, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dsl_bsp_event_callback, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load i32, i32* @THIS_MODULE, align 4
  %43 = call %struct.class* @class_create(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.class* %43, %struct.class** @ltq_mei_probe.dsl_class, align 8
  %44 = load %struct.class*, %struct.class** @ltq_mei_probe.dsl_class, align 8
  %45 = load i32, i32* @MEI_MAJOR, align 4
  %46 = call i32 @MKDEV(i32 %45, i32 0)
  %47 = call i32 @device_create(%struct.class* %44, i32* null, i32 %46, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i64 @IFX_MEI_InitDevice(i32) #1

declare dso_local i32 @IFX_MEI_EMSG(i8*) #1

declare dso_local i32 @IFX_MEI_InitDevNode(i32) #1

declare dso_local %struct.class* @class_create(i32, i8*) #1

declare dso_local i32 @device_create(%struct.class*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
