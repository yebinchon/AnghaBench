; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_workaround5458.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_workaround5458.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PH_GAIN_MASK = common dso_local global i16 0, align 2
@FR_GAIN_MASK = common dso_local global i16 0, align 2
@PH_GAIN = common dso_local global i16 0, align 2
@PH_GAIN_OFFSET = common dso_local global i16 0, align 2
@FR_GAIN = common dso_local global i16 0, align 2
@FR_GAIN_OFFSET = common dso_local global i16 0, align 2
@USE_INT_SETTING = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workaround5458() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %50, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %53

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = shl i32 %7, 8
  %9 = add i32 8221, %8
  %10 = call zeroext i16 @read_cr(i32 %9)
  store i16 %10, i16* %2, align 2
  %11 = load i16, i16* @PH_GAIN_MASK, align 2
  %12 = zext i16 %11 to i32
  %13 = load i16, i16* @FR_GAIN_MASK, align 2
  %14 = zext i16 %13 to i32
  %15 = or i32 %12, %14
  %16 = xor i32 %15, -1
  %17 = load i16, i16* %2, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, %16
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %2, align 2
  %21 = load i16, i16* @PH_GAIN, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @PH_GAIN_OFFSET, align 2
  %24 = zext i16 %23 to i32
  %25 = shl i32 %22, %24
  %26 = load i16, i16* %2, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %2, align 2
  %30 = load i16, i16* @FR_GAIN, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* @FR_GAIN_OFFSET, align 2
  %33 = zext i16 %32 to i32
  %34 = shl i32 %31, %33
  %35 = load i16, i16* %2, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %2, align 2
  %39 = load i16, i16* @USE_INT_SETTING, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* %2, align 2
  %42 = zext i16 %41 to i32
  %43 = or i32 %42, %40
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %2, align 2
  %45 = load i16, i16* %2, align 2
  %46 = load i32, i32* %1, align 4
  %47 = shl i32 %46, 8
  %48 = add i32 8221, %47
  %49 = call i32 @write_cr(i16 zeroext %45, i32 %48)
  br label %50

50:                                               ; preds = %6
  %51 = load i32, i32* %1, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %3

53:                                               ; preds = %3
  ret void
}

declare dso_local zeroext i16 @read_cr(i32) #1

declare dso_local i32 @write_cr(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
