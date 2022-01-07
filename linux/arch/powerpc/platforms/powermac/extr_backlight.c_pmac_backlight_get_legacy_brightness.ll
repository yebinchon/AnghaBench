; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_backlight.c_pmac_backlight_get_legacy_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_backlight.c_pmac_backlight_get_legacy_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.backlight_properties }
%struct.backlight_properties = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@pmac_backlight_mutex = common dso_local global i32 0, align 4
@pmac_backlight = common dso_local global %struct.TYPE_2__* null, align 8
@OLD_BACKLIGHT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmac_backlight_get_legacy_brightness() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.backlight_properties*, align 8
  %3 = load i32, i32* @ENXIO, align 4
  %4 = sub nsw i32 0, %3
  store i32 %4, i32* %1, align 4
  %5 = call i32 @mutex_lock(i32* @pmac_backlight_mutex)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmac_backlight, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmac_backlight, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.backlight_properties* %10, %struct.backlight_properties** %2, align 8
  %11 = load %struct.backlight_properties*, %struct.backlight_properties** %2, align 8
  %12 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @OLD_BACKLIGHT_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = mul nsw i32 %13, %15
  %17 = load %struct.backlight_properties*, %struct.backlight_properties** %2, align 8
  %18 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = sdiv i32 %16, %20
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %8, %0
  %23 = call i32 @mutex_unlock(i32* @pmac_backlight_mutex)
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
