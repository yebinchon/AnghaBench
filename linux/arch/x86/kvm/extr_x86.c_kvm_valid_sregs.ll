; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_valid_sregs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_valid_sregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_sregs = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EFER_LME = common dso_local global i32 0, align 4
@X86_CR0_PG = common dso_local global i32 0, align 4
@X86_CR4_PAE = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_sregs*)* @kvm_valid_sregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_valid_sregs(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_sregs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %5, align 8
  %6 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %7 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @EFER_LME, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @X86_CR0_PG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @X86_CR4_PAE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EFER_LMA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %60

36:                                               ; preds = %26
  br label %54

37:                                               ; preds = %12, %2
  %38 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @EFER_LMA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %46 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %37
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %57 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @kvm_valid_cr4(%struct.kvm_vcpu* %55, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %50, %33
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @kvm_valid_cr4(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
