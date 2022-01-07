; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/rtc-rv5c386a/src/extr_rtc.c_rtc_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/rtc-rv5c386a/src/extr_rtc.c_rtc_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@CAP_SYS_TIME = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @rtc_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_do_ioctl(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtc_time, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %36 [
    i32 129, label %8
    i32 128, label %19
  ]

8:                                                ; preds = %2
  %9 = call i32 @memset(%struct.rtc_time* %6, i32 0, i32 4)
  %10 = call i32 @get_rtc_time(%struct.rtc_time* %6)
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @copy_to_user(i8* %12, %struct.rtc_time* %6, i32 4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %8
  br label %39

19:                                               ; preds = %2
  %20 = load i32, i32* @CAP_SYS_TIME, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EACCES, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %40

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = inttoptr i64 %27 to %struct.rtc_time*
  %29 = call i32 @copy_from_user(%struct.rtc_time* %6, %struct.rtc_time* %28, i32 4)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %26
  %35 = call i32 @set_rtc_time(%struct.rtc_time* %6)
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOTTY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %34, %18
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %36, %31, %23, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.rtc_time*, i32, i32) #1

declare dso_local i32 @get_rtc_time(%struct.rtc_time*) #1

declare dso_local i32 @copy_to_user(i8*, %struct.rtc_time*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @copy_from_user(%struct.rtc_time*, %struct.rtc_time*, i32) #1

declare dso_local i32 @set_rtc_time(%struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
