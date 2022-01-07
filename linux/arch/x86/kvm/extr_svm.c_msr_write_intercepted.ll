; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_msr_write_intercepted.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_msr_write_intercepted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.TYPE_4__ = type { i64*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }

@MSR_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @msr_write_intercepted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msr_write_intercepted(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call i64 @is_guest_mode(%struct.kvm_vcpu* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = call %struct.TYPE_4__* @to_svm(%struct.kvm_vcpu* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = call %struct.TYPE_4__* @to_svm(%struct.kvm_vcpu* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi i64* [ %17, %12 ], [ %22, %18 ]
  store i64* %24, i64** %8, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @svm_msrpm_offset(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 15
  %29 = mul i32 2, %28
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @MSR_INVALID, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @test_bit(i32 %40, i64* %6)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i64 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local %struct.TYPE_4__* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i64 @svm_msrpm_offset(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
