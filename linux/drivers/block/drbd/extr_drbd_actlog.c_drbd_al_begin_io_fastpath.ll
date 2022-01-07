; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_begin_io_fastpath.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_begin_io_fastpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%struct.drbd_interval = type { i32, i32 }

@AL_EXTENT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_al_begin_io_fastpath(%struct.drbd_device* %0, %struct.drbd_interval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca %struct.drbd_interval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store %struct.drbd_interval* %1, %struct.drbd_interval** %5, align 8
  %8 = load %struct.drbd_interval*, %struct.drbd_interval** %5, align 8
  %9 = getelementptr inbounds %struct.drbd_interval, %struct.drbd_interval* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AL_EXTENT_SHIFT, align 4
  %12 = sub nsw i32 %11, 9
  %13 = ashr i32 %10, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.drbd_interval*, %struct.drbd_interval** %5, align 8
  %15 = getelementptr inbounds %struct.drbd_interval, %struct.drbd_interval* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.drbd_interval*, %struct.drbd_interval** %5, align 8
  %22 = getelementptr inbounds %struct.drbd_interval, %struct.drbd_interval* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drbd_interval*, %struct.drbd_interval** %5, align 8
  %25 = getelementptr inbounds %struct.drbd_interval, %struct.drbd_interval* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 9
  %28 = add nsw i32 %23, %27
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* @AL_EXTENT_SHIFT, align 4
  %31 = sub nsw i32 %30, 9
  %32 = ashr i32 %29, %31
  br label %33

33:                                               ; preds = %20, %18
  %34 = phi i32 [ %19, %18 ], [ %32, %20 ]
  store i32 %34, i32* %7, align 4
  %35 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ule i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @D_ASSERT(%struct.drbd_device* %35, i32 %39)
  %41 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %42 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %43 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %42, i32 0, i32 0
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp sgt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @D_ASSERT(%struct.drbd_device* %41, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %56

52:                                               ; preds = %33
  %53 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @_al_get(%struct.drbd_device* %53, i32 %54, i32 1)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %51
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @_al_get(%struct.drbd_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
