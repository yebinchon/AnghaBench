; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_retry_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_retry_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i64 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EMULTYPE_ALLOW_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, i64, i32)* @retry_instruction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retry_instruction(%struct.x86_emulate_ctxt* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.x86_emulate_ctxt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %13 = call %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt* %12)
  store %struct.kvm_vcpu* %13, %struct.kvm_vcpu** %8, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @EMULTYPE_ALLOW_RETRY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

34:                                               ; preds = %3
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %36 = call i32 @is_guest_mode(%struct.kvm_vcpu* %35)
  %37 = call i64 @WARN_ON_ONCE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %85

40:                                               ; preds = %34
  %41 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %42 = call i64 @x86_page_table_writing_insn(%struct.x86_emulate_ctxt* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %85

45:                                               ; preds = %40
  %46 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %47 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %6, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %85

56:                                               ; preds = %51, %45
  %57 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %5, align 8
  %58 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %56
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @kvm_mmu_gva_to_gpa_write(%struct.kvm_vcpu* %75, i64 %76, i32* null)
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %74, %56
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @gpa_to_gfn(i64 %82)
  %84 = call i32 @kvm_mmu_unprotect_page(i32 %81, i32 %83)
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %78, %55, %44, %39, %33
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @x86_page_table_writing_insn(%struct.x86_emulate_ctxt*) #1

declare dso_local i64 @kvm_mmu_gva_to_gpa_write(%struct.kvm_vcpu*, i64, i32*) #1

declare dso_local i32 @kvm_mmu_unprotect_page(i32, i32) #1

declare dso_local i32 @gpa_to_gfn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
