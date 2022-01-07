; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_alloc_reset_hpt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvmppc_alloc_reset_hpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.kvm_hpt_info = type { i32 }

@EBUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_alloc_reset_hpt(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_hpt_info, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @EBUSY, align 8
  %8 = sub nsw i64 0, %7
  store i64 %8, i64* %5, align 8
  %9 = load %struct.kvm*, %struct.kvm** %3, align 8
  %10 = getelementptr inbounds %struct.kvm, %struct.kvm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.kvm*, %struct.kvm** %3, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.kvm*, %struct.kvm** %3, align 8
  %20 = getelementptr inbounds %struct.kvm, %struct.kvm* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = call i32 (...) @smp_mb()
  %23 = load %struct.kvm*, %struct.kvm** %3, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.kvm*, %struct.kvm** %3, align 8
  %30 = getelementptr inbounds %struct.kvm, %struct.kvm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %88

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.kvm*, %struct.kvm** %3, align 8
  %35 = call i64 @kvm_is_radix(%struct.kvm* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.kvm*, %struct.kvm** %3, align 8
  %39 = call i64 @kvmppc_switch_mmu_to_hpt(%struct.kvm* %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %88

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %33
  %45 = load %struct.kvm*, %struct.kvm** %3, align 8
  %46 = getelementptr inbounds %struct.kvm, %struct.kvm* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  %53 = load %struct.kvm*, %struct.kvm** %3, align 8
  %54 = getelementptr inbounds %struct.kvm, %struct.kvm* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 1, %60
  %62 = call i32 @memset(i8* %58, i32 0, i64 %61)
  %63 = load %struct.kvm*, %struct.kvm** %3, align 8
  %64 = call i32 @kvmppc_rmap_reset(%struct.kvm* %63)
  store i64 0, i64* %5, align 8
  br label %88

65:                                               ; preds = %44
  %66 = load %struct.kvm*, %struct.kvm** %3, align 8
  %67 = getelementptr inbounds %struct.kvm, %struct.kvm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.kvm*, %struct.kvm** %3, align 8
  %74 = getelementptr inbounds %struct.kvm, %struct.kvm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = call i32 @kvmppc_free_hpt(%struct.TYPE_4__* %75)
  %77 = load %struct.kvm*, %struct.kvm** %3, align 8
  %78 = call i32 @kvmppc_rmap_reset(%struct.kvm* %77)
  br label %79

79:                                               ; preds = %72, %65
  %80 = load i32, i32* %4, align 4
  %81 = call i64 @kvmppc_allocate_hpt(%struct.kvm_hpt_info* %6, i32 %80)
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %5, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %88

85:                                               ; preds = %79
  %86 = load %struct.kvm*, %struct.kvm** %3, align 8
  %87 = call i32 @kvmppc_set_hpt(%struct.kvm* %86, %struct.kvm_hpt_info* %6)
  br label %88

88:                                               ; preds = %85, %84, %52, %42, %28
  %89 = load i64, i64* %5, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.kvm*, %struct.kvm** %3, align 8
  %93 = getelementptr inbounds %struct.kvm, %struct.kvm* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = call i32 @cpumask_setall(i32* %94)
  br label %96

96:                                               ; preds = %91, %88
  %97 = load %struct.kvm*, %struct.kvm** %3, align 8
  %98 = getelementptr inbounds %struct.kvm, %struct.kvm* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i64, i64* %5, align 8
  ret i64 %101
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i64 @kvmppc_switch_mmu_to_hpt(%struct.kvm*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @kvmppc_rmap_reset(%struct.kvm*) #1

declare dso_local i32 @kvmppc_free_hpt(%struct.TYPE_4__*) #1

declare dso_local i64 @kvmppc_allocate_hpt(%struct.kvm_hpt_info*, i32) #1

declare dso_local i32 @kvmppc_set_hpt(%struct.kvm*, %struct.kvm_hpt_info*) #1

declare dso_local i32 @cpumask_setall(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
