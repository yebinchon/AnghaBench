; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_complete_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_complete_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32, i32 }
%struct.drbd_interval = type { i32, i32 }
%struct.lc_element = type { i32 }

@AL_EXTENT_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"al_complete_io() called on inactive extent %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_al_complete_io(%struct.drbd_device* %0, %struct.drbd_interval* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.drbd_interval*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lc_element*, align 8
  %9 = alloca i64, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  store %struct.drbd_interval* %1, %struct.drbd_interval** %4, align 8
  %10 = load %struct.drbd_interval*, %struct.drbd_interval** %4, align 8
  %11 = getelementptr inbounds %struct.drbd_interval, %struct.drbd_interval* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AL_EXTENT_SHIFT, align 4
  %14 = sub nsw i32 %13, 9
  %15 = ashr i32 %12, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.drbd_interval*, %struct.drbd_interval** %4, align 8
  %17 = getelementptr inbounds %struct.drbd_interval, %struct.drbd_interval* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.drbd_interval*, %struct.drbd_interval** %4, align 8
  %24 = getelementptr inbounds %struct.drbd_interval, %struct.drbd_interval* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drbd_interval*, %struct.drbd_interval** %4, align 8
  %27 = getelementptr inbounds %struct.drbd_interval, %struct.drbd_interval* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 9
  %30 = add nsw i32 %25, %29
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* @AL_EXTENT_SHIFT, align 4
  %33 = sub nsw i32 %32, 9
  %34 = ashr i32 %31, %33
  br label %35

35:                                               ; preds = %22, %20
  %36 = phi i32 [ %21, %20 ], [ %34, %22 ]
  store i32 %36, i32* %6, align 4
  %37 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ule i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @D_ASSERT(%struct.drbd_device* %37, i32 %41)
  %43 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %44 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %43, i32 0, i32 1
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %70, %35
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %54 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.lc_element* @lc_find(i32 %55, i32 %56)
  store %struct.lc_element* %57, %struct.lc_element** %8, align 8
  %58 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %59 = icmp ne %struct.lc_element* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @drbd_err(%struct.drbd_device* %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %70

64:                                               ; preds = %52
  %65 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %66 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %69 = call i32 @lc_put(i32 %67, %struct.lc_element* %68)
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %48

73:                                               ; preds = %48
  %74 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %75 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %74, i32 0, i32 1
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %79 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %78, i32 0, i32 0
  %80 = call i32 @wake_up(i32* %79)
  ret void
}

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.lc_element* @lc_find(i32, i32) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i32) #1

declare dso_local i32 @lc_put(i32, %struct.lc_element*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
