; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_watchdog_func.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_watchdog_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.timer_list = type { i32 }

@arch = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@TSR_ENW = common dso_local global i32 0, align 4
@TSR_WIS = common dso_local global i32 0, align 4
@KVM_REQ_PENDING_TIMER = common dso_local global i32 0, align 4
@TCR_WRC_MASK = common dso_local global i32 0, align 4
@KVM_REQ_WATCHDOG = common dso_local global i32 0, align 4
@vcpu = common dso_local global %struct.kvm_vcpu* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_watchdog_func(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = ptrtoint %struct.kvm_vcpu* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @arch, i32 0, i32 0), align 4
  %11 = call %struct.kvm_vcpu* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.kvm_vcpu* %11, %struct.kvm_vcpu** %3, align 8
  br label %12

12:                                               ; preds = %37, %1
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TSR_ENW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TSR_WIS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  br label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TSR_WIS, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %26
  br label %36

32:                                               ; preds = %12
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @TSR_ENW, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %31
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @cmpxchg(i32* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %12, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @TSR_WIS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = call i32 (...) @smp_wmb()
  %53 = load i32, i32* @KVM_REQ_PENDING_TIMER, align 4
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = call i32 @kvm_make_request(i32 %53, %struct.kvm_vcpu* %54)
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = call i32 @kvm_vcpu_kick(%struct.kvm_vcpu* %56)
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TCR_WRC_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = call i32 (...) @smp_wmb()
  %77 = load i32, i32* @KVM_REQ_WATCHDOG, align 4
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %79 = call i32 @kvm_make_request(i32 %77, %struct.kvm_vcpu* %78)
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %81 = call i32 @kvm_vcpu_kick(%struct.kvm_vcpu* %80)
  br label %82

82:                                               ; preds = %75, %69, %61, %58
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %87 = call i32 @arm_next_watchdog(%struct.kvm_vcpu* %86)
  br label %88

88:                                               ; preds = %85, %82
  ret void
}

declare dso_local %struct.kvm_vcpu* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_vcpu_kick(%struct.kvm_vcpu*) #1

declare dso_local i32 @arm_next_watchdog(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
