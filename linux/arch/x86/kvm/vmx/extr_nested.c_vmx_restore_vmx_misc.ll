; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_restore_vmx_misc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_vmx_restore_vmx_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PIN_BASED_VMX_PREEMPTION_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*, i32)* @vmx_restore_vmx_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_restore_vmx_misc(%struct.vcpu_vmx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @BIT_ULL(i32 5)
  %9 = call i32 @GENMASK_ULL(i32 8, i32 6)
  %10 = or i32 %8, %9
  %11 = call i32 @BIT_ULL(i32 14)
  %12 = or i32 %10, %11
  %13 = call i32 @BIT_ULL(i32 15)
  %14 = or i32 %12, %13
  %15 = call i32 @BIT_ULL(i32 28)
  %16 = or i32 %14, %15
  %17 = call i32 @BIT_ULL(i32 29)
  %18 = or i32 %16, %17
  %19 = call i32 @BIT_ULL(i32 30)
  %20 = or i32 %18, %19
  %21 = call i32 @GENMASK_ULL(i32 13, i32 9)
  %22 = or i32 %20, %21
  %23 = call i32 @BIT_ULL(i32 31)
  %24 = or i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %26 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vmx_control_msr(i32 %29, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @is_bitwise_subset(i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %101

44:                                               ; preds = %2
  %45 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %46 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PIN_BASED_VMX_PREEMPTION_TIMER, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @vmx_misc_preemption_timer_rate(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @vmx_misc_preemption_timer_rate(i32 %56)
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %101

62:                                               ; preds = %53, %44
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @vmx_misc_cr3_count(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @vmx_misc_cr3_count(i32 %65)
  %67 = icmp sgt i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %101

71:                                               ; preds = %62
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @vmx_misc_max_msr(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @vmx_misc_max_msr(i32 %74)
  %76 = icmp sgt i64 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %101

80:                                               ; preds = %71
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @vmx_misc_mseg_revid(i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @vmx_misc_mseg_revid(i32 %83)
  %85 = icmp ne i64 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %101

89:                                               ; preds = %80
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %92 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = ashr i32 %95, 32
  %97 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %98 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 4
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %89, %86, %77, %68, %59, %41
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @vmx_control_msr(i32, i32) #1

declare dso_local i32 @is_bitwise_subset(i32, i32, i32) #1

declare dso_local i64 @vmx_misc_preemption_timer_rate(i32) #1

declare dso_local i64 @vmx_misc_cr3_count(i32) #1

declare dso_local i64 @vmx_misc_max_msr(i32) #1

declare dso_local i64 @vmx_misc_mseg_revid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
