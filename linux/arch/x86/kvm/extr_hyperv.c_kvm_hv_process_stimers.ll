; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_process_stimers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_kvm_hv_process_stimers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_vcpu_hv = type { %struct.kvm_vcpu_hv_stimer*, i32 }
%struct.kvm_vcpu_hv_stimer = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_hv_process_stimers(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_vcpu_hv*, align 8
  %4 = alloca %struct.kvm_vcpu_hv_stimer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call %struct.kvm_vcpu_hv* @vcpu_to_hv_vcpu(%struct.kvm_vcpu* %8)
  store %struct.kvm_vcpu_hv* %9, %struct.kvm_vcpu_hv** %3, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %80, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %12, i32 0, i32 0
  %14 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.kvm_vcpu_hv_stimer* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %83

17:                                               ; preds = %10
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @test_and_clear_bit(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %79

24:                                               ; preds = %17
  %25 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %25, i32 0, i32 0
  %27 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %27, i64 %29
  store %struct.kvm_vcpu_hv_stimer* %30, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %31 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %24
  %37 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @get_time_ref_counter(i32 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %52 = call i32 @stimer_expiration(%struct.kvm_vcpu_hv_stimer* %51)
  br label %53

53:                                               ; preds = %50, %42
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %72 = call i32 @stimer_start(%struct.kvm_vcpu_hv_stimer* %71)
  br label %73

73:                                               ; preds = %70, %65
  br label %77

74:                                               ; preds = %60, %54
  %75 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %4, align 8
  %76 = call i32 @stimer_cleanup(%struct.kvm_vcpu_hv_stimer* %75)
  br label %77

77:                                               ; preds = %74, %73
  br label %78

78:                                               ; preds = %77, %24
  br label %79

79:                                               ; preds = %78, %17
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %10

83:                                               ; preds = %10
  ret void
}

declare dso_local %struct.kvm_vcpu_hv* @vcpu_to_hv_vcpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.kvm_vcpu_hv_stimer*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i64 @get_time_ref_counter(i32) #1

declare dso_local i32 @stimer_expiration(%struct.kvm_vcpu_hv_stimer*) #1

declare dso_local i32 @stimer_start(%struct.kvm_vcpu_hv_stimer*) #1

declare dso_local i32 @stimer_cleanup(%struct.kvm_vcpu_hv_stimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
