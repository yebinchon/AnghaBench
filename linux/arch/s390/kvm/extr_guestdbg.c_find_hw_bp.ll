; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_find_hw_bp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_guestdbg.c_find_hw_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_hw_bp_info_arch = type { i64, i64 }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.kvm_hw_bp_info_arch* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_hw_bp_info_arch* (%struct.kvm_vcpu*, i64)* @find_hw_bp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_hw_bp_info_arch* @find_hw_bp(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_hw_bp_info_arch*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_hw_bp_info_arch*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %11, align 8
  store %struct.kvm_hw_bp_info_arch* %12, %struct.kvm_hw_bp_info_arch** %6, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.kvm_hw_bp_info_arch* null, %struct.kvm_hw_bp_info_arch** %3, align 8
  br label %60

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %54, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %21
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %6, align 8
  %32 = getelementptr inbounds %struct.kvm_hw_bp_info_arch, %struct.kvm_hw_bp_info_arch* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %58

36:                                               ; preds = %29
  %37 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %6, align 8
  %38 = getelementptr inbounds %struct.kvm_hw_bp_info_arch, %struct.kvm_hw_bp_info_arch* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %6, align 8
  %44 = getelementptr inbounds %struct.kvm_hw_bp_info_arch, %struct.kvm_hw_bp_info_arch* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %6, align 8
  %47 = call i32 @end_of_range(%struct.kvm_hw_bp_info_arch* %46)
  %48 = call i64 @in_addr_range(i64 %42, i64 %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %58

51:                                               ; preds = %41, %36
  %52 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %6, align 8
  %53 = getelementptr inbounds %struct.kvm_hw_bp_info_arch, %struct.kvm_hw_bp_info_arch* %52, i32 1
  store %struct.kvm_hw_bp_info_arch* %53, %struct.kvm_hw_bp_info_arch** %6, align 8
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %21

57:                                               ; preds = %21
  store %struct.kvm_hw_bp_info_arch* null, %struct.kvm_hw_bp_info_arch** %3, align 8
  br label %60

58:                                               ; preds = %50, %35
  %59 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %6, align 8
  store %struct.kvm_hw_bp_info_arch* %59, %struct.kvm_hw_bp_info_arch** %3, align 8
  br label %60

60:                                               ; preds = %58, %57, %19
  %61 = load %struct.kvm_hw_bp_info_arch*, %struct.kvm_hw_bp_info_arch** %3, align 8
  ret %struct.kvm_hw_bp_info_arch* %61
}

declare dso_local i64 @in_addr_range(i64, i64, i32) #1

declare dso_local i32 @end_of_range(%struct.kvm_hw_bp_info_arch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
