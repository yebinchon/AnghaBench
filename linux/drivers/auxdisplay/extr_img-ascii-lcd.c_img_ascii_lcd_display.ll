; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_img-ascii-lcd.c_img_ascii_lcd_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_img-ascii-lcd.c_img_ascii_lcd_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ascii_lcd_ctx = type { i8*, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_ascii_lcd_ctx*, i8*, i32)* @img_ascii_lcd_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ascii_lcd_display(%struct.img_ascii_lcd_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.img_ascii_lcd_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.img_ascii_lcd_ctx* %0, %struct.img_ascii_lcd_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %9, i32 0, i32 2
  %11 = call i32 @del_timer_sync(i32* %10)
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %17
  %30 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @devm_kmalloc(i32* %33, i32 %35, i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %77

43:                                               ; preds = %29
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %43
  %57 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @devm_kfree(i32* %60, i8* %63)
  br label %65

65:                                               ; preds = %56, %43
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %5, align 8
  %68 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  %74 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %74, i32 0, i32 2
  %76 = call i32 @img_ascii_lcd_scroll(i32* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %65, %40
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @devm_kmalloc(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @devm_kfree(i32*, i8*) #1

declare dso_local i32 @img_ascii_lcd_scroll(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
