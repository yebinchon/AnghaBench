; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_advance_rs_marks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_advance_rs_marks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i64*, i64, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@DRBD_SYNC_MARKS = common dso_local global i32 0, align 4
@DRBD_SYNC_MARK_STEP = common dso_local global i64 0, align 8
@C_PAUSED_SYNC_T = common dso_local global i64 0, align 8
@C_PAUSED_SYNC_S = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_advance_rs_marks(%struct.drbd_device* %0, i64 %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %10 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %13 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %18 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  %21 = load i32, i32* @DRBD_SYNC_MARKS, align 4
  %22 = sext i32 %21 to i64
  %23 = urem i64 %20, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @DRBD_SYNC_MARK_STEP, align 8
  %28 = add i64 %26, %27
  %29 = call i64 @time_after_eq(i64 %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %2
  %32 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %33 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %36 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %31
  %43 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %44 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @C_PAUSED_SYNC_T, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %42
  %50 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %51 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @C_PAUSED_SYNC_S, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %49
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %59 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %57, i64* %63, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %66 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %64, i64* %70, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %74 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %56, %49, %42, %31
  br label %76

76:                                               ; preds = %75, %2
  ret void
}

declare dso_local i64 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
