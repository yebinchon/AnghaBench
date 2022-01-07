; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpufeature.c_cpu_show_meltdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpufeature.c_cpu_show_meltdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@__meltdown_safe = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Not affected\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Mitigation: PTI\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Vulnerable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_show_meltdown(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* @__meltdown_safe, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  br label %22

13:                                               ; preds = %3
  %14 = call i64 (...) @arm64_kernel_unmapped_at_el0()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %4, align 4
  br label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %16, %10
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i64 @arm64_kernel_unmapped_at_el0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
