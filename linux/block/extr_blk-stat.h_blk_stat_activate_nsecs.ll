; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-stat.h_blk_stat_activate_nsecs.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-stat.h_blk_stat_activate_nsecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_stat_callback = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_stat_callback*, i32)* @blk_stat_activate_nsecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_stat_activate_nsecs(%struct.blk_stat_callback* %0, i32 %1) #0 {
  %3 = alloca %struct.blk_stat_callback*, align 8
  %4 = alloca i32, align 4
  store %struct.blk_stat_callback* %0, %struct.blk_stat_callback** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.blk_stat_callback*, %struct.blk_stat_callback** %3, align 8
  %6 = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %5, i32 0, i32 0
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @nsecs_to_jiffies(i32 %8)
  %10 = add nsw i64 %7, %9
  %11 = call i32 @mod_timer(i32* %6, i64 %10)
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @nsecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
