; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkif_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/xen-blkback/extr_xenbus.c_xen_blkif_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_blkif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@xen_blkif_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xen_blkif*)* @xen_blkif_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_blkif_free(%struct.xen_blkif* %0) #0 {
  %2 = alloca %struct.xen_blkif*, align 8
  store %struct.xen_blkif* %0, %struct.xen_blkif** %2, align 8
  %3 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %4 = call i32 @xen_blkif_disconnect(%struct.xen_blkif* %3)
  %5 = call i32 @WARN_ON(i32 %4)
  %6 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %7 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %6, i32 0, i32 1
  %8 = call i32 @xen_vbd_free(i32* %7)
  %9 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %10 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i32 @kfree(%struct.TYPE_2__* %13)
  %15 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %16 = getelementptr inbounds %struct.xen_blkif, %struct.xen_blkif* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @kfree(%struct.TYPE_2__* %17)
  %19 = load i32, i32* @xen_blkif_cachep, align 4
  %20 = load %struct.xen_blkif*, %struct.xen_blkif** %2, align 8
  %21 = call i32 @kmem_cache_free(i32 %19, %struct.xen_blkif* %20)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @xen_blkif_disconnect(%struct.xen_blkif*) #1

declare dso_local i32 @xen_vbd_free(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.xen_blkif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
