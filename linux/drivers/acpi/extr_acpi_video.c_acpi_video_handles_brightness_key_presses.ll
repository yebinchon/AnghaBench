; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_handles_brightness_key_presses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_handles_brightness_key_presses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@video_list_lock = common dso_local global i32 0, align 4
@video_bus_head = common dso_local global i32 0, align 4
@report_key_events = common dso_local global i32 0, align 4
@REPORT_BRIGHTNESS_KEY_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_video_handles_brightness_key_presses() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @mutex_lock(i32* @video_list_lock)
  %3 = call i32 @list_empty(i32* @video_bus_head)
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  store i32 %6, i32* %1, align 4
  %7 = call i32 @mutex_unlock(i32* @video_list_lock)
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load i32, i32* @report_key_events, align 4
  %12 = load i32, i32* @REPORT_BRIGHTNESS_KEY_EVENTS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %10, %0
  %16 = phi i1 [ false, %0 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
