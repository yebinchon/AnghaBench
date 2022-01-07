; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_img-ascii-lcd.c_sead3_wait_lcd_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_img-ascii-lcd.c_sead3_wait_lcd_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ascii_lcd_ctx = type { i64, i32 }

@SEAD3_REG_LCD_CTRL = common dso_local global i64 0, align 8
@SEAD3_REG_CPLD_DATA = common dso_local global i64 0, align 8
@SEAD3_REG_CPLD_DATA_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_ascii_lcd_ctx*)* @sead3_wait_lcd_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sead3_wait_lcd_idle(%struct.img_ascii_lcd_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.img_ascii_lcd_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.img_ascii_lcd_ctx* %0, %struct.img_ascii_lcd_ctx** %3, align 8
  %6 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %7 = call i32 @sead3_wait_sm_idle(%struct.img_ascii_lcd_ctx* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %49, %12
  %14 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SEAD3_REG_LCD_CTRL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @regmap_read(i32 %16, i64 %21, i32* %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %55

27:                                               ; preds = %13
  %28 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %29 = call i32 @sead3_wait_sm_idle(%struct.img_ascii_lcd_ctx* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %55

34:                                               ; preds = %27
  %35 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SEAD3_REG_CPLD_DATA, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @regmap_read(i32 %37, i64 %42, i32* %4)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %55

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @SEAD3_REG_CPLD_DATA_BUSY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %13, label %54

54:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %46, %32, %25, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @sead3_wait_sm_idle(%struct.img_ascii_lcd_ctx*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
