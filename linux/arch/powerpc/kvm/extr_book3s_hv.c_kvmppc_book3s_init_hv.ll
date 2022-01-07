; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_book3s_init_hv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_book3s_init_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@tlbie_capable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"KVM-HV: Host does not support TLBIE\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@kvm_ops_hv = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@kvmppc_hv_ops = common dso_local global %struct.TYPE_7__* null, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@SPRN_PVR = common dso_local global i32 0, align 4
@PVR_POWER9 = common dso_local global i32 0, align 4
@no_mixing_hpt_and_radix = common dso_local global i32 0, align 4
@local_paca = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kvmppc_book3s_init_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_book3s_init_hv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @tlbie_capable, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %74

10:                                               ; preds = %0
  %11 = call i32 (...) @kvmppc_core_check_processor_compat_hv()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %74

17:                                               ; preds = %10
  %18 = call i32 (...) @kvmhv_nested_init()
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %74

23:                                               ; preds = %17
  %24 = call i32 (...) @kvm_init_subcore_bitmap()
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* %1, align 4
  br label %74

29:                                               ; preds = %23
  %30 = load i32, i32* @THIS_MODULE, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kvm_ops_hv, i32 0, i32 0), align 4
  store %struct.TYPE_7__* @kvm_ops_hv, %struct.TYPE_7__** @kvmppc_hv_ops, align 8
  %31 = call i32 (...) @init_default_hcalls()
  %32 = call i32 (...) @init_vcore_lists()
  %33 = call i32 (...) @kvmppc_mmu_hv_init()
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %2, align 4
  store i32 %37, i32* %1, align 4
  br label %74

38:                                               ; preds = %29
  %39 = call i64 (...) @kvmppc_radix_possible()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @kvmppc_radix_init()
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %45 = call i64 @cpu_has_feature(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = load i32, i32* @SPRN_PVR, align 4
  %49 = call i32 @mfspr(i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = lshr i32 %50, 16
  %52 = load i32, i32* @PVR_POWER9, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load i32, i32* %3, align 4
  %56 = and i32 %55, 57344
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, 4095
  %61 = icmp ult i32 %60, 514
  br i1 %61, label %70, label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, 57344
  %65 = icmp eq i32 %64, 8192
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, 4095
  %69 = icmp ult i32 %68, 257
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %58
  store i32 1, i32* @no_mixing_hpt_and_radix, align 4
  br label %71

71:                                               ; preds = %70, %66, %62, %47
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32, i32* %2, align 4
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %72, %36, %27, %21, %14, %6
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kvmppc_core_check_processor_compat_hv(...) #1

declare dso_local i32 @kvmhv_nested_init(...) #1

declare dso_local i32 @kvm_init_subcore_bitmap(...) #1

declare dso_local i32 @init_default_hcalls(...) #1

declare dso_local i32 @init_vcore_lists(...) #1

declare dso_local i32 @kvmppc_mmu_hv_init(...) #1

declare dso_local i64 @kvmppc_radix_possible(...) #1

declare dso_local i32 @kvmppc_radix_init(...) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @mfspr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
