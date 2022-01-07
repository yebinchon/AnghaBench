; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c_do_host_cpuid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c_do_host_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_cpuid_entry2 = type { i32, i32, i64, i32, i32, i32, i32 }

@KVM_CPUID_FLAG_STATEFUL_FUNC = common dso_local global i64 0, align 8
@KVM_CPUID_FLAG_SIGNIFCANT_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_cpuid_entry2*, i32, i32)* @do_host_cpuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_host_cpuid(%struct.kvm_cpuid_entry2* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_cpuid_entry2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_cpuid_entry2* %0, %struct.kvm_cpuid_entry2** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %21, i32 0, i32 6
  %23 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %23, i32 0, i32 5
  %25 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %25, i32 0, i32 4
  %27 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %27, i32 0, i32 3
  %29 = call i32 @cpuid_count(i32 %17, i32 %20, i32* %22, i32* %24, i32* %26, i32* %28)
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %43 [
    i32 2, label %31
    i32 4, label %37
    i32 7, label %37
    i32 11, label %37
    i32 13, label %37
    i32 15, label %37
    i32 16, label %37
    i32 18, label %37
    i32 20, label %37
    i32 23, label %37
    i32 24, label %37
    i32 31, label %37
    i32 -2147483619, label %37
  ]

31:                                               ; preds = %3
  %32 = load i64, i64* @KVM_CPUID_FLAG_STATEFUL_FUNC, align 8
  %33 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = or i64 %35, %32
  store i64 %36, i64* %34, align 8
  br label %43

37:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %38 = load i64, i64* @KVM_CPUID_FLAG_SIGNIFCANT_INDEX, align 8
  %39 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = or i64 %41, %38
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %3, %37, %31
  ret void
}

declare dso_local i32 @cpuid_count(i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
