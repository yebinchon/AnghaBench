; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32, i32, i32, i32 }
%struct.charlcd_priv = type { i32, %struct.charlcd, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DEFAULT_LCD_BWIDTH = common dso_local global i32 0, align 4
@DEFAULT_LCD_HWIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.charlcd* @charlcd_alloc(i32 %0) #0 {
  %2 = alloca %struct.charlcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.charlcd_priv*, align 8
  %5 = alloca %struct.charlcd*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = zext i32 %6 to i64
  %8 = add i64 24, %7
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.charlcd_priv* @kzalloc(i32 %9, i32 %10)
  store %struct.charlcd_priv* %11, %struct.charlcd_priv** %4, align 8
  %12 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %13 = icmp ne %struct.charlcd_priv* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.charlcd* null, %struct.charlcd** %2, align 8
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %17 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 4
  %19 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %20 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %19, i32 0, i32 1
  store %struct.charlcd* %20, %struct.charlcd** %5, align 8
  %21 = load %struct.charlcd*, %struct.charlcd** %5, align 8
  %22 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %21, i32 0, i32 0
  store i32 8, i32* %22, align 4
  %23 = load i32, i32* @DEFAULT_LCD_BWIDTH, align 4
  %24 = load %struct.charlcd*, %struct.charlcd** %5, align 8
  %25 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @DEFAULT_LCD_HWIDTH, align 4
  %27 = load %struct.charlcd*, %struct.charlcd** %5, align 8
  %28 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.charlcd_priv*, %struct.charlcd_priv** %4, align 8
  %30 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.charlcd*, %struct.charlcd** %5, align 8
  %33 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.charlcd*, %struct.charlcd** %5, align 8
  store %struct.charlcd* %34, %struct.charlcd** %2, align 8
  br label %35

35:                                               ; preds = %15, %14
  %36 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  ret %struct.charlcd* %36
}

declare dso_local %struct.charlcd_priv* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
