; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_control_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_control_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.loop_device = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@loop_ctl_mutex = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@Lo_unbound = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@loop_index_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @loop_control_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @loop_control_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.loop_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = call i32 @mutex_lock_killable(i32* @loop_ctl_mutex)
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %4, align 8
  br label %79

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %75 [
    i32 130, label %20
    i32 128, label %33
    i32 129, label %68
  ]

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @loop_lookup(%struct.loop_device** %8, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %75

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @loop_add(%struct.loop_device** %8, i32 %31)
  store i32 %32, i32* %9, align 4
  br label %75

33:                                               ; preds = %16
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @loop_lookup(%struct.loop_device** %8, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %75

40:                                               ; preds = %33
  %41 = load %struct.loop_device*, %struct.loop_device** %8, align 8
  %42 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @Lo_unbound, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %75

49:                                               ; preds = %40
  %50 = load %struct.loop_device*, %struct.loop_device** %8, align 8
  %51 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %50, i32 0, i32 2
  %52 = call i32 @atomic_read(i32* %51)
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %75

57:                                               ; preds = %49
  %58 = load %struct.loop_device*, %struct.loop_device** %8, align 8
  %59 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  %62 = load %struct.loop_device*, %struct.loop_device** %8, align 8
  %63 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @idr_remove(i32* @loop_index_idr, i32 %64)
  %66 = load %struct.loop_device*, %struct.loop_device** %8, align 8
  %67 = call i32 @loop_remove(%struct.loop_device* %66)
  br label %75

68:                                               ; preds = %16
  %69 = call i32 @loop_lookup(%struct.loop_device** %8, i32 -1)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %75

73:                                               ; preds = %68
  %74 = call i32 @loop_add(%struct.loop_device** %8, i32 -1)
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %73, %16, %72, %57, %54, %46, %39, %29, %26
  %76 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %75, %13
  %80 = load i64, i64* %4, align 8
  ret i64 %80
}

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local i32 @loop_lookup(%struct.loop_device**, i32) #1

declare dso_local i32 @loop_add(%struct.loop_device**, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @loop_remove(%struct.loop_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
