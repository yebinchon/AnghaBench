; ModuleID = '/home/carl/AnghaBench/linux/Documentation/usb/extr_usbdevfs-drop-permissions.c_claim_some_intf.c'
source_filename = "/home/carl/AnghaBench/linux/Documentation/usb/extr_usbdevfs-drop-permissions.c_claim_some_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USBDEVFS_CLAIMINTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"OK: claimed if %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR claiming if %d (%d - %s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @claim_some_intf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %29

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @USBDEVFS_CLAIMINTERFACE, align 4
  %11 = call i32 @ioctl(i32 %9, i32 %10, i32* %3)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %25

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 0, %19
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i8* @strerror(i32 %22)
  %24 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %20, i8* %23)
  br label %25

25:                                               ; preds = %17, %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %5

29:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
