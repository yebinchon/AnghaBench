; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_v2_get_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_v2_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"get_flags\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*)* @rbd_dev_v2_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_dev_v2_get_flags(%struct.rbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  %7 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %8 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cpu_to_le64(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %14 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %15 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %14, i32 0, i32 2
  %16 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %17 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %16, i32 0, i32 1
  %18 = call i32 @rbd_obj_method_sync(%struct.rbd_device* %13, i32* %15, i32* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %4, i32 4, i32* %5, i32 4)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EBADMSG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @le64_to_cpu(i32 %31)
  %33 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %34 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %27, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @rbd_obj_method_sync(%struct.rbd_device*, i32*, i32*, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
