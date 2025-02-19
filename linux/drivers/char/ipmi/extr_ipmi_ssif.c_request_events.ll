; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_request_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_request_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssif_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @request_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_events(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ssif_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ssif_info*
  store %struct.ssif_info* %7, %struct.ssif_info** %3, align 8
  %8 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %9 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %15 = call i64* @ipmi_ssif_lock_cond(%struct.ssif_info* %14, i64* %4)
  store i64* %15, i64** %5, align 8
  %16 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %17 = getelementptr inbounds %struct.ssif_info, %struct.ssif_info* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.ssif_info*, %struct.ssif_info** %3, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = call i32 @ipmi_ssif_unlock_cond(%struct.ssif_info* %18, i64* %19)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64* @ipmi_ssif_lock_cond(%struct.ssif_info*, i64*) #1

declare dso_local i32 @ipmi_ssif_unlock_cond(%struct.ssif_info*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
