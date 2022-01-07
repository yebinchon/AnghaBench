; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_set_count_hz.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_set_count_hz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_set_count_hz(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mips_coproc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  %13 = load %struct.mips_coproc*, %struct.mips_coproc** %12, align 8
  store %struct.mips_coproc* %13, %struct.mips_coproc** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp sle i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @NSEC_PER_SEC, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %16
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %76

31:                                               ; preds = %23
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %33 = call i32 @kvm_mips_count_disabled(%struct.kvm_vcpu* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = call i32 @kvm_mips_count_time(%struct.kvm_vcpu* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.mips_coproc*, %struct.mips_coproc** %6, align 8
  %40 = call i64 @kvm_read_c0_guest_count(%struct.mips_coproc* %39)
  store i64 %40, i64* %9, align 8
  br label %44

41:                                               ; preds = %31
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %43 = call i32 @kvm_mips_freeze_hrtimer(%struct.kvm_vcpu* %42, i64* %9)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* @NSEC_PER_SEC, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 32
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @div_u64(i32 %51, i64 %52)
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 8
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @kvm_mips_ktime_to_count(%struct.kvm_vcpu* %61, i32 %62)
  %64 = sub nsw i64 %60, %63
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %44
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @kvm_mips_resume_hrtimer(%struct.kvm_vcpu* %71, i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %70, %44
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %30, %20
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @kvm_mips_count_disabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_count_time(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_read_c0_guest_count(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_mips_freeze_hrtimer(%struct.kvm_vcpu*, i64*) #1

declare dso_local i32 @div_u64(i32, i64) #1

declare dso_local i64 @kvm_mips_ktime_to_count(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mips_resume_hrtimer(%struct.kvm_vcpu*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
