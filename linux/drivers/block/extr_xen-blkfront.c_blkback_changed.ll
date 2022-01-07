; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkback_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkback_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.blkfront_info = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"blkfront:blkback_changed to state %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32)* @blkback_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkback_changed(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.blkfront_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 1
  %8 = call %struct.blkfront_info* @dev_get_drvdata(i32* %7)
  store %struct.blkfront_info* %8, %struct.blkfront_info** %5, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 1
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %62 [
    i32 133, label %14
    i32 131, label %27
    i32 132, label %27
    i32 129, label %27
    i32 130, label %27
    i32 128, label %27
    i32 134, label %28
    i32 136, label %48
    i32 135, label %55
  ]

14:                                               ; preds = %2
  %15 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %16 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 131
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %62

20:                                               ; preds = %14
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %22 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %23 = call i32 @talk_to_blkback(%struct.xenbus_device* %21, %struct.blkfront_info* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %62

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %2, %2, %2, %2, %2, %26
  br label %62

28:                                               ; preds = %2
  %29 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %30 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 132
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %35 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 134
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %40 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %41 = call i32 @talk_to_blkback(%struct.xenbus_device* %39, %struct.blkfront_info* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %62

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %33, %28
  %46 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %47 = call i32 @blkfront_connect(%struct.blkfront_info* %46)
  br label %62

48:                                               ; preds = %2
  %49 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %50 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 136
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %62

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %2, %54
  %56 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %57 = icmp ne %struct.blkfront_info* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %60 = call i32 @blkfront_closing(%struct.blkfront_info* %59)
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %2, %61, %53, %45, %43, %27, %25, %19
  ret void
}

declare dso_local %struct.blkfront_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @talk_to_blkback(%struct.xenbus_device*, %struct.blkfront_info*) #1

declare dso_local i32 @blkfront_connect(%struct.blkfront_info*) #1

declare dso_local i32 @blkfront_closing(%struct.blkfront_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
