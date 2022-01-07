; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_watch_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_watch_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssif_info = type { i32, i64, i32, i64 }
%struct.timer_list = type { i32 }

@watch_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ssif_info = common dso_local global %struct.ssif_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @watch_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watch_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ssif_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %7 = ptrtoint %struct.ssif_info* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @watch_timer, align 4
  %10 = call %struct.ssif_info* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.ssif_info* %10, %struct.ssif_info** %3, align 8
  %11 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %12 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %18 = call i64* @ipmi_ssif_lock_cond(%struct.ssif_info* %17, i64* %4)
  store i64* %18, i64** %5, align 8
  %19 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %20 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %16
  %24 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %25 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %24, i32 0, i32 2
  %26 = load i64, i64* @jiffies, align 8
  %27 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %28 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = call i32 @mod_timer(i32* %25, i64 %30)
  %32 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %33 = call i64 @SSIF_IDLE(%struct.ssif_info* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = call i32 @start_flag_fetch(%struct.ssif_info* %36, i64* %37)
  br label %46

39:                                               ; preds = %23
  %40 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %41 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %16
  %43 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %44 = load i64*, i64** %5, align 8
  %45 = call i32 @ipmi_ssif_unlock_cond(%struct.ssif_info* %43, i64* %44)
  br label %46

46:                                               ; preds = %42, %35, %15
  ret void
}

declare dso_local %struct.ssif_info* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64* @ipmi_ssif_lock_cond(%struct.ssif_info*, i64*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @SSIF_IDLE(%struct.ssif_info*) #1

declare dso_local i32 @start_flag_fetch(%struct.ssif_info*, i64*) #1

declare dso_local i32 @ipmi_ssif_unlock_cond(%struct.ssif_info*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
