; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.charlcd*, i32)* }
%struct.charlcd_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*, i32)* @charlcd_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charlcd_backlight(%struct.charlcd* %0, i32 %1) #0 {
  %3 = alloca %struct.charlcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.charlcd_priv*, align 8
  store %struct.charlcd* %0, %struct.charlcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %7 = call %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd* %6)
  store %struct.charlcd_priv* %7, %struct.charlcd_priv** %5, align 8
  %8 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %9 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.charlcd*, i32)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %17 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %20 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %15
  %24 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %25 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %27, align 8
  %29 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 %28(%struct.charlcd* %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %15
  %33 = load %struct.charlcd_priv*, %struct.charlcd_priv** %5, align 8
  %34 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %36

36:                                               ; preds = %32, %14
  ret void
}

declare dso_local %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
