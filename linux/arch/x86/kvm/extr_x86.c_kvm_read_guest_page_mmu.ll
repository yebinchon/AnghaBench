; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_read_guest_page_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_read_guest_page_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu = type { i64 (%struct.kvm_vcpu*, i32, i32, %struct.x86_exception*)* }
%struct.x86_exception = type { i32 }

@UNMAPPED_GVA = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_read_guest_page_mmu(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1, i64 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca %struct.kvm_mmu*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.x86_exception, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %9, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i64, i64* %11, align 8
  %20 = call i32 @gfn_to_gpa(i64 %19)
  store i32 %20, i32* %18, align 4
  %21 = load %struct.kvm_mmu*, %struct.kvm_mmu** %10, align 8
  %22 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %21, i32 0, i32 0
  %23 = load i64 (%struct.kvm_vcpu*, i32, i32, %struct.x86_exception*)*, i64 (%struct.kvm_vcpu*, i32, i32, %struct.x86_exception*)** %22, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i64 %23(%struct.kvm_vcpu* %24, i32 %25, i32 %26, %struct.x86_exception* %16)
  store i64 %27, i64* %17, align 8
  %28 = load i64, i64* %17, align 8
  %29 = load i64, i64* @UNMAPPED_GVA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %43

34:                                               ; preds = %7
  %35 = load i64, i64* %17, align 8
  %36 = call i64 @gpa_to_gfn(i64 %35)
  store i64 %36, i64* %17, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %38 = load i64, i64* %17, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @kvm_vcpu_read_guest_page(%struct.kvm_vcpu* %37, i64 %38, i8* %39, i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %34, %31
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

declare dso_local i32 @gfn_to_gpa(i64) #1

declare dso_local i64 @gpa_to_gfn(i64) #1

declare dso_local i32 @kvm_vcpu_read_guest_page(%struct.kvm_vcpu*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
