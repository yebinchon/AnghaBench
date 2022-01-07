; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module-plts.c_get_plt_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_module-plts.c_get_plt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plt_entry = type { i32 }

@get_plt_entry.br = internal global i64 0, align 8
@AARCH64_INSN_REG_16 = common dso_local global i32 0, align 4
@AARCH64_INSN_BRANCH_NOLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_plt_entry(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.plt_entry, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.plt_entry, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i64, i64* @get_plt_entry.br, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @AARCH64_INSN_REG_16, align 4
  %11 = load i32, i32* @AARCH64_INSN_BRANCH_NOLINK, align 4
  %12 = call i64 @aarch64_insn_gen_branch_reg(i32 %10, i32 %11)
  store i64 %12, i64* @get_plt_entry.br, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = ptrtoint i8* %15 to i32
  %17 = load i32, i32* @AARCH64_INSN_REG_16, align 4
  %18 = call i32 @__get_adrp_add_pair(i32 %14, i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.plt_entry* %3 to i8*
  %21 = bitcast %struct.plt_entry* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load i64, i64* @get_plt_entry.br, align 8
  %23 = call i32 @cpu_to_le32(i64 %22)
  %24 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %3, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.plt_entry, %struct.plt_entry* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

declare dso_local i64 @aarch64_insn_gen_branch_reg(i32, i32) #1

declare dso_local i32 @__get_adrp_add_pair(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
