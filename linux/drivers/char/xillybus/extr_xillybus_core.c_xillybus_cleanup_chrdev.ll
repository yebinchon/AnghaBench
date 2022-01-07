; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_cleanup_chrdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xillybus/extr_xillybus_core.c_xillybus_cleanup_chrdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilly_endpoint = type { i32, i32, i32, i32, i32 }

@xillybus_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Removed %d device files.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xilly_endpoint*)* @xillybus_cleanup_chrdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xillybus_cleanup_chrdev(%struct.xilly_endpoint* %0) #0 {
  %2 = alloca %struct.xilly_endpoint*, align 8
  %3 = alloca i32, align 4
  store %struct.xilly_endpoint* %0, %struct.xilly_endpoint** %2, align 8
  %4 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %2, align 8
  %5 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %2, align 8
  %10 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %2, align 8
  %13 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %11, %14
  %16 = icmp slt i32 %8, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %7
  %18 = load i32, i32* @xillybus_class, align 4
  %19 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %2, align 8
  %20 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @MKDEV(i32 %21, i32 %22)
  %24 = call i32 @device_destroy(i32 %18, i32 %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %2, align 8
  %30 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %29, i32 0, i32 4
  %31 = call i32 @cdev_del(i32* %30)
  %32 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %2, align 8
  %33 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %2, align 8
  %36 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MKDEV(i32 %34, i32 %37)
  %39 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %2, align 8
  %40 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @unregister_chrdev_region(i32 %38, i32 %41)
  %43 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %2, align 8
  %44 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xilly_endpoint*, %struct.xilly_endpoint** %2, align 8
  %47 = getelementptr inbounds %struct.xilly_endpoint, %struct.xilly_endpoint* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_info(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  ret void
}

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @unregister_chrdev_region(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
