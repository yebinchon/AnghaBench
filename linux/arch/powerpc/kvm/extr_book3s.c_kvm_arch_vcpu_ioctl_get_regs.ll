; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvm_arch_vcpu_ioctl_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvm_arch_vcpu_ioctl_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_regs = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_get_regs(%struct.kvm_vcpu* %0, %struct.kvm_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_regs* %1, %struct.kvm_regs** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call i32 @kvmppc_get_pc(%struct.kvm_vcpu* %6)
  %8 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %8, i32 0, i32 17
  store i32 %7, i32* %9, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call i32 @kvmppc_get_cr(%struct.kvm_vcpu* %10)
  %12 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %12, i32 0, i32 16
  store i32 %11, i32* %13, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call i32 @kvmppc_get_ctr(%struct.kvm_vcpu* %14)
  %16 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %16, i32 0, i32 15
  store i32 %15, i32* %17, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = call i32 @kvmppc_get_lr(%struct.kvm_vcpu* %18)
  %20 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %20, i32 0, i32 14
  store i32 %19, i32* %21, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = call i32 @kvmppc_get_xer(%struct.kvm_vcpu* %22)
  %24 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %24, i32 0, i32 13
  store i32 %23, i32* %25, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %26)
  %28 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %28, i32 0, i32 12
  store i32 %27, i32* %29, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = call i32 @kvmppc_get_srr0(%struct.kvm_vcpu* %30)
  %32 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %32, i32 0, i32 11
  store i32 %31, i32* %33, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = call i32 @kvmppc_get_srr1(%struct.kvm_vcpu* %34)
  %36 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = call i32 @kvmppc_get_sprg0(%struct.kvm_vcpu* %44)
  %46 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = call i32 @kvmppc_get_sprg1(%struct.kvm_vcpu* %48)
  %50 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %51 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = call i32 @kvmppc_get_sprg2(%struct.kvm_vcpu* %52)
  %54 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = call i32 @kvmppc_get_sprg3(%struct.kvm_vcpu* %56)
  %58 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %59 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = call i32 @kvmppc_get_sprg4(%struct.kvm_vcpu* %60)
  %62 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = call i32 @kvmppc_get_sprg5(%struct.kvm_vcpu* %64)
  %66 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %67 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = call i32 @kvmppc_get_sprg6(%struct.kvm_vcpu* %68)
  %70 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %71 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = call i32 @kvmppc_get_sprg7(%struct.kvm_vcpu* %72)
  %74 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %75 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %93, %2
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %79 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %84, i32 %85)
  %87 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %88 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %76

96:                                               ; preds = %76
  ret i32 0
}

declare dso_local i32 @kvmppc_get_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_cr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_ctr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_lr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_xer(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_srr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_srr1(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_sprg0(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_sprg1(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_sprg2(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_sprg3(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_sprg4(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_sprg5(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_sprg6(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_sprg7(%struct.kvm_vcpu*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
