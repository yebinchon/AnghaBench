; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_handle_external_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_intercept.c_handle_external_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.kvm_s390_irq = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@__LC_EXT_NEW_PSW = common dso_local global i32 0, align 4
@PSW_MASK_EXT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@KVM_S390_INT_CLOCK_COMP = common dso_local global i32 0, align 4
@KVM_S390_INT_CPU_TIMER = common dso_local global i32 0, align 4
@KVM_S390_INT_EXTERNAL_CALL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_external_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_external_interrupt(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_s390_irq, align 4
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = load i32, i32* @__LC_EXT_NEW_PSW, align 4
  %21 = call i32 @read_guest_lc(%struct.kvm_vcpu* %19, i32 %20, %struct.TYPE_13__* %6, i32 4)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %76

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 130
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 129
  br i1 %31, label %32, label %41

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PSW_MASK_EXT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %76

41:                                               ; preds = %32, %29
  %42 = load i32, i32* %4, align 4
  switch i32 %42, label %70 [
    i32 130, label %43
    i32 129, label %46
    i32 128, label %49
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* @KVM_S390_INT_CLOCK_COMP, align 4
  %45 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %5, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  br label %73

46:                                               ; preds = %41
  %47 = load i32, i32* @KVM_S390_INT_CPU_TIMER, align 4
  %48 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %5, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  br label %73

49:                                               ; preds = %41
  %50 = load i32, i32* @KVM_S390_INT_EXTERNAL_CALL, align 4
  %51 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %5, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.kvm_s390_irq, %struct.kvm_s390_irq* %5, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = call i32 @kvm_s390_inject_vcpu(%struct.kvm_vcpu* %61, %struct.kvm_s390_irq* %5)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %76

68:                                               ; preds = %49
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %76

70:                                               ; preds = %41
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %76

73:                                               ; preds = %46, %43
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = call i32 @kvm_s390_inject_vcpu(%struct.kvm_vcpu* %74, %struct.kvm_s390_irq* %5)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %70, %68, %67, %38, %24
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @read_guest_lc(%struct.kvm_vcpu*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @kvm_s390_inject_vcpu(%struct.kvm_vcpu*, %struct.kvm_s390_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
