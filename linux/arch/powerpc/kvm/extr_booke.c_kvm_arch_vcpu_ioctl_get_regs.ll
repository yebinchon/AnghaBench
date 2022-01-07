; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvm_arch_vcpu_ioctl_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvm_arch_vcpu_ioctl_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.kvm_regs = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_get_regs(%struct.kvm_vcpu* %0, %struct.kvm_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_regs* %1, %struct.kvm_regs** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call i32 @vcpu_load(%struct.kvm_vcpu* %6)
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %13, i32 0, i32 17
  store i32 %12, i32* %14, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = call i32 @kvmppc_get_cr(%struct.kvm_vcpu* %15)
  %17 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %17, i32 0, i32 16
  store i32 %16, i32* %18, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %24, i32 0, i32 15
  store i32 %23, i32* %25, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %31, i32 0, i32 14
  store i32 %30, i32* %32, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = call i32 @kvmppc_get_xer(%struct.kvm_vcpu* %33)
  %35 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %35, i32 0, i32 13
  store i32 %34, i32* %36, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %44 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 4
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = call i32 @kvmppc_get_srr0(%struct.kvm_vcpu* %45)
  %47 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %47, i32 0, i32 11
  store i32 %46, i32* %48, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = call i32 @kvmppc_get_srr1(%struct.kvm_vcpu* %49)
  %51 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 4
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = call i32 @kvmppc_get_sprg0(%struct.kvm_vcpu* %59)
  %61 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %62 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 4
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = call i32 @kvmppc_get_sprg1(%struct.kvm_vcpu* %63)
  %65 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = call i32 @kvmppc_get_sprg2(%struct.kvm_vcpu* %67)
  %69 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %70 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = call i32 @kvmppc_get_sprg3(%struct.kvm_vcpu* %71)
  %73 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %74 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %76 = call i32 @kvmppc_get_sprg4(%struct.kvm_vcpu* %75)
  %77 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %78 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = call i32 @kvmppc_get_sprg5(%struct.kvm_vcpu* %79)
  %81 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %82 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %84 = call i32 @kvmppc_get_sprg6(%struct.kvm_vcpu* %83)
  %85 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %86 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %88 = call i32 @kvmppc_get_sprg7(%struct.kvm_vcpu* %87)
  %89 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %90 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %108, %2
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %94 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @ARRAY_SIZE(i32* %95)
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %99, i32 %100)
  %102 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %103 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %98
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %91

111:                                              ; preds = %91
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %113 = call i32 @vcpu_put(%struct.kvm_vcpu* %112)
  ret i32 0
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_cr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_xer(%struct.kvm_vcpu*) #1

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

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
