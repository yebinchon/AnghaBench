; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_start_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_xgene-rng.c_xgene_rng_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_rng_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_rng_dev*)* @xgene_rng_start_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_rng_start_timer(%struct.xgene_rng_dev* %0) #0 {
  %2 = alloca %struct.xgene_rng_dev*, align 8
  store %struct.xgene_rng_dev* %0, %struct.xgene_rng_dev** %2, align 8
  %3 = load i64, i64* @jiffies, align 8
  %4 = load i32, i32* @HZ, align 4
  %5 = mul nsw i32 120, %4
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %3, %6
  %8 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %9 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  %11 = load %struct.xgene_rng_dev*, %struct.xgene_rng_dev** %2, align 8
  %12 = getelementptr inbounds %struct.xgene_rng_dev, %struct.xgene_rng_dev* %11, i32 0, i32 0
  %13 = call i32 @add_timer(%struct.TYPE_2__* %12)
  ret void
}

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
