; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_is_eva_am_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_is_eva_am_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%union.mips_instruction = type { i32 }

@ST0_ERL = common dso_local global i32 0, align 4
@ST0_EXL = common dso_local global i32 0, align 4
@ST0_KSU = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32)* @is_eva_am_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_eva_am_mapped(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.mips_instruction, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 1879572480, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = call i32 (...) @read_gc0_status()
  %23 = load i32, i32* @ST0_ERL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %18
  store i32 1, i32* %4, align 4
  br label %80

27:                                               ; preds = %21
  br label %79

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = shl i32 %29, 8
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %28
  %35 = call i32 (...) @read_gc0_status()
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @ST0_EXL, align 4
  %38 = load i32, i32* @ST0_ERL, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @ST0_KSU, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %4, align 4
  br label %80

48:                                               ; preds = %42, %34
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %12, align 8
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CAUSEF_BD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32* %63, i32** %12, align 8
  br label %64

64:                                               ; preds = %61, %48
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %67 = bitcast %union.mips_instruction* %10 to i32*
  %68 = call i32 @kvm_get_badinstr(i32* %65, %struct.kvm_vcpu* %66, i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @is_eva_access(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %4, align 4
  br label %80

77:                                               ; preds = %71, %64
  br label %78

78:                                               ; preds = %77, %28
  br label %79

79:                                               ; preds = %78, %27
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %76, %47, %26
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @read_gc0_status(...) #1

declare dso_local i32 @kvm_get_badinstr(i32*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i64 @is_eva_access(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
