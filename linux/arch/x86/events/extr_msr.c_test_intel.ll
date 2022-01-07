; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_msr.c_test_intel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_msr.c_test_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X86_VENDOR_INTEL = common dso_local global i64 0, align 8
@PERF_MSR_SMI = common dso_local global i32 0, align 4
@PERF_MSR_PPERF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @test_intel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_intel(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %7 = load i64, i64* @X86_VENDOR_INTEL, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 8
  %11 = icmp ne i32 %10, 6
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %32

13:                                               ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 4
  switch i32 %14, label %31 [
    i32 143, label %15
    i32 140, label %15
    i32 142, label %15
    i32 141, label %15
    i32 132, label %15
    i32 131, label %15
    i32 130, label %15
    i32 139, label %15
    i32 138, label %15
    i32 147, label %15
    i32 146, label %15
    i32 155, label %15
    i32 152, label %15
    i32 153, label %15
    i32 154, label %15
    i32 161, label %15
    i32 160, label %15
    i32 159, label %15
    i32 158, label %15
    i32 163, label %15
    i32 162, label %15
    i32 167, label %15
    i32 166, label %15
    i32 165, label %15
    i32 164, label %15
    i32 129, label %15
    i32 128, label %15
    i32 136, label %21
    i32 137, label %21
    i32 135, label %21
    i32 144, label %21
    i32 145, label %21
    i32 156, label %21
    i32 157, label %21
    i32 149, label %21
    i32 151, label %21
    i32 148, label %21
    i32 150, label %21
    i32 133, label %21
    i32 134, label %21
  ]

15:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PERF_MSR_SMI, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %32

20:                                               ; preds = %15
  br label %31

21:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PERF_MSR_SMI, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PERF_MSR_PPERF, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i32 1, i32* %3, align 4
  br label %32

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %13, %30, %20
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %19, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
