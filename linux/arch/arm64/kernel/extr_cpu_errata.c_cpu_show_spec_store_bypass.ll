; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpu_errata.c_cpu_show_spec_store_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpu_errata.c_cpu_show_spec_store_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@__ssb_safe = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Not affected\0A\00", align 1
@ssbd_state = common dso_local global i32 0, align 4
@CONFIG_ARM64_SSBD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Mitigation: Speculative Store Bypass disabled via prctl\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Vulnerable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_show_spec_store_bypass(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* @__ssb_safe, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  br label %26

13:                                               ; preds = %3
  %14 = load i32, i32* @ssbd_state, align 4
  switch i32 %14, label %23 [
    i32 128, label %15
    i32 129, label %15
  ]

15:                                               ; preds = %13, %13
  %16 = load i32, i32* @CONFIG_ARM64_SSBD, align 4
  %17 = call i32 @IS_ENABLED(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %19, %10
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
