; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_reexecute_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_reexecute_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@EMULTYPE_ALLOW_RETRY = common dso_local global i32 0, align 4
@UNMAPPED_GVA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32, i32)* @reexecute_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reexecute_instruction(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @EMULTYPE_ALLOW_RETRY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %101

19:                                               ; preds = %4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %21 = call i32 @is_guest_mode(%struct.kvm_vcpu* %20)
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %101

25:                                               ; preds = %19
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %25
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @kvm_mmu_gva_to_gpa_write(%struct.kvm_vcpu* %34, i64 %35, i32* null)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @UNMAPPED_GVA, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %101

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @gpa_to_gfn(i64 %46)
  %48 = call i32 @gfn_to_pfn(%struct.TYPE_9__* %45, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @is_error_noslot_pfn(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %101

53:                                               ; preds = %42
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @kvm_release_pfn_clean(i32 %54)
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %53
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %12, align 4
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %63
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = call i32 @gpa_to_gfn(i64 %86)
  %88 = call i32 @kvm_mmu_unprotect_page(%struct.TYPE_9__* %85, i32 %87)
  br label %89

89:                                               ; preds = %82, %63
  store i32 1, i32* %5, align 4
  br label %101

90:                                               ; preds = %53
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = call i32 @gpa_to_gfn(i64 %94)
  %96 = call i32 @kvm_mmu_unprotect_page(%struct.TYPE_9__* %93, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %90, %89, %52, %40, %24, %18
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_mmu_gva_to_gpa_write(%struct.kvm_vcpu*, i64, i32*) #1

declare dso_local i32 @gfn_to_pfn(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @gpa_to_gfn(i64) #1

declare dso_local i64 @is_error_noslot_pfn(i32) #1

declare dso_local i32 @kvm_release_pfn_clean(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_mmu_unprotect_page(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
