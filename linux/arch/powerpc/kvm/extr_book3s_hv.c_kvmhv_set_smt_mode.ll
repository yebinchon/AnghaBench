; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmhv_set_smt_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmhv_set_smt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_SMT_THREADS = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@threads_per_subcore = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, i64, i64)* @kvmhv_set_smt_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmhv_set_smt_mode(%struct.kvm* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %66

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @MAX_SMT_THREADS, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @is_power_of_2(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %66

26:                                               ; preds = %19
  %27 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %28 = call i32 @cpu_has_feature(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @threads_per_subcore, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %66

37:                                               ; preds = %30
  br label %41

38:                                               ; preds = %26
  %39 = load i64, i64* %6, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  store i64 1, i64* %6, align 8
  br label %41

41:                                               ; preds = %38, %37
  %42 = load %struct.kvm*, %struct.kvm** %5, align 8
  %43 = getelementptr inbounds %struct.kvm, %struct.kvm* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.kvm*, %struct.kvm** %5, align 8
  %48 = getelementptr inbounds %struct.kvm, %struct.kvm* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %41
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.kvm*, %struct.kvm** %5, align 8
  %55 = getelementptr inbounds %struct.kvm, %struct.kvm* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.kvm*, %struct.kvm** %5, align 8
  %59 = getelementptr inbounds %struct.kvm, %struct.kvm* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %52, %41
  %62 = load %struct.kvm*, %struct.kvm** %5, align 8
  %63 = getelementptr inbounds %struct.kvm, %struct.kvm* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %34, %23, %12
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
