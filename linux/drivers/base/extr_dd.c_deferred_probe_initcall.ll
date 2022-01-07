; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_dd.c_deferred_probe_initcall.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_dd.c_deferred_probe_initcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"devices_deferred\00", align 1
@deferred_devs_fops = common dso_local global i32 0, align 4
@deferred_devices = common dso_local global i32 0, align 4
@driver_deferred_probe_enable = common dso_local global i32 0, align 4
@deferred_probe_work = common dso_local global i32 0, align 4
@initcalls_done = common dso_local global i32 0, align 4
@deferred_probe_timeout = common dso_local global i32 0, align 4
@deferred_probe_timeout_work = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @deferred_probe_initcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deferred_probe_initcall() #0 {
  %1 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 292, i32* null, i32* null, i32* @deferred_devs_fops)
  store i32 %1, i32* @deferred_devices, align 4
  store i32 1, i32* @driver_deferred_probe_enable, align 4
  %2 = call i32 (...) @driver_deferred_probe_trigger()
  %3 = call i32 @flush_work(i32* @deferred_probe_work)
  store i32 1, i32* @initcalls_done, align 4
  %4 = call i32 (...) @driver_deferred_probe_trigger()
  %5 = call i32 @flush_work(i32* @deferred_probe_work)
  %6 = load i32, i32* @deferred_probe_timeout, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @deferred_probe_timeout, align 4
  %10 = load i32, i32* @HZ, align 4
  %11 = mul nsw i32 %9, %10
  %12 = call i32 @schedule_delayed_work(i32* @deferred_probe_timeout_work, i32 %11)
  br label %13

13:                                               ; preds = %8, %0
  ret i32 0
}

declare dso_local i32 @debugfs_create_file(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @driver_deferred_probe_trigger(...) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
