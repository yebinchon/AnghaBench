; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_prepare_memory_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_prepare_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.kvm_memory_slot = type { i32 }
%struct.kvm_userspace_memory_region = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_prepare_memory_region(%struct.kvm* %0, %struct.kvm_memory_slot* %1, %struct.kvm_userspace_memory_region* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.kvm_memory_slot*, align 8
  %8 = alloca %struct.kvm_userspace_memory_region*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %6, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %7, align 8
  store %struct.kvm_userspace_memory_region* %2, %struct.kvm_userspace_memory_region** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %8, align 8
  %11 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, 1048575
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %47

19:                                               ; preds = %4
  %20 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %8, align 8
  %21 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = and i64 %23, 1048575
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %47

29:                                               ; preds = %19
  %30 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %8, align 8
  %31 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.kvm_userspace_memory_region*, %struct.kvm_userspace_memory_region** %8, align 8
  %34 = getelementptr inbounds %struct.kvm_userspace_memory_region, %struct.kvm_userspace_memory_region* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = load %struct.kvm*, %struct.kvm** %6, align 8
  %39 = getelementptr inbounds %struct.kvm, %struct.kvm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %43, %26, %16
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
