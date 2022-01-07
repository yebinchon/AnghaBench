; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_mmu_context.c_radix__init_new_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_mmu_context.c_radix__init_new_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.mm_struct = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }

@mmu_pid_bits = common dso_local global i32 0, align 4
@mmu_base_pid = common dso_local global i32 0, align 4
@RADIX_PGD_INDEX_SIZE = common dso_local global i64 0, align 8
@process_tb = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*)* @radix__init_new_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radix__init_new_context(%struct.mm_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %7 = load i32, i32* @mmu_pid_bits, align 4
  %8 = shl i32 1, %7
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @mmu_base_pid, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @alloc_context_id(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %1
  %18 = call i64 (...) @radix__get_tree_size()
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @__pa(i32 %22)
  %24 = or i64 %19, %23
  %25 = load i64, i64* @RADIX_PGD_INDEX_SIZE, align 8
  %26 = or i64 %24, %25
  %27 = call i32 @cpu_to_be64(i64 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @process_tb, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  call void asm sideeffect "ptesync;isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %33 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %34 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %17, %15
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @alloc_context_id(i32, i32) #1

declare dso_local i64 @radix__get_tree_size(...) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i64 @__pa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 972}
