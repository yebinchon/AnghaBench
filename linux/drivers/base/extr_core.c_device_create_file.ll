; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@S_IWUGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Attribute %s: write permission without 'store'\0A\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Attribute %s: read permission without 'show'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_create_file(%struct.device* %0, %struct.device_attribute* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_attribute*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = icmp ne %struct.device* %6, null
  br i1 %7, label %8, label %56

8:                                                ; preds = %2
  %9 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %10 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @S_IWUGO, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %18 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %8
  %23 = phi i1 [ false, %8 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %26 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WARN(i32 %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %31 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @S_IRUGO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %22
  %38 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %39 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %37, %22
  %44 = phi i1 [ false, %22 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %47 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @WARN(i32 %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = load %struct.device_attribute*, %struct.device_attribute** %4, align 8
  %54 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %53, i32 0, i32 0
  %55 = call i32 @sysfs_create_file(i32* %52, %struct.TYPE_2__* %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %43, %2
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @sysfs_create_file(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
