; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_setup_async_pf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_setup_async_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.kvm_arch_async_pf = type { i32 }

@KVM_S390_PFAULT_TOKEN_INVALID = common dso_local global i64 0, align 8
@CR0_SERVICE_SIGNAL_SUBMASK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_12__* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_arch_setup_async_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_arch_setup_async_pf(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_arch_async_pf, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @KVM_S390_PFAULT_TOKEN_INVALID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

14:                                               ; preds = %1
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %21, %25
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %102

33:                                               ; preds = %14
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = call i64 @psw_extint_disabled(%struct.kvm_vcpu* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %102

38:                                               ; preds = %33
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = call i64 @kvm_s390_vcpu_has_irq(%struct.kvm_vcpu* %39, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %102

43:                                               ; preds = %38
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CR0_SERVICE_SIGNAL_SUBMASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %102

56:                                               ; preds = %43
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %102

65:                                               ; preds = %56
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @gpa_to_gfn(i32 %72)
  %74 = call i32 @gfn_to_hva(i32 %68, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PAGE_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.kvm_arch_async_pf, %struct.kvm_arch_async_pf* %5, i32 0, i32 0
  %90 = call i64 @read_guest_real(%struct.kvm_vcpu* %84, i64 %88, i32* %89, i32 8)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %102

93:                                               ; preds = %65
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @kvm_setup_async_pf(%struct.kvm_vcpu* %94, i32 %98, i32 %99, %struct.kvm_arch_async_pf* %5)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %93, %92, %64, %55, %42, %37, %32, %13
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @psw_extint_disabled(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_s390_vcpu_has_irq(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @gfn_to_hva(i32, i32) #1

declare dso_local i32 @gpa_to_gfn(i32) #1

declare dso_local i64 @read_guest_real(%struct.kvm_vcpu*, i64, i32*, i32) #1

declare dso_local i32 @kvm_setup_async_pf(%struct.kvm_vcpu*, i32, i32, %struct.kvm_arch_async_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
