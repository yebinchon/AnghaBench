; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkbk_xenbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkbk_xenbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.backend_info = type { %struct.xenbus_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xenbus_device* @xen_blkbk_xenbus(%struct.backend_info* %0) #0 {
  %2 = alloca %struct.backend_info*, align 8
  store %struct.backend_info* %0, %struct.backend_info** %2, align 8
  %3 = load %struct.backend_info*, %struct.backend_info** %2, align 8
  %4 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %3, i32 0, i32 0
  %5 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  ret %struct.xenbus_device* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
