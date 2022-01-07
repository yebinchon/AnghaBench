; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_compat_create_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_compat_create_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class_compat = type { i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @class_compat_create_link(%struct.class_compat* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.class_compat*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.class_compat* %0, %struct.class_compat** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %9 = load %struct.class_compat*, %struct.class_compat** %5, align 8
  %10 = getelementptr inbounds %struct.class_compat, %struct.class_compat* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i8* @dev_name(%struct.device* %14)
  %16 = call i32 @sysfs_create_link(i32* %11, i32* %13, i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = icmp ne %struct.device* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = call i32 @sysfs_create_link(i32* %26, i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load %struct.class_compat*, %struct.class_compat** %5, align 8
  %34 = getelementptr inbounds %struct.class_compat, %struct.class_compat* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i8* @dev_name(%struct.device* %36)
  %38 = call i32 @sysfs_remove_link(i32* %35, i8* %37)
  br label %39

39:                                               ; preds = %32, %24
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
