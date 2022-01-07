; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_set_primary_fwnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_set_primary_fwnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.fwnode_handle* }
%struct.fwnode_handle = type { %struct.fwnode_handle* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_primary_fwnode(%struct.device* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %4, align 8
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %7 = icmp ne %struct.fwnode_handle* %6, null
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %10, align 8
  store %struct.fwnode_handle* %11, %struct.fwnode_handle** %5, align 8
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %13 = call i64 @fwnode_is_primary(%struct.fwnode_handle* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %17 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %16, i32 0, i32 0
  %18 = load %struct.fwnode_handle*, %struct.fwnode_handle** %17, align 8
  store %struct.fwnode_handle* %18, %struct.fwnode_handle** %5, align 8
  br label %19

19:                                               ; preds = %15, %8
  %20 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %21 = icmp ne %struct.fwnode_handle* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %24 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %23, i32 0, i32 0
  %25 = load %struct.fwnode_handle*, %struct.fwnode_handle** %24, align 8
  %26 = call i32 @WARN_ON(%struct.fwnode_handle* %25)
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %29 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %28, i32 0, i32 0
  store %struct.fwnode_handle* %27, %struct.fwnode_handle** %29, align 8
  br label %30

30:                                               ; preds = %22, %19
  %31 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  store %struct.fwnode_handle* %31, %struct.fwnode_handle** %33, align 8
  br label %51

34:                                               ; preds = %2
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = load %struct.fwnode_handle*, %struct.fwnode_handle** %36, align 8
  %38 = call i64 @fwnode_is_primary(%struct.fwnode_handle* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = load %struct.fwnode_handle*, %struct.fwnode_handle** %42, align 8
  %44 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %43, i32 0, i32 0
  %45 = load %struct.fwnode_handle*, %struct.fwnode_handle** %44, align 8
  br label %47

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi %struct.fwnode_handle* [ %45, %40 ], [ null, %46 ]
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  store %struct.fwnode_handle* %48, %struct.fwnode_handle** %50, align 8
  br label %51

51:                                               ; preds = %47, %30
  ret void
}

declare dso_local i64 @fwnode_is_primary(%struct.fwnode_handle*) #1

declare dso_local i32 @WARN_ON(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
