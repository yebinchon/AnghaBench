; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_page_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_null_page_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_page = type { i32 }

@MAP_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nullb_page*)* @null_page_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_page_empty(%struct.nullb_page* %0) #0 {
  %2 = alloca %struct.nullb_page*, align 8
  %3 = alloca i32, align 4
  store %struct.nullb_page* %0, %struct.nullb_page** %2, align 8
  %4 = load i32, i32* @MAP_SZ, align 4
  %5 = sub nsw i32 %4, 2
  store i32 %5, i32* %3, align 4
  %6 = load %struct.nullb_page*, %struct.nullb_page** %2, align 8
  %7 = getelementptr inbounds %struct.nullb_page, %struct.nullb_page* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @find_first_bit(i32 %8, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i32 @find_first_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
