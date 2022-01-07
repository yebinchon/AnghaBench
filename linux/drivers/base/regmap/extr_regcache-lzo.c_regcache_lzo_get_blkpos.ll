; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_get_blkpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-lzo.c_regcache_lzo_get_blkpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32)* @regcache_lzo_get_blkpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_lzo_get_blkpos(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.regmap*, %struct.regmap** %3, align 8
  %7 = getelementptr inbounds %struct.regmap, %struct.regmap* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = udiv i32 %5, %8
  %10 = load %struct.regmap*, %struct.regmap** %3, align 8
  %11 = getelementptr inbounds %struct.regmap, %struct.regmap* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.regmap*, %struct.regmap** %3, align 8
  %14 = call i32 @regcache_lzo_block_count(%struct.regmap* %13)
  %15 = call i32 @DIV_ROUND_UP(i32 %12, i32 %14)
  %16 = load %struct.regmap*, %struct.regmap** %3, align 8
  %17 = getelementptr inbounds %struct.regmap, %struct.regmap* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = udiv i32 %15, %18
  %20 = urem i32 %9, %19
  ret i32 %20
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @regcache_lzo_block_count(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
