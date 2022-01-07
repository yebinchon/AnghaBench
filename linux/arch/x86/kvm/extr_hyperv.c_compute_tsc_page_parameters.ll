; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_compute_tsc_page_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_compute_tsc_page_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvclock_vcpu_time_info = type { i32, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PVCLOCK_TSC_STABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvclock_vcpu_time_info*, %struct.TYPE_3__*)* @compute_tsc_page_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_tsc_page_parameters(%struct.pvclock_vcpu_time_info* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvclock_vcpu_time_info*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store %struct.pvclock_vcpu_time_info* %0, %struct.pvclock_vcpu_time_info** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %7 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %8 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PVCLOCK_TSC_STABLE_BIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

14:                                               ; preds = %2
  %15 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %16 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 32, %17
  %19 = zext i32 %18 to i64
  %20 = shl i64 100, %19
  store i64 %20, i64* %6, align 8
  %21 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %22 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %62

27:                                               ; preds = %14
  %28 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %29 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 32, %30
  %32 = zext i32 %31 to i64
  %33 = shl i64 1, %32
  %34 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %35 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @mul_u64_u32_div(i64 %33, i64 %36, i32 100)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %41 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @do_div(i32 %47, i32 100)
  %49 = load %struct.pvclock_vcpu_time_info*, %struct.pvclock_vcpu_time_info** %4, align 8
  %50 = getelementptr inbounds %struct.pvclock_vcpu_time_info, %struct.pvclock_vcpu_time_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @mul_u64_u64_shr(i32 %51, i32 %54, i32 64)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %27, %26, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @mul_u64_u32_div(i64, i64, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @mul_u64_u64_shr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
