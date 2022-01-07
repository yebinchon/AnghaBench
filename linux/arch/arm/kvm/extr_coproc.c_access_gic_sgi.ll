; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_access_gic_sgi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kvm/extr_coproc.c_access_gic_sgi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.coproc_params = type { i32, i32, i32, i32 }
%struct.coproc_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.coproc_params*, %struct.coproc_reg*)* @access_gic_sgi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_gic_sgi(%struct.kvm_vcpu* %0, %struct.coproc_params* %1, %struct.coproc_reg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.coproc_params*, align 8
  %7 = alloca %struct.coproc_reg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.coproc_params* %1, %struct.coproc_params** %6, align 8
  store %struct.coproc_reg* %2, %struct.coproc_reg** %7, align 8
  %10 = load %struct.coproc_params*, %struct.coproc_params** %6, align 8
  %11 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %16 = load %struct.coproc_params*, %struct.coproc_params** %6, align 8
  %17 = call i32 @read_from_write_only(%struct.kvm_vcpu* %15, %struct.coproc_params* %16)
  store i32 %17, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = load %struct.coproc_params*, %struct.coproc_params** %6, align 8
  %21 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @vcpu_reg(%struct.kvm_vcpu* %19, i32 %22)
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %27 = load %struct.coproc_params*, %struct.coproc_params** %6, align 8
  %28 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @vcpu_reg(%struct.kvm_vcpu* %26, i32 %29)
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load %struct.coproc_params*, %struct.coproc_params** %6, align 8
  %35 = getelementptr inbounds %struct.coproc_params, %struct.coproc_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %37 [
    i32 0, label %38
    i32 1, label %39
    i32 2, label %39
  ]

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %18, %37
  store i32 1, i32* %9, align 4
  br label %40

39:                                               ; preds = %18, %18
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @vgic_v3_dispatch_sgi(%struct.kvm_vcpu* %41, i32 %42, i32 %43)
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %14
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @read_from_write_only(%struct.kvm_vcpu*, %struct.coproc_params*) #1

declare dso_local i32* @vcpu_reg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vgic_v3_dispatch_sgi(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
