; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_set_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xive* }
%struct.kvmppc_xive = type { i32 }
%struct.kvmppc_xive_src_block = type { %struct.kvmppc_xive_irq_state* }
%struct.kvmppc_xive_irq_state = type { i32, i32, i64, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KVM_INTERRUPT_SET_LEVEL = common dso_local global i32 0, align 4
@KVM_INTERRUPT_UNSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xive_set_irq(%struct.kvm* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvmppc_xive*, align 8
  %13 = alloca %struct.kvmppc_xive_src_block*, align 8
  %14 = alloca %struct.kvmppc_xive_irq_state*, align 8
  %15 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.kvm*, %struct.kvm** %7, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %18, align 8
  store %struct.kvmppc_xive* %19, %struct.kvmppc_xive** %12, align 8
  %20 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %12, align 8
  %21 = icmp ne %struct.kvmppc_xive* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %85

25:                                               ; preds = %5
  %26 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.kvmppc_xive_src_block* @kvmppc_xive_find_source(%struct.kvmppc_xive* %26, i32 %27, i64* %15)
  store %struct.kvmppc_xive_src_block* %28, %struct.kvmppc_xive_src_block** %13, align 8
  %29 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %13, align 8
  %30 = icmp ne %struct.kvmppc_xive_src_block* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %85

34:                                               ; preds = %25
  %35 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %13, align 8
  %36 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %35, i32 0, i32 0
  %37 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %36, align 8
  %38 = load i64, i64* %15, align 8
  %39 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %37, i64 %38
  store %struct.kvmppc_xive_irq_state* %39, %struct.kvmppc_xive_irq_state** %14, align 8
  %40 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %14, align 8
  %41 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %85

47:                                               ; preds = %34
  %48 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %14, align 8
  %49 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %85

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %14, align 8
  %60 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @KVM_INTERRUPT_SET_LEVEL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %58
  %68 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %14, align 8
  %69 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %81

70:                                               ; preds = %63
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @KVM_INTERRUPT_UNSET, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %70
  %78 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %14, align 8
  %79 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  store i32 0, i32* %6, align 4
  br label %85

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %67
  %82 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %14, align 8
  %83 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %82, i32 0, i32 1
  %84 = call i32 @xive_irq_trigger(i32* %83)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %77, %52, %44, %31, %22
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.kvmppc_xive_src_block* @kvmppc_xive_find_source(%struct.kvmppc_xive*, i32, i64*) #1

declare dso_local i32 @xive_irq_trigger(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
