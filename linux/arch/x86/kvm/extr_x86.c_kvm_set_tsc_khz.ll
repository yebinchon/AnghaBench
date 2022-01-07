; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_tsc_khz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_tsc_khz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@kvm_default_tsc_scaling_ratio = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@tsc_khz = common dso_local global i32 0, align 4
@tsc_tolerance_ppm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"kvm: requested TSC rate %u falls outside tolerance [%u,%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64)* @kvm_set_tsc_khz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_set_tsc_khz(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @kvm_default_tsc_scaling_ratio, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 8
  store i32 -1, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = mul nsw i64 %17, 1000
  %19 = load i32, i32* @NSEC_PER_SEC, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @kvm_get_time_scale(i64 %18, i32 %19, i32* %22, i32* %25)
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load i32, i32* @tsc_khz, align 4
  %32 = load i32, i32* @tsc_tolerance_ppm, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i64 @adjust_tsc_khz(i32 %31, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i32, i32* @tsc_khz, align 4
  %36 = load i32, i32* @tsc_tolerance_ppm, align 4
  %37 = call i64 @adjust_tsc_khz(i32 %35, i32 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %16
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %16
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %47, i64 %48)
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @set_tsc_khz(%struct.kvm_vcpu* %51, i64 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @kvm_get_time_scale(i64, i32, i32*, i32*) #1

declare dso_local i64 @adjust_tsc_khz(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

declare dso_local i32 @set_tsc_khz(%struct.kvm_vcpu*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
