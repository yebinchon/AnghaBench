; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_update_used_max.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_update_used_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zram*, i64)* @update_used_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_used_max(%struct.zram* %0, i64 %1) #0 {
  %3 = alloca %struct.zram*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.zram* %0, %struct.zram** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.zram*, %struct.zram** %3, align 8
  %8 = getelementptr inbounds %struct.zram, %struct.zram* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i64 @atomic_long_read(i32* %9)
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %24, %2
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.zram*, %struct.zram** %3, align 8
  %18 = getelementptr inbounds %struct.zram, %struct.zram* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @atomic_long_cmpxchg(i32* %19, i64 %20, i64 %21)
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %16, %11
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %11, label %28

28:                                               ; preds = %24
  ret void
}

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i64 @atomic_long_cmpxchg(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
