; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32 }

@charlcd_dev = common dso_local global i32 0, align 4
@the_charlcd = common dso_local global %struct.charlcd* null, align 8
@panel_notifier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @charlcd_register(%struct.charlcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charlcd*, align 8
  %4 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %3, align 8
  %5 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  %6 = call i32 @charlcd_init(%struct.charlcd* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = call i32 @misc_register(i32* @charlcd_dev)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %11
  %18 = load %struct.charlcd*, %struct.charlcd** %3, align 8
  store %struct.charlcd* %18, %struct.charlcd** @the_charlcd, align 8
  %19 = call i32 @register_reboot_notifier(i32* @panel_notifier)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %15, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @charlcd_init(%struct.charlcd*) #1

declare dso_local i32 @misc_register(i32*) #1

declare dso_local i32 @register_reboot_notifier(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
