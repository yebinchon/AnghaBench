; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.h_permission_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.h_permission_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_mmu = type { i32*, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@X86_EFLAGS_AC = common dso_local global i64 0, align 8
@X86_EFLAGS_AC_BIT = common dso_local global i32 0, align 4
@PFERR_RSVD_BIT = common dso_local global i32 0, align 4
@PFERR_PRESENT_MASK = common dso_local global i32 0, align 4
@PFERR_PK_MASK = common dso_local global i32 0, align 4
@PFERR_RSVD_MASK = common dso_local global i32 0, align 4
@PT_USER_MASK = common dso_local global i32 0, align 4
@PT_USER_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_mmu*, i32, i32, i32)* @permission_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @permission_fault(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_mmu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %20, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %23 = call i32 %21(%struct.kvm_vcpu* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %25, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %28 = call i64 %26(%struct.kvm_vcpu* %27)
  store i64 %28, i64* %12, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %29, 3
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @X86_EFLAGS_AC, align 8
  %34 = and i64 %32, %33
  %35 = and i64 %31, %34
  store i64 %35, i64* %13, align 8
  %36 = load i32, i32* %10, align 4
  %37 = lshr i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %13, align 8
  %40 = load i32, i32* @X86_EFLAGS_AC_BIT, align 4
  %41 = load i32, i32* @PFERR_RSVD_BIT, align 4
  %42 = sub nsw i32 %40, %41
  %43 = add nsw i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = lshr i64 %39, %44
  %46 = add i64 %38, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load %struct.kvm_mmu*, %struct.kvm_mmu** %7, align 8
  %49 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = lshr i32 %54, %55
  %57 = and i32 %56, 1
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* @PFERR_PRESENT_MASK, align 4
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @PFERR_PK_MASK, align 4
  %61 = load i32, i32* @PFERR_RSVD_MASK, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %59, %62
  %64 = call i32 @WARN_ON(i32 %63)
  %65 = load %struct.kvm_mmu*, %struct.kvm_mmu** %7, align 8
  %66 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %107

70:                                               ; preds = %5
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = mul i32 %75, 2
  %77 = lshr i32 %74, %76
  %78 = and i32 %77, 3
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, -2
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @PT_USER_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @PFERR_RSVD_BIT, align 4
  %85 = load i32, i32* @PT_USER_SHIFT, align 4
  %86 = sub nsw i32 %84, %85
  %87 = shl i32 %83, %86
  %88 = add i32 %80, %87
  store i32 %88, i32* %18, align 4
  %89 = load %struct.kvm_mmu*, %struct.kvm_mmu** %7, align 8
  %90 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %18, align 4
  %93 = lshr i32 %91, %92
  %94 = load i32, i32* %17, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = sub i32 0, %96
  %98 = load i32, i32* @PFERR_PK_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* %16, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %15, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %70, %5
  %108 = load i32, i32* %15, align 4
  %109 = sub i32 0, %108
  %110 = load i32, i32* %16, align 4
  %111 = and i32 %109, %110
  ret i32 %111
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
