; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpu_errata.c_cpu_show_spectre_v2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpu_errata.c_cpu_show_spectre_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Not affected\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Mitigation: Branch predictor hardening\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Vulnerable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_show_spectre_v2(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = call i32 (...) @get_spectre_v2_workaround_state()
  switch i32 %8, label %16 [
    i32 130, label %9
    i32 128, label %12
    i32 129, label %15
  ]

9:                                                ; preds = %3
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %4, align 4
  br label %19

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %4, align 4
  br label %19

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %3, %15
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %12, %9
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @get_spectre_v2_workaround_state(...) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
