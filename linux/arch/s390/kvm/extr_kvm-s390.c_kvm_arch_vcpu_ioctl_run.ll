; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_ioctl_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_ioctl_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_run = type { i32, i32, i32, i64 }

@EINTR = common dso_local global i32 0, align 4
@KVM_SYNC_S390_VALID_FIELDS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"can't run stopped vcpu %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@KVM_EXIT_INTR = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_run(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %5, align 8
  %7 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %8 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINTR, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %119

14:                                               ; preds = %2
  %15 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @KVM_SYNC_S390_VALID_FIELDS, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KVM_SYNC_S390_VALID_FIELDS, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22, %14
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %119

33:                                               ; preds = %22
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = call i32 @vcpu_load(%struct.kvm_vcpu* %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = call i64 @guestdbg_exit_pending(%struct.kvm_vcpu* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %41 = call i32 @kvm_s390_prepare_debug_exit(%struct.kvm_vcpu* %40)
  store i32 0, i32* %6, align 4
  br label %115

42:                                               ; preds = %33
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %44 = call i32 @kvm_sigset_activate(%struct.kvm_vcpu* %43)
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kvm_s390_user_cpu_state_ctrl(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %52 = call i32 @kvm_s390_vcpu_start(%struct.kvm_vcpu* %51)
  br label %65

53:                                               ; preds = %42
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %55 = call i64 @is_vcpu_stopped(%struct.kvm_vcpu* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %115

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %50
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %67 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %68 = call i32 @sync_regs(%struct.kvm_vcpu* %66, %struct.kvm_run* %67)
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %70 = call i32 @enable_cpu_timer_accounting(%struct.kvm_vcpu* %69)
  %71 = call i32 (...) @might_fault()
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %73 = call i32 @__vcpu_run(%struct.kvm_vcpu* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @current, align 4
  %75 = call i64 @signal_pending(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %65
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @KVM_EXIT_INTR, align 4
  %82 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %83 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @EINTR, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %80, %77, %65
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %88 = call i64 @guestdbg_exit_pending(%struct.kvm_vcpu* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %95 = call i32 @kvm_s390_prepare_debug_exit(%struct.kvm_vcpu* %94)
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %90, %86
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @EREMOTE, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %96
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %104 = call i32 @disable_cpu_timer_accounting(%struct.kvm_vcpu* %103)
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %106 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %107 = call i32 @store_regs(%struct.kvm_vcpu* %105, %struct.kvm_run* %106)
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %109 = call i32 @kvm_sigset_deactivate(%struct.kvm_vcpu* %108)
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %102, %57, %39
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %117 = call i32 @vcpu_put(%struct.kvm_vcpu* %116)
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %30, %11
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i64 @guestdbg_exit_pending(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_prepare_debug_exit(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_sigset_activate(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_s390_user_cpu_state_ctrl(i32) #1

declare dso_local i32 @kvm_s390_vcpu_start(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_vcpu_stopped(%struct.kvm_vcpu*) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32) #1

declare dso_local i32 @sync_regs(%struct.kvm_vcpu*, %struct.kvm_run*) #1

declare dso_local i32 @enable_cpu_timer_accounting(%struct.kvm_vcpu*) #1

declare dso_local i32 @might_fault(...) #1

declare dso_local i32 @__vcpu_run(%struct.kvm_vcpu*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @disable_cpu_timer_accounting(%struct.kvm_vcpu*) #1

declare dso_local i32 @store_regs(%struct.kvm_vcpu*, %struct.kvm_run*) #1

declare dso_local i32 @kvm_sigset_deactivate(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
