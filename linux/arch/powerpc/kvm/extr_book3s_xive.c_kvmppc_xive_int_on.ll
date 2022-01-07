; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_int_on.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_int_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xive* }
%struct.kvmppc_xive = type { i32 }
%struct.kvmppc_xive_src_block = type { i32, %struct.kvmppc_xive_irq_state* }
%struct.kvmppc_xive_irq_state = type { i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"int_on(irq=0x%x)\0A\00", align 1
@MASKED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"int_on on untargetted interrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xive_int_on(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_xive*, align 8
  %7 = alloca %struct.kvmppc_xive_src_block*, align 8
  %8 = alloca %struct.kvmppc_xive_irq_state*, align 8
  %9 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.kvm*, %struct.kvm** %4, align 8
  %11 = getelementptr inbounds %struct.kvm, %struct.kvm* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %12, align 8
  store %struct.kvmppc_xive* %13, %struct.kvmppc_xive** %6, align 8
  %14 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %15 = icmp ne %struct.kvmppc_xive* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.kvmppc_xive_src_block* @kvmppc_xive_find_source(%struct.kvmppc_xive* %20, i32 %21, i64* %9)
  store %struct.kvmppc_xive_src_block* %22, %struct.kvmppc_xive_src_block** %7, align 8
  %23 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %7, align 8
  %24 = icmp ne %struct.kvmppc_xive_src_block* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %66

28:                                               ; preds = %19
  %29 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %7, align 8
  %30 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %29, i32 0, i32 1
  %31 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %31, i64 %32
  store %struct.kvmppc_xive_irq_state* %33, %struct.kvmppc_xive_irq_state** %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %8, align 8
  %37 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MASKED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %66

45:                                               ; preds = %28
  %46 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %8, align 8
  %47 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MASKED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %66

52:                                               ; preds = %45
  %53 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %7, align 8
  %54 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %8, align 8
  %55 = call i32 @xive_lock_for_unmask(%struct.kvmppc_xive_src_block* %53, %struct.kvmppc_xive_irq_state* %54)
  %56 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %57 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %7, align 8
  %58 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %8, align 8
  %59 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %8, align 8
  %60 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @xive_finish_unmask(%struct.kvmppc_xive* %56, %struct.kvmppc_xive_src_block* %57, %struct.kvmppc_xive_irq_state* %58, i64 %61)
  %63 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %7, align 8
  %64 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %63, i32 0, i32 0
  %65 = call i32 @arch_spin_unlock(i32* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %52, %51, %41, %25, %16
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.kvmppc_xive_src_block* @kvmppc_xive_find_source(%struct.kvmppc_xive*, i32, i64*) #1

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local i32 @xive_lock_for_unmask(%struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_irq_state*) #1

declare dso_local i32 @xive_finish_unmask(%struct.kvmppc_xive*, %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_irq_state*, i64) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
