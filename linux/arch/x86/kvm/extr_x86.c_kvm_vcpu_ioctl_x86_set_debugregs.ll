; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_set_debugregs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_x86_set_debugregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.kvm_debugregs = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_debugregs*)* @kvm_vcpu_ioctl_x86_set_debugregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vcpu_ioctl_x86_set_debugregs(%struct.kvm_vcpu* %0, %struct.kvm_debugregs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_debugregs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_debugregs* %1, %struct.kvm_debugregs** %5, align 8
  %6 = load %struct.kvm_debugregs*, %struct.kvm_debugregs** %5, align 8
  %7 = getelementptr inbounds %struct.kvm_debugregs, %struct.kvm_debugregs* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %60

13:                                               ; preds = %2
  %14 = load %struct.kvm_debugregs*, %struct.kvm_debugregs** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_debugregs, %struct.kvm_debugregs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = and i64 %17, -4294967296
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %60

23:                                               ; preds = %13
  %24 = load %struct.kvm_debugregs*, %struct.kvm_debugregs** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_debugregs, %struct.kvm_debugregs* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = and i64 %27, -4294967296
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %23
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kvm_debugregs*, %struct.kvm_debugregs** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_debugregs, %struct.kvm_debugregs* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memcpy(i32 %37, i32 %40, i32 4)
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %43 = call i32 @kvm_update_dr0123(%struct.kvm_vcpu* %42)
  %44 = load %struct.kvm_debugregs*, %struct.kvm_debugregs** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_debugregs, %struct.kvm_debugregs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %51 = call i32 @kvm_update_dr6(%struct.kvm_vcpu* %50)
  %52 = load %struct.kvm_debugregs*, %struct.kvm_debugregs** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_debugregs, %struct.kvm_debugregs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %59 = call i32 @kvm_update_dr7(%struct.kvm_vcpu* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %33, %30, %20, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kvm_update_dr0123(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_update_dr6(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_update_dr7(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
