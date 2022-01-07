; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_sysfs.c_pm_qos_resume_latency_us_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_sysfs.c_pm_qos_resume_latency_us_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.device_attribute = type { i32 }

@PM_QOS_RESUME_LATENCY_NO_CONSTRAINT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pm_qos_resume_latency_us_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm_qos_resume_latency_us_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @kstrtos32(i8* %12, i32 0, i64* %10)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %10, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @PM_QOS_RESUME_LATENCY_NO_CONSTRAINT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %59

25:                                               ; preds = %18
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @PM_QOS_RESUME_LATENCY_NO_CONSTRAINT, align 8
  store i64 %29, i64* %10, align 8
  br label %30

30:                                               ; preds = %28, %25
  br label %40

31:                                               ; preds = %4
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @sysfs_streq(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  br label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %59

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @dev_pm_qos_update_request(i32 %46, i64 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  br label %56

54:                                               ; preds = %40
  %55 = load i64, i64* %9, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i64 [ %53, %51 ], [ %55, %54 ]
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %36, %22
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @kstrtos32(i8*, i32, i64*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @dev_pm_qos_update_request(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
