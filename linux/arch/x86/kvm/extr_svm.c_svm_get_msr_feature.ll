; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_get_msr_feature.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_get_msr_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_msr_entry = type { i32, i64 }

@X86_FEATURE_LFENCE_RDTSC = common dso_local global i32 0, align 4
@MSR_F10H_DECFG_LFENCE_SERIALIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_msr_entry*)* @svm_get_msr_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_get_msr_feature(%struct.kvm_msr_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_msr_entry*, align 8
  store %struct.kvm_msr_entry* %0, %struct.kvm_msr_entry** %3, align 8
  %4 = load %struct.kvm_msr_entry*, %struct.kvm_msr_entry** %3, align 8
  %5 = getelementptr inbounds %struct.kvm_msr_entry, %struct.kvm_msr_entry* %4, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = load %struct.kvm_msr_entry*, %struct.kvm_msr_entry** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_msr_entry, %struct.kvm_msr_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %20 [
    i32 128, label %9
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @X86_FEATURE_LFENCE_RDTSC, align 4
  %11 = call i32 @boot_cpu_has(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i64, i64* @MSR_F10H_DECFG_LFENCE_SERIALIZE, align 8
  %15 = load %struct.kvm_msr_entry*, %struct.kvm_msr_entry** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_msr_entry, %struct.kvm_msr_entry* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = or i64 %17, %14
  store i64 %18, i64* %16, align 8
  br label %19

19:                                               ; preds = %13, %9
  br label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %22

21:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @boot_cpu_has(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
