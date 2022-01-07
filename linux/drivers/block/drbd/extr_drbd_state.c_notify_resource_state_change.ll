; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_notify_resource_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_notify_resource_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.drbd_resource_state_change = type { i32*, i32*, i32*, i32*, %struct.drbd_resource* }
%struct.drbd_resource = type { i32 }
%struct.resource_info = type { i32, i32, i32, i32 }

@NEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notify_resource_state_change(%struct.sk_buff* %0, i32 %1, %struct.drbd_resource_state_change* %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_resource_state_change*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drbd_resource*, align 8
  %10 = alloca %struct.resource_info, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.drbd_resource_state_change* %2, %struct.drbd_resource_state_change** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.drbd_resource_state_change*, %struct.drbd_resource_state_change** %7, align 8
  %12 = getelementptr inbounds %struct.drbd_resource_state_change, %struct.drbd_resource_state_change* %11, i32 0, i32 4
  %13 = load %struct.drbd_resource*, %struct.drbd_resource** %12, align 8
  store %struct.drbd_resource* %13, %struct.drbd_resource** %9, align 8
  %14 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %10, i32 0, i32 0
  %15 = load %struct.drbd_resource_state_change*, %struct.drbd_resource_state_change** %7, align 8
  %16 = getelementptr inbounds %struct.drbd_resource_state_change, %struct.drbd_resource_state_change* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @NEW, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %10, i32 0, i32 1
  %22 = load %struct.drbd_resource_state_change*, %struct.drbd_resource_state_change** %7, align 8
  %23 = getelementptr inbounds %struct.drbd_resource_state_change, %struct.drbd_resource_state_change* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @NEW, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %21, align 4
  %28 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %10, i32 0, i32 2
  %29 = load %struct.drbd_resource_state_change*, %struct.drbd_resource_state_change** %7, align 8
  %30 = getelementptr inbounds %struct.drbd_resource_state_change, %struct.drbd_resource_state_change* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @NEW, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %28, align 4
  %35 = getelementptr inbounds %struct.resource_info, %struct.resource_info* %10, i32 0, i32 3
  %36 = load %struct.drbd_resource_state_change*, %struct.drbd_resource_state_change** %7, align 8
  %37 = getelementptr inbounds %struct.drbd_resource_state_change, %struct.drbd_resource_state_change* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @NEW, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %35, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.drbd_resource*, %struct.drbd_resource** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @notify_resource_state(%struct.sk_buff* %42, i32 %43, %struct.drbd_resource* %44, %struct.resource_info* %10, i32 %45)
  ret void
}

declare dso_local i32 @notify_resource_state(%struct.sk_buff*, i32, %struct.drbd_resource*, %struct.resource_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
