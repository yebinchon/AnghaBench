; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_setup_mce.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_setup_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@KVM_MAX_MCE_BANKS = common dso_local global i32 0, align 4
@kvm_mce_cap_supported = common dso_local global i32 0, align 4
@MCG_CTL_P = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @kvm_vcpu_ioctl_x86_setup_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vcpu_ioctl_x86_setup_mce(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 255
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @KVM_MAX_MCE_BANKS, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  br label %64

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @kvm_mce_cap_supported, align 4
  %22 = or i32 %21, 255
  %23 = or i32 %22, 16711680
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %64

28:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MCG_CTL_P, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 -1, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %28
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = mul i32 %51, 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 -1, i32* %54, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %60, align 8
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = call i32 %61(%struct.kvm_vcpu* %62)
  br label %64

64:                                               ; preds = %58, %27, %18
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
