; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_zoned.c_null_handle_zoned.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_zoned.c_null_handle_zoned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nullb_cmd = type { i32 }

@BLK_STS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @null_handle_zoned(%struct.nullb_cmd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nullb_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nullb_cmd* %0, %struct.nullb_cmd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  switch i32 %10, label %20 [
    i32 130, label %11
    i32 129, label %16
    i32 128, label %16
  ]

11:                                               ; preds = %4
  %12 = load %struct.nullb_cmd*, %struct.nullb_cmd** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @null_zone_write(%struct.nullb_cmd* %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  br label %22

16:                                               ; preds = %4, %4
  %17 = load %struct.nullb_cmd*, %struct.nullb_cmd** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @null_zone_reset(%struct.nullb_cmd* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %16, %11
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @null_zone_write(%struct.nullb_cmd*, i32, i32) #1

declare dso_local i32 @null_zone_reset(%struct.nullb_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
