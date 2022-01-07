; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_set_secondary_fwnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_set_secondary_fwnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.fwnode_handle* }
%struct.fwnode_handle = type { %struct.fwnode_handle* }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_secondary_fwnode(%struct.device* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %4, align 8
  %5 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %6 = icmp ne %struct.fwnode_handle* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.fwnode_handle* @ERR_PTR(i32 %9)
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %12 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %11, i32 0, i32 0
  store %struct.fwnode_handle* %10, %struct.fwnode_handle** %12, align 8
  br label %13

13:                                               ; preds = %7, %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %15, align 8
  %17 = call i64 @fwnode_is_primary(%struct.fwnode_handle* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %22, align 8
  %24 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %23, i32 0, i32 0
  store %struct.fwnode_handle* %20, %struct.fwnode_handle** %24, align 8
  br label %29

25:                                               ; preds = %13
  %26 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  store %struct.fwnode_handle* %26, %struct.fwnode_handle** %28, align 8
  br label %29

29:                                               ; preds = %25, %19
  ret void
}

declare dso_local %struct.fwnode_handle* @ERR_PTR(i32) #1

declare dso_local i64 @fwnode_is_primary(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
