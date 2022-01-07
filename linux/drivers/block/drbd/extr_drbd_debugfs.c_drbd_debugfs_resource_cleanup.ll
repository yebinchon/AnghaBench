; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_drbd_debugfs_resource_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_drbd_debugfs_resource_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_resource = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_debugfs_resource_cleanup(%struct.drbd_resource* %0) #0 {
  %2 = alloca %struct.drbd_resource*, align 8
  store %struct.drbd_resource* %0, %struct.drbd_resource** %2, align 8
  %3 = load %struct.drbd_resource*, %struct.drbd_resource** %2, align 8
  %4 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %3, i32 0, i32 3
  %5 = call i32 @drbd_debugfs_remove(i32* %4)
  %6 = load %struct.drbd_resource*, %struct.drbd_resource** %2, align 8
  %7 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %6, i32 0, i32 2
  %8 = call i32 @drbd_debugfs_remove(i32* %7)
  %9 = load %struct.drbd_resource*, %struct.drbd_resource** %2, align 8
  %10 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %9, i32 0, i32 1
  %11 = call i32 @drbd_debugfs_remove(i32* %10)
  %12 = load %struct.drbd_resource*, %struct.drbd_resource** %2, align 8
  %13 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %12, i32 0, i32 0
  %14 = call i32 @drbd_debugfs_remove(i32* %13)
  ret void
}

declare dso_local i32 @drbd_debugfs_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
