; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_may_do_local_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_may_do_local_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@D_UP_TO_DATE = common dso_local global i64 0, align 8
@D_INCONSISTENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*, i64, i32)* @drbd_may_do_local_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_may_do_local_read(%struct.drbd_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %13 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @D_UP_TO_DATE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %60

19:                                               ; preds = %3
  %20 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %21 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @D_INCONSISTENT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %60

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 9
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = sub nsw i64 %32, 1
  store i64 %33, i64* %10, align 8
  %34 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %35 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @drbd_get_capacity(i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp slt i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @D_ASSERT(%struct.drbd_device* %38, i32 %42)
  %44 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp slt i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @D_ASSERT(%struct.drbd_device* %44, i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @BM_SECT_TO_BIT(i64 %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @BM_SECT_TO_BIT(i64 %52)
  store i64 %53, i64* %9, align 8
  %54 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @drbd_bm_count_bits(%struct.drbd_device* %54, i64 %55, i64 %56)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %27, %26, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @drbd_get_capacity(i32) #1

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i64 @BM_SECT_TO_BIT(i64) #1

declare dso_local i64 @drbd_bm_count_bits(%struct.drbd_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
