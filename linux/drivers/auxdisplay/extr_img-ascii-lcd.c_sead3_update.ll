; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_img-ascii-lcd.c_sead3_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_img-ascii-lcd.c_sead3_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ascii_lcd_ctx = type { i32*, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SEAD3_REG_LCD_CTRL = common dso_local global i64 0, align 8
@SEAD3_REG_LCD_CTRL_SETDRAM = common dso_local global i32 0, align 4
@SEAD3_REG_LCD_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Failed to update LCD display: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ascii_lcd_ctx*)* @sead3_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sead3_update(%struct.img_ascii_lcd_ctx* %0) #0 {
  %2 = alloca %struct.img_ascii_lcd_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.img_ascii_lcd_ctx* %0, %struct.img_ascii_lcd_ctx** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %62, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %6, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %5
  %14 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %2, align 8
  %15 = call i32 @sead3_wait_lcd_idle(%struct.img_ascii_lcd_ctx* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %65

19:                                               ; preds = %13
  %20 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SEAD3_REG_LCD_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @SEAD3_REG_LCD_CTRL_SETDRAM, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @regmap_write(i32 %22, i64 %27, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %65

35:                                               ; preds = %19
  %36 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %2, align 8
  %37 = call i32 @sead3_wait_lcd_idle(%struct.img_ascii_lcd_ctx* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %65

41:                                               ; preds = %35
  %42 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SEAD3_REG_LCD_DATA, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %2, align 8
  %51 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @regmap_write(i32 %44, i64 %49, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %41
  br label %65

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %5

65:                                               ; preds = %60, %40, %34, %18, %5
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %65
  ret void
}

declare dso_local i32 @sead3_wait_lcd_idle(%struct.img_ascii_lcd_ctx*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
