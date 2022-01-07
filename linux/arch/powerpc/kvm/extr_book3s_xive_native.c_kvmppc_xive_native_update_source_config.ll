; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_update_source_config.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_update_source_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xive = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.kvmppc_xive_src_block = type { i32 }
%struct.kvmppc_xive_irq_state = type { i64, i8*, i64 }

@.str = private unnamed_addr constant [69 x i8] c"new_act_prio=%d new_act_server=%d mask=%d act_server=%d act_prio=%d\0A\00", align 1
@MASKED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_xive*, %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_irq_state*, i64, i8*, i32, i64)* @kvmppc_xive_native_update_source_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_xive_native_update_source_config(%struct.kvmppc_xive* %0, %struct.kvmppc_xive_src_block* %1, %struct.kvmppc_xive_irq_state* %2, i64 %3, i8* %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.kvmppc_xive*, align 8
  %9 = alloca %struct.kvmppc_xive_src_block*, align 8
  %10 = alloca %struct.kvmppc_xive_irq_state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.kvm*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.kvmppc_xive* %0, %struct.kvmppc_xive** %8, align 8
  store %struct.kvmppc_xive_src_block* %1, %struct.kvmppc_xive_src_block** %9, align 8
  store %struct.kvmppc_xive_irq_state* %2, %struct.kvmppc_xive_irq_state** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %18 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %8, align 8
  %19 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %18, i32 0, i32 0
  %20 = load %struct.kvm*, %struct.kvm** %19, align 8
  store %struct.kvm* %20, %struct.kvm** %15, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %9, align 8
  %22 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %21, i32 0, i32 0
  %23 = call i32 @arch_spin_lock(i32* %22)
  %24 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %25 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %7
  %30 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %31 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %37 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %97

42:                                               ; preds = %35, %29, %7
  %43 = load i8*, i8** %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %47 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %50 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @pr_devel(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* %43, i64 %44, i32 %45, i64 %48, i8* %51)
  %53 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %54 = call i32 @kvmppc_xive_select_irq(%struct.kvmppc_xive_irq_state* %53, i64* %16, i32* null)
  %55 = load i8*, i8** %12, align 8
  %56 = load i8*, i8** @MASKED, align 8
  %57 = icmp ne i8* %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %42
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %58
  %62 = load %struct.kvm*, %struct.kvm** %15, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @kvmppc_xive_select_target(%struct.kvm* %62, i64* %11, i8* %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %97

68:                                               ; preds = %61
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %71 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %74 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %77 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %8, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @kvmppc_xive_vp(%struct.kvmppc_xive* %79, i64 %80)
  %82 = load i8*, i8** %12, align 8
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @xive_native_configure_irq(i64 %78, i32 %81, i8* %82, i64 %83)
  store i32 %84, i32* %17, align 4
  br label %96

85:                                               ; preds = %58, %42
  %86 = load i8*, i8** @MASKED, align 8
  %87 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %88 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %90 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.kvmppc_xive_irq_state*, %struct.kvmppc_xive_irq_state** %10, align 8
  %92 = getelementptr inbounds %struct.kvmppc_xive_irq_state, %struct.kvmppc_xive_irq_state* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i8*, i8** @MASKED, align 8
  %95 = call i32 @xive_native_configure_irq(i64 %93, i32 0, i8* %94, i64 0)
  store i32 %95, i32* %17, align 4
  br label %96

96:                                               ; preds = %85, %68
  br label %97

97:                                               ; preds = %96, %67, %41
  %98 = load %struct.kvmppc_xive_src_block*, %struct.kvmppc_xive_src_block** %9, align 8
  %99 = getelementptr inbounds %struct.kvmppc_xive_src_block, %struct.kvmppc_xive_src_block* %98, i32 0, i32 0
  %100 = call i32 @arch_spin_unlock(i32* %99)
  %101 = load i32, i32* %17, align 4
  ret i32 %101
}

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @pr_devel(i8*, i8*, i64, i32, i64, i8*) #1

declare dso_local i32 @kvmppc_xive_select_irq(%struct.kvmppc_xive_irq_state*, i64*, i32*) #1

declare dso_local i32 @kvmppc_xive_select_target(%struct.kvm*, i64*, i8*) #1

declare dso_local i32 @xive_native_configure_irq(i64, i32, i8*, i64) #1

declare dso_local i32 @kvmppc_xive_vp(%struct.kvmppc_xive*, i64) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
