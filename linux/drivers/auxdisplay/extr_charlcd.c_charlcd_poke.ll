; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_poke.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.charlcd*, i32)* }
%struct.charlcd_priv = type { i32, i32, i32, i32 }

@LCD_FLAG_L = common dso_local global i32 0, align 4
@LCD_BL_TEMPO_PERIOD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @charlcd_poke(%struct.charlcd* %0) #0 {
  %2 = alloca %struct.charlcd*, align 8
  %3 = alloca %struct.charlcd_priv*, align 8
  store %struct.charlcd* %0, %struct.charlcd** %2, align 8
  %4 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %5 = call %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd* %4)
  store %struct.charlcd_priv* %5, %struct.charlcd_priv** %3, align 8
  %6 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %7 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %9, align 8
  %11 = icmp ne i32 (%struct.charlcd*, i32)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.charlcd_priv*, %struct.charlcd_priv** %3, align 8
  %15 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %14, i32 0, i32 3
  %16 = call i32 @cancel_delayed_work_sync(i32* %15)
  %17 = load %struct.charlcd_priv*, %struct.charlcd_priv** %3, align 8
  %18 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.charlcd_priv*, %struct.charlcd_priv** %3, align 8
  %21 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %13
  %25 = load %struct.charlcd_priv*, %struct.charlcd_priv** %3, align 8
  %26 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @LCD_FLAG_L, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %24
  %32 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %33 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %35, align 8
  %37 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %38 = call i32 %36(%struct.charlcd* %37, i32 1)
  br label %39

39:                                               ; preds = %31, %24, %13
  %40 = load %struct.charlcd_priv*, %struct.charlcd_priv** %3, align 8
  %41 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.charlcd_priv*, %struct.charlcd_priv** %3, align 8
  %43 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %42, i32 0, i32 3
  %44 = load i32, i32* @LCD_BL_TEMPO_PERIOD, align 4
  %45 = load i32, i32* @HZ, align 4
  %46 = mul nsw i32 %44, %45
  %47 = call i32 @schedule_delayed_work(i32* %43, i32 %46)
  %48 = load %struct.charlcd_priv*, %struct.charlcd_priv** %3, align 8
  %49 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %48, i32 0, i32 2
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %51

51:                                               ; preds = %39, %12
  ret void
}

declare dso_local %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
