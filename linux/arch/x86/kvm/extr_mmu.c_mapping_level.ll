; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mapping_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_mapping_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_memory_slot = type { i32 }

@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@PT_DIRECTORY_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32*)* @mapping_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapping_level(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvm_memory_slot*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  store i32 %17, i32* %4, align 4
  br label %71

18:                                               ; preds = %3
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.kvm_memory_slot* @kvm_vcpu_gfn_to_memslot(%struct.kvm_vcpu* %19, i32 %20)
  store %struct.kvm_memory_slot* %21, %struct.kvm_memory_slot** %11, align 8
  %22 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %11, align 8
  %23 = call i32 @memslot_valid_for_gpte(%struct.kvm_memory_slot* %22, i32 1)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  store i32 %33, i32* %4, align 4
  br label %71

34:                                               ; preds = %18
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @host_mapping_level(i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %71

45:                                               ; preds = %34
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (...)*, i32 (...)** %47, align 8
  %49 = call i32 (...) %48()
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @min(i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @PT_DIRECTORY_LEVEL, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %65, %45
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %11, align 8
  %61 = call i64 @__mmu_gfn_lpage_is_disallowed(i32 %58, i32 %59, %struct.kvm_memory_slot* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %68

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %53

68:                                               ; preds = %63, %53
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %43, %32, %16
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.kvm_memory_slot* @kvm_vcpu_gfn_to_memslot(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @memslot_valid_for_gpte(%struct.kvm_memory_slot*, i32) #1

declare dso_local i32 @host_mapping_level(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @__mmu_gfn_lpage_is_disallowed(i32, i32, %struct.kvm_memory_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
