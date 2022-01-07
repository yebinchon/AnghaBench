; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_begin_io_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_begin_io_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32 }
%struct.drbd_interval = type { i32, i32 }
%struct.lc_element = type { i32 }

@AL_EXTENT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_al_begin_io_prepare(%struct.drbd_device* %0, %struct.drbd_interval* %1) #0 {
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.drbd_interval*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lc_element*, align 8
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
  store i32 0, i32* %8, align 4
  %37 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ule i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @D_ASSERT(%struct.drbd_device* %37, i32 %41)
  %43 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %44 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %45 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %44, i32 0, i32 1
  %46 = call i64 @atomic_read(i32* %45)
  %47 = icmp sgt i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @D_ASSERT(%struct.drbd_device* %43, i32 %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %72, %35
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ule i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %57 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call %struct.lc_element* @_al_get(%struct.drbd_device* %59, i32 %60, i32 0)
  store %struct.lc_element* %61, %struct.lc_element** %9, align 8
  %62 = icmp ne %struct.lc_element* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @wait_event(i32 %58, i32 %63)
  %65 = load %struct.lc_element*, %struct.lc_element** %9, align 8
  %66 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  store i32 1, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %51

75:                                               ; preds = %51
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local %struct.lc_element* @_al_get(%struct.drbd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
