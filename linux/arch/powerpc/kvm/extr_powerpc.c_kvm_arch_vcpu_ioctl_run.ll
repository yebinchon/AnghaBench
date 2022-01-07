; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvm_arch_vcpu_ioctl_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvm_arch_vcpu_ioctl_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i32, i32 }
%struct.kvm_run = type { i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32* }

@EINTR = common dso_local global i32 0, align 4
@RESUME_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_run(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call i32 @vcpu_load(%struct.kvm_vcpu* %9)
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %25 = call i32 @kvmppc_complete_mmio_load(%struct.kvm_vcpu* %23, %struct.kvm_run* %24)
  br label %26

26:                                               ; preds = %22, %15
  br label %95

27:                                               ; preds = %2
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %27
  %34 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %50, %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 32
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %42, i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  br label %94

57:                                               ; preds = %27
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %93

63:                                               ; preds = %57
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %64, i32 3, i32 %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %86, %63
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 9
  br i1 %72, label %73, label %89

73:                                               ; preds = %70
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 4, %75
  %77 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %78 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %74, i32 %76, i32 %84)
  br label %86

86:                                               ; preds = %73
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %70

89:                                               ; preds = %70
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %57
  br label %94

94:                                               ; preds = %93, %53
  br label %95

95:                                               ; preds = %94, %26
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = call i32 @kvm_sigset_activate(%struct.kvm_vcpu* %96)
  %98 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %99 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* @EINTR, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %109

105:                                              ; preds = %95
  %106 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %108 = call i32 @kvmppc_vcpu_run(%struct.kvm_run* %106, %struct.kvm_vcpu* %107)
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %102
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %111 = call i32 @kvm_sigset_deactivate(%struct.kvm_vcpu* %110)
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %113 = call i32 @vcpu_put(%struct.kvm_vcpu* %112)
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_complete_mmio_load(%struct.kvm_vcpu*, %struct.kvm_run*) #1

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_sigset_activate(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_vcpu_run(%struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_sigset_deactivate(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
