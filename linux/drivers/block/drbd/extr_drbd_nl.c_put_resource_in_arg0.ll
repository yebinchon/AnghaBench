; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_put_resource_in_arg0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_put_resource_in_arg0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i64* }
%struct.drbd_resource = type { i32 }

@drbd_destroy_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*, i32)* @put_resource_in_arg0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_resource_in_arg0(%struct.netlink_callback* %0, i32 %1) #0 {
  %3 = alloca %struct.netlink_callback*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_resource*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %7 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.netlink_callback*, %struct.netlink_callback** %3, align 8
  %14 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.drbd_resource*
  store %struct.drbd_resource* %18, %struct.drbd_resource** %5, align 8
  %19 = load %struct.drbd_resource*, %struct.drbd_resource** %5, align 8
  %20 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %19, i32 0, i32 0
  %21 = load i32, i32* @drbd_destroy_resource, align 4
  %22 = call i32 @kref_put(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %12, %2
  ret i32 0
}

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
