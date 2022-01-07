; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_check_gva_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_check_gva_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_gva_range(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %15 = call i32 @ipte_lock(%struct.kvm_vcpu* %14)
  br label %16

16:                                               ; preds = %25, %5
  %17 = load i64, i64* %9, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %44

25:                                               ; preds = %23
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = urem i64 %28, %29
  %31 = sub i64 %27, %30
  %32 = call i64 @min(i64 %26, i64 %31)
  store i64 %32, i64* %12, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @guest_translate_address(%struct.kvm_vcpu* %33, i64 %34, i32 %35, i64* %11, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %9, align 8
  br label %16

44:                                               ; preds = %23
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %46 = call i32 @ipte_unlock(%struct.kvm_vcpu* %45)
  %47 = load i32, i32* %13, align 4
  ret i32 %47
}

declare dso_local i32 @ipte_lock(%struct.kvm_vcpu*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @guest_translate_address(%struct.kvm_vcpu*, i64, i32, i64*, i32) #1

declare dso_local i32 @ipte_unlock(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
