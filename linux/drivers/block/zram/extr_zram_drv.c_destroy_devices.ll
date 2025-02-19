; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_destroy_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_destroy_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zram_control_class = common dso_local global i32 0, align 4
@zram_index_idr = common dso_local global i32 0, align 4
@zram_remove_cb = common dso_local global i32 0, align 4
@zram_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"zram\00", align 1
@CPUHP_ZCOMP_PREPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @destroy_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_devices() #0 {
  %1 = call i32 @class_unregister(i32* @zram_control_class)
  %2 = call i32 @idr_for_each(i32* @zram_index_idr, i32* @zram_remove_cb, i32* null)
  %3 = call i32 (...) @zram_debugfs_destroy()
  %4 = call i32 @idr_destroy(i32* @zram_index_idr)
  %5 = load i32, i32* @zram_major, align 4
  %6 = call i32 @unregister_blkdev(i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @CPUHP_ZCOMP_PREPARE, align 4
  %8 = call i32 @cpuhp_remove_multi_state(i32 %7)
  ret void
}

declare dso_local i32 @class_unregister(i32*) #1

declare dso_local i32 @idr_for_each(i32*, i32*, i32*) #1

declare dso_local i32 @zram_debugfs_destroy(...) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @unregister_blkdev(i32, i8*) #1

declare dso_local i32 @cpuhp_remove_multi_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
