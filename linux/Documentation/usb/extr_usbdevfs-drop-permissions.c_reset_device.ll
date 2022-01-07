; ModuleID = '/home/carl/AnghaBench/linux/Documentation/usb/extr_usbdevfs-drop-permissions.c_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/Documentation/usb/extr_usbdevfs-drop-permissions.c_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USBDEVFS_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"OK: USBDEVFS_RESET succeeded\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: reset failed! (%d - %s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @USBDEVFS_RESET, align 4
  %6 = call i32 @ioctl(i32 %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 0, %12
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i8* @strerror(i32 %15)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %13, i8* %16)
  br label %18

18:                                               ; preds = %11, %9
  ret void
}

declare dso_local i32 @ioctl(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
