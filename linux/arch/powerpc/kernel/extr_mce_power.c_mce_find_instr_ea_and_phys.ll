; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c_mce_find_instr_ea_and_phys.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c_mce_find_instr_ea_and_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }
%struct.instruction_op = type { i64 }

@ULONG_MAX = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i64*, i64*)* @mce_find_instr_ea_and_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mce_find_instr_ea_and_phys(%struct.pt_regs* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.instruction_op, align 8
  %12 = alloca %struct.pt_regs, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %14 = bitcast %struct.pt_regs* %12 to i8*
  %15 = bitcast %struct.pt_regs* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false)
  %16 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @addr_to_pfn(%struct.pt_regs* %16, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @ULONG_MAX, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %54

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = shl i64 %25, %26
  %28 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PAGE_MASK, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = add i64 %27, %33
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @analyse_instr(%struct.instruction_op* %11, %struct.pt_regs* %12, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %24
  %42 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %43 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @addr_to_pfn(%struct.pt_regs* %42, i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = getelementptr inbounds %struct.instruction_op, %struct.instruction_op* %11, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %6, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @PAGE_SHIFT, align 8
  %51 = shl i64 %49, %50
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %4, align 4
  br label %56

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53, %3
  %55 = load i64*, i64** %6, align 8
  store i64 0, i64* %55, align 8
  store i32 -1, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %41
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @addr_to_pfn(%struct.pt_regs*, i64) #2

declare dso_local i32 @analyse_instr(%struct.instruction_op*, %struct.pt_regs*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
