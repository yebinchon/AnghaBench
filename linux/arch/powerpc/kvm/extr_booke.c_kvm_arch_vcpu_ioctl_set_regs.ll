; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvm_arch_vcpu_ioctl_set_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvm_arch_vcpu_ioctl_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.kvm_regs = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_regs(%struct.kvm_vcpu* %0, %struct.kvm_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_regs* %1, %struct.kvm_regs** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call i32 @vcpu_load(%struct.kvm_vcpu* %6)
  %8 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %8, i32 0, i32 17
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 %10, i32* %14, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %16, i32 0, i32 16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kvmppc_set_cr(%struct.kvm_vcpu* %15, i32 %18)
  %20 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %20, i32 0, i32 15
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %27, i32 0, i32 14
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @kvmppc_set_xer(%struct.kvm_vcpu* %34, i32 %37)
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %41 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kvmppc_set_msr(%struct.kvm_vcpu* %39, i32 %42)
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kvmppc_set_srr0(%struct.kvm_vcpu* %44, i32 %47)
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %51 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kvmppc_set_srr1(%struct.kvm_vcpu* %49, i32 %52)
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %56 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @kvmppc_set_pid(%struct.kvm_vcpu* %54, i32 %57)
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %61 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @kvmppc_set_sprg0(%struct.kvm_vcpu* %59, i32 %62)
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @kvmppc_set_sprg1(%struct.kvm_vcpu* %64, i32 %67)
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %71 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @kvmppc_set_sprg2(%struct.kvm_vcpu* %69, i32 %72)
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %76 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @kvmppc_set_sprg3(%struct.kvm_vcpu* %74, i32 %77)
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %81 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @kvmppc_set_sprg4(%struct.kvm_vcpu* %79, i32 %82)
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %85 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %86 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @kvmppc_set_sprg5(%struct.kvm_vcpu* %84, i32 %87)
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %91 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @kvmppc_set_sprg6(%struct.kvm_vcpu* %89, i32 %92)
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %96 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @kvmppc_set_sprg7(%struct.kvm_vcpu* %94, i32 %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %117, %2
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %102 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @ARRAY_SIZE(i32* %103)
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %99
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %110 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %107, i32 %108, i32 %115)
  br label %117

117:                                              ; preds = %106
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %99

120:                                              ; preds = %99
  %121 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %122 = call i32 @vcpu_put(%struct.kvm_vcpu* %121)
  ret i32 0
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_cr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_xer(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_msr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_srr0(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_srr1(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_pid(%struct.kvm_vcpu*, i32) #1

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

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
