; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_mm_unplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_umem.c_mm_unplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_plug_cb = type { %struct.cardinfo* }
%struct.cardinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_plug_cb*, i32)* @mm_unplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mm_unplug(%struct.blk_plug_cb* %0, i32 %1) #0 {
  %3 = alloca %struct.blk_plug_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cardinfo*, align 8
  store %struct.blk_plug_cb* %0, %struct.blk_plug_cb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.blk_plug_cb*, %struct.blk_plug_cb** %3, align 8
  %7 = getelementptr inbounds %struct.blk_plug_cb, %struct.blk_plug_cb* %6, i32 0, i32 0
  %8 = load %struct.cardinfo*, %struct.cardinfo** %7, align 8
  store %struct.cardinfo* %8, %struct.cardinfo** %5, align 8
  %9 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %10 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %13 = call i32 @activate(%struct.cardinfo* %12)
  %14 = load %struct.cardinfo*, %struct.cardinfo** %5, align 8
  %15 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_irq(i32* %15)
  %17 = load %struct.blk_plug_cb*, %struct.blk_plug_cb** %3, align 8
  %18 = call i32 @kfree(%struct.blk_plug_cb* %17)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @activate(%struct.cardinfo*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.blk_plug_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
