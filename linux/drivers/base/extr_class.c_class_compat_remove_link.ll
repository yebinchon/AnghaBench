; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_compat_remove_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_class.c_class_compat_remove_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.class_compat = type { i32* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @class_compat_remove_link(%struct.class_compat* %0, %struct.device* %1, %struct.device* %2) #0 {
  %4 = alloca %struct.class_compat*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.class_compat* %0, %struct.class_compat** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store %struct.device* %2, %struct.device** %6, align 8
  %7 = load %struct.device*, %struct.device** %6, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = call i32 @sysfs_remove_link(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %9, %3
  %14 = load %struct.class_compat*, %struct.class_compat** %4, align 8
  %15 = getelementptr inbounds %struct.class_compat, %struct.class_compat* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i8* @dev_name(%struct.device* %17)
  %19 = call i32 @sysfs_remove_link(i32* %16, i8* %18)
  ret void
}

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
