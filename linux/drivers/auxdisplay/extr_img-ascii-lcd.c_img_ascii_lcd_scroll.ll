; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_img-ascii-lcd.c_img_ascii_lcd_scroll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_img-ascii-lcd.c_img_ascii_lcd_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ascii_lcd_ctx = type { i32, i32, i64, i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32 (%struct.img_ascii_lcd_ctx*)* }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ctx = common dso_local global %struct.img_ascii_lcd_ctx* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @img_ascii_lcd_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ascii_lcd_scroll(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.img_ascii_lcd_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %8 = ptrtoint %struct.img_ascii_lcd_ctx* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @timer, align 4
  %11 = call %struct.img_ascii_lcd_ctx* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.img_ascii_lcd_ctx* %11, %struct.img_ascii_lcd_ctx** %3, align 8
  %12 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %56, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %51, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %30, %33
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i1 [ false, %25 ], [ %34, %29 ]
  br i1 %36, label %37, label %56

37:                                               ; preds = %35
  %38 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %44, i32* %50, align 4
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %25

56:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32 (%struct.img_ascii_lcd_ctx*)*, i32 (%struct.img_ascii_lcd_ctx*)** %61, align 8
  %63 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %64 = call i32 %62(%struct.img_ascii_lcd_ctx* %63)
  %65 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = urem i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ugt i32 %78, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %57
  %86 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %87 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %86, i32 0, i32 3
  %88 = load i64, i64* @jiffies, align 8
  %89 = load %struct.img_ascii_lcd_ctx*, %struct.img_ascii_lcd_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.img_ascii_lcd_ctx, %struct.img_ascii_lcd_ctx* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = call i32 @mod_timer(i32* %87, i64 %92)
  br label %94

94:                                               ; preds = %85, %57
  ret void
}

declare dso_local %struct.img_ascii_lcd_ctx* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
