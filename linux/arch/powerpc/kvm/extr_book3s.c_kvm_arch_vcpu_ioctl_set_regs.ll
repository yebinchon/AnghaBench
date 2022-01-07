; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvm_arch_vcpu_ioctl_set_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvm_arch_vcpu_ioctl_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_regs = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_regs(%struct.kvm_vcpu* %0, %struct.kvm_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_regs* %1, %struct.kvm_regs** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %7, i32 0, i32 16
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kvmppc_set_pc(%struct.kvm_vcpu* %6, i32 %9)
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %12, i32 0, i32 15
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @kvmppc_set_cr(%struct.kvm_vcpu* %11, i32 %14)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %17, i32 0, i32 14
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kvmppc_set_ctr(%struct.kvm_vcpu* %16, i32 %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @kvmppc_set_lr(%struct.kvm_vcpu* %21, i32 %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kvmppc_set_xer(%struct.kvm_vcpu* %26, i32 %29)
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @kvmppc_set_msr(%struct.kvm_vcpu* %31, i32 %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @kvmppc_set_srr0(%struct.kvm_vcpu* %36, i32 %39)
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @kvmppc_set_srr1(%struct.kvm_vcpu* %41, i32 %44)
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @kvmppc_set_sprg0(%struct.kvm_vcpu* %46, i32 %49)
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %53 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @kvmppc_set_sprg1(%struct.kvm_vcpu* %51, i32 %54)
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @kvmppc_set_sprg2(%struct.kvm_vcpu* %56, i32 %59)
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @kvmppc_set_sprg3(%struct.kvm_vcpu* %61, i32 %64)
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %68 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @kvmppc_set_sprg4(%struct.kvm_vcpu* %66, i32 %69)
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %73 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @kvmppc_set_sprg5(%struct.kvm_vcpu* %71, i32 %74)
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %78 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @kvmppc_set_sprg6(%struct.kvm_vcpu* %76, i32 %79)
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %82 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %83 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @kvmppc_set_sprg7(%struct.kvm_vcpu* %81, i32 %84)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %104, %2
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %89 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @ARRAY_SIZE(i32* %90)
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %86
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %97 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %94, i32 %95, i32 %102)
  br label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %86

107:                                              ; preds = %86
  ret i32 0
}

declare dso_local i32 @kvmppc_set_pc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_cr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_ctr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_lr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_xer(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_msr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_srr0(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_srr1(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_sprg0(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_sprg1(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_sprg2(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_sprg3(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_sprg4(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_sprg5(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_sprg6(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_sprg7(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
