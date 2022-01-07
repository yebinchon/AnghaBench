; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_ssif_set_need_watch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_ssif_set_need_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssif_info = type { i64, i32 }

@IPMI_WATCH_MASK_CHECK_MESSAGES = common dso_local global i32 0, align 4
@SSIF_WATCH_MSG_TIMEOUT = common dso_local global i64 0, align 8
@SSIF_WATCH_WATCHDOG_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ssif_set_need_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssif_set_need_watch(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssif_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.ssif_info*
  store %struct.ssif_info* %10, %struct.ssif_info** %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IPMI_WATCH_MASK_CHECK_MESSAGES, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @SSIF_WATCH_MSG_TIMEOUT, align 8
  store i64 %16, i64* %8, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i64, i64* @SSIF_WATCH_WATCHDOG_TIMEOUT, align 8
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %20, %17
  br label %23

23:                                               ; preds = %22, %15
  %24 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %25 = call i64* @ipmi_ssif_lock_cond(%struct.ssif_info* %24, i64* %6)
  store i64* %25, i64** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %28 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %23
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %34 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %36 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %41 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %40, i32 0, i32 1
  %42 = load i64, i64* @jiffies, align 8
  %43 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %44 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = call i32 @mod_timer(i32* %41, i64 %46)
  br label %48

48:                                               ; preds = %39, %31
  br label %49

49:                                               ; preds = %48, %23
  %50 = load %struct.ssif_info*, %struct.ssif_info** %5, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = call i32 @ipmi_ssif_unlock_cond(%struct.ssif_info* %50, i64* %51)
  ret void
}

declare dso_local i64* @ipmi_ssif_lock_cond(%struct.ssif_info*, i64*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ipmi_ssif_unlock_cond(%struct.ssif_info*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
