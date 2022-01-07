; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_set_tsc_khz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_set_tsc_khz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@kvm_default_tsc_scaling_ratio = common dso_local global i64 0, align 8
@kvm_has_tsc_control = common dso_local global i32 0, align 4
@tsc_khz = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"user requested TSC rate below hardware speed\0A\00", align 1
@kvm_tsc_scaling_ratio_frac_bits = common dso_local global i64 0, align 8
@kvm_max_tsc_scaling_ratio = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Invalid TSC scaling ratio - virtual-tsc-khz=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32)* @set_tsc_khz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_tsc_khz(%struct.kvm_vcpu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* @kvm_default_tsc_scaling_ratio, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i64 %12, i64* %15, align 8
  store i32 0, i32* %4, align 4
  br label %52

16:                                               ; preds = %3
  %17 = load i32, i32* @kvm_has_tsc_control, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @tsc_khz, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %52

30:                                               ; preds = %19
  %31 = call i32 (i8*, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %52

32:                                               ; preds = %16
  %33 = load i64, i64* @kvm_tsc_scaling_ratio_frac_bits, align 8
  %34 = shl i64 1, %33
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @tsc_khz, align 8
  %37 = call i64 @mul_u64_u32_div(i64 %34, i64 %35, i64 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @kvm_max_tsc_scaling_ratio, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %32
  %45 = load i64, i64* %6, align 8
  %46 = call i32 (i8*, ...) @pr_warn_ratelimited(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  store i32 -1, i32* %4, align 4
  br label %52

47:                                               ; preds = %40
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i64 %48, i64* %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %44, %30, %23, %11
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @pr_warn_ratelimited(i8*, ...) #1

declare dso_local i64 @mul_u64_u32_div(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
