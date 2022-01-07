; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_retry_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_retry_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssif_info = type { i32, i64 }
%struct.timer_list = type { i32 }

@retry_timer = common dso_local global i32 0, align 4
@ssif_info = common dso_local global %struct.ssif_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @retry_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retry_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ssif_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %8 = ptrtoint %struct.ssif_info* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @retry_timer, align 4
  %11 = call %struct.ssif_info* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.ssif_info* %11, %struct.ssif_info** %3, align 8
  %12 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %13 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %19 = call i64* @ipmi_ssif_lock_cond(%struct.ssif_info* %18, i64* %4)
  store i64* %19, i64** %5, align 8
  %20 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %21 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %24 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = call i32 @ipmi_ssif_unlock_cond(%struct.ssif_info* %25, i64* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %32 = call i32 @start_get(%struct.ssif_info* %31)
  br label %33

33:                                               ; preds = %16, %30, %17
  ret void
}

declare dso_local %struct.ssif_info* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64* @ipmi_ssif_lock_cond(%struct.ssif_info*, i64*) #1

declare dso_local i32 @ipmi_ssif_unlock_cond(%struct.ssif_info*, i64*) #1

declare dso_local i32 @start_get(%struct.ssif_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
