; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_cf_ctrl_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_cf_ctrl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arasan_cf_dev = type { i64 }

@OP_MODE = common dso_local global i64 0, align 8
@CFHOST_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arasan_cf_dev*)* @cf_ctrl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_ctrl_reset(%struct.arasan_cf_dev* %0) #0 {
  %2 = alloca %struct.arasan_cf_dev*, align 8
  store %struct.arasan_cf_dev* %0, %struct.arasan_cf_dev** %2, align 8
  %3 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %4 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @OP_MODE, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl(i64 %7)
  %9 = load i32, i32* @CFHOST_ENB, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %13 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OP_MODE, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %19 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OP_MODE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  %24 = load i32, i32* @CFHOST_ENB, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %2, align 8
  %27 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OP_MODE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
