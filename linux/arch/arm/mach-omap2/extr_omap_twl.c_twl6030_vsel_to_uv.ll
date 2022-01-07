; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_twl.c_twl6030_vsel_to_uv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_twl.c_twl6030_vsel_to_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_offset_valid = common dso_local global i32 0, align 4
@TWL6030_MODULE_ID0 = common dso_local global i32 0, align 4
@smps_offset = common dso_local global i32 0, align 4
@REG_SMPS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @twl6030_vsel_to_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @twl6030_vsel_to_uv(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @is_offset_valid, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @TWL6030_MODULE_ID0, align 4
  %8 = load i32, i32* @REG_SMPS_OFFSET, align 4
  %9 = call i32 @twl_i2c_read_u8(i32 %7, i32* @smps_offset, i32 %8)
  store i32 1, i32* @is_offset_valid, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i64 0, i64* %2, align 8
  br label %36

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 58
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i64 1350000, i64* %2, align 8
  br label %36

18:                                               ; preds = %14
  %19 = load i32, i32* @smps_offset, align 4
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, 1
  %25 = mul nsw i32 %24, 1266
  %26 = add nsw i32 %25, 70900
  %27 = mul nsw i32 %26, 10
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %2, align 8
  br label %36

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, 1
  %32 = mul nsw i32 %31, 1266
  %33 = add nsw i32 %32, 60770
  %34 = mul nsw i32 %33, 10
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %29, %22, %17, %13
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
