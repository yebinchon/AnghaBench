; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_va_layout.c_kvm_patch_vector_branch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_va_layout.c_kvm_patch_vector_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alt_instr = type { i32 }

@ARM64_HARDEN_EL2_VECTORS = common dso_local global i32 0, align 4
@va_mask = common dso_local global i32 0, align 4
@__kvm_hyp_vector = common dso_local global i32 0, align 4
@tag_val = common dso_local global i32 0, align 4
@tag_lsb = common dso_local global i32 0, align 4
@KVM_VECTOR_PREAMBLE = common dso_local global i64 0, align 8
@AARCH64_INSN_REG_0 = common dso_local global i32 0, align 4
@AARCH64_INSN_REG_1 = common dso_local global i32 0, align 4
@AARCH64_INSN_REG_SP = common dso_local global i32 0, align 4
@AARCH64_INSN_VARIANT_64BIT = common dso_local global i32 0, align 4
@AARCH64_INSN_LDST_STORE_PAIR_PRE_INDEX = common dso_local global i32 0, align 4
@AARCH64_INSN_MOVEWIDE_ZERO = common dso_local global i32 0, align 4
@AARCH64_INSN_MOVEWIDE_KEEP = common dso_local global i32 0, align 4
@AARCH64_INSN_BRANCH_NOLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_patch_vector_branch(%struct.alt_instr* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.alt_instr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.alt_instr* %0, %struct.alt_instr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 5
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = call i64 (...) @has_vhe()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ARM64_HARDEN_EL2_VECTORS, align 4
  %19 = call i32 @cpus_have_const_cap(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %4
  %22 = load i32, i32* @ARM64_HARDEN_EL2_VECTORS, align 4
  %23 = call i32 @cpus_have_const_cap(i32 %22)
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  br label %104

25:                                               ; preds = %17
  %26 = load i32, i32* @va_mask, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = call i32 (...) @compute_layout()
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* @__kvm_hyp_vector, align 4
  %32 = call i64 @kvm_ksym_ref(i32 %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @va_mask, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @tag_val, align 4
  %38 = load i32, i32* @tag_lsb, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = ptrtoint i32* %42 to i32
  %44 = call i32 @GENMASK_ULL(i32 10, i32 7)
  %45 = and i32 %43, %44
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i64, i64* @KVM_VECTOR_PREAMBLE, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @AARCH64_INSN_REG_0, align 4
  %54 = load i32, i32* @AARCH64_INSN_REG_1, align 4
  %55 = load i32, i32* @AARCH64_INSN_REG_SP, align 4
  %56 = load i32, i32* @AARCH64_INSN_VARIANT_64BIT, align 4
  %57 = load i32, i32* @AARCH64_INSN_LDST_STORE_PAIR_PRE_INDEX, align 4
  %58 = call i32 @aarch64_insn_gen_load_store_pair(i32 %53, i32 %54, i32 %55, i32 -16, i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = ptrtoint i8* %60 to i32
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  %64 = load i32, i32* @AARCH64_INSN_REG_0, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @AARCH64_INSN_VARIANT_64BIT, align 4
  %67 = load i32, i32* @AARCH64_INSN_MOVEWIDE_ZERO, align 4
  %68 = call i32 @aarch64_insn_gen_movewide(i32 %64, i32 %65, i32 0, i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %74 = load i32, i32* @AARCH64_INSN_REG_0, align 4
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 16
  %77 = load i32, i32* @AARCH64_INSN_VARIANT_64BIT, align 4
  %78 = load i32, i32* @AARCH64_INSN_MOVEWIDE_KEEP, align 4
  %79 = call i32 @aarch64_insn_gen_movewide(i32 %74, i32 %76, i32 16, i32 %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %7, align 8
  store i32 %82, i32* %83, align 4
  %85 = load i32, i32* @AARCH64_INSN_REG_0, align 4
  %86 = load i32, i32* %9, align 4
  %87 = ashr i32 %86, 32
  %88 = load i32, i32* @AARCH64_INSN_VARIANT_64BIT, align 4
  %89 = load i32, i32* @AARCH64_INSN_MOVEWIDE_KEEP, align 4
  %90 = call i32 @aarch64_insn_gen_movewide(i32 %85, i32 %87, i32 32, i32 %88, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  %96 = load i32, i32* @AARCH64_INSN_REG_0, align 4
  %97 = load i32, i32* @AARCH64_INSN_BRANCH_NOLINK, align 4
  %98 = call i32 @aarch64_insn_gen_branch_reg(i32 %96, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i8* @cpu_to_le32(i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %104

104:                                              ; preds = %30, %21
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @has_vhe(...) #1

declare dso_local i32 @cpus_have_const_cap(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @compute_layout(...) #1

declare dso_local i64 @kvm_ksym_ref(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @aarch64_insn_gen_load_store_pair(i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @aarch64_insn_gen_movewide(i32, i32, i32, i32, i32) #1

declare dso_local i32 @aarch64_insn_gen_branch_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
