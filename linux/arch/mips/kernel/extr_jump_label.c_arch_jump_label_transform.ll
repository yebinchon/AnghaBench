; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_jump_label.c_arch_jump_label_transform.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_jump_label.c_arch_jump_label_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jump_entry = type { i32, i32 }
%union.mips_instruction = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@J_ALIGN_MASK = common dso_local global i32 0, align 4
@J_ISA_BIT = common dso_local global i32 0, align 4
@JUMP_LABEL_JMP = common dso_local global i32 0, align 4
@CONFIG_CPU_MICROMIPS = common dso_local global i32 0, align 4
@MIPS_ISA_REV = common dso_local global i32 0, align 4
@bc6_op = common dso_local global i32 0, align 4
@J_RANGE_MASK = common dso_local global i32 0, align 4
@mm_j32_op = common dso_local global i32 0, align 4
@j_op = common dso_local global i32 0, align 4
@J_RANGE_SHIFT = common dso_local global i32 0, align 4
@text_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_jump_label_transform(%struct.jump_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.jump_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.mips_instruction*, align 8
  %6 = alloca %union.mips_instruction, align 8
  %7 = alloca i64, align 8
  store %struct.jump_entry* %0, %struct.jump_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %9 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @msk_isa16_mode(i32 %10)
  %12 = inttoptr i64 %11 to %union.mips_instruction*
  store %union.mips_instruction* %12, %union.mips_instruction** %5, align 8
  %13 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %14 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @J_ALIGN_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @J_ISA_BIT, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @JUMP_LABEL_JMP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %2
  %26 = load i32, i32* @CONFIG_CPU_MICROMIPS, align 4
  %27 = call i64 @IS_ENABLED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @MIPS_ISA_REV, align 4
  %31 = icmp sge i32 %30, 6
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %34 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load %union.mips_instruction*, %union.mips_instruction** %5, align 8
  %38 = ptrtoint %union.mips_instruction* %37 to i64
  %39 = add i64 %38, 4
  %40 = sub i64 %36, %39
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = ashr i64 %41, 2
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @BIT(i32 25)
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %32
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @BIT(i32 25)
  %49 = sub nsw i64 0, %48
  %50 = icmp slt i64 %47, %49
  br label %51

51:                                               ; preds = %46, %32
  %52 = phi i1 [ true, %32 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load i32, i32* @bc6_op, align 4
  %56 = bitcast %union.mips_instruction* %6 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = bitcast %union.mips_instruction* %6 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %96

61:                                               ; preds = %29, %25
  %62 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %63 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @J_RANGE_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  %68 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %69 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 4
  %72 = load i32, i32* @J_RANGE_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %67, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @WARN_ON(i32 %76)
  %78 = load i32, i32* @J_ISA_BIT, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %61
  %81 = load i32, i32* @mm_j32_op, align 4
  br label %84

82:                                               ; preds = %61
  %83 = load i32, i32* @j_op, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = bitcast %union.mips_instruction* %6 to %struct.TYPE_2__*
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.jump_entry*, %struct.jump_entry** %3, align 8
  %89 = getelementptr inbounds %struct.jump_entry, %struct.jump_entry* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @J_RANGE_SHIFT, align 4
  %92 = ashr i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = bitcast %union.mips_instruction* %6 to %struct.TYPE_2__*
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %84, %51
  br label %99

97:                                               ; preds = %2
  %98 = bitcast %union.mips_instruction* %6 to i32*
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %97, %96
  %100 = call i32 @mutex_lock(i32* @text_mutex)
  %101 = load i32, i32* @CONFIG_CPU_MICROMIPS, align 4
  %102 = call i64 @IS_ENABLED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %99
  %105 = bitcast %union.mips_instruction* %6 to i32*
  %106 = load i32, i32* %105, align 8
  %107 = ashr i32 %106, 16
  %108 = load %union.mips_instruction*, %union.mips_instruction** %5, align 8
  %109 = bitcast %union.mips_instruction* %108 to i32**
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %107, i32* %111, align 4
  %112 = bitcast %union.mips_instruction* %6 to i32*
  %113 = load i32, i32* %112, align 8
  %114 = load %union.mips_instruction*, %union.mips_instruction** %5, align 8
  %115 = bitcast %union.mips_instruction* %114 to i32**
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 %113, i32* %117, align 4
  br label %122

118:                                              ; preds = %99
  %119 = load %union.mips_instruction*, %union.mips_instruction** %5, align 8
  %120 = bitcast %union.mips_instruction* %119 to i8*
  %121 = bitcast %union.mips_instruction* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 16, i1 false)
  br label %122

122:                                              ; preds = %118, %104
  %123 = load %union.mips_instruction*, %union.mips_instruction** %5, align 8
  %124 = ptrtoint %union.mips_instruction* %123 to i64
  %125 = load %union.mips_instruction*, %union.mips_instruction** %5, align 8
  %126 = ptrtoint %union.mips_instruction* %125 to i64
  %127 = add i64 %126, 16
  %128 = call i32 @flush_icache_range(i64 %124, i64 %127)
  %129 = call i32 @mutex_unlock(i32* @text_mutex)
  ret void
}

declare dso_local i64 @msk_isa16_mode(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @flush_icache_range(i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
