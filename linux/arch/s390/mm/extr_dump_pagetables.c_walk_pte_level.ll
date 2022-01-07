; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_walk_pte_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_walk_pte_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pg_state = type { i64 }

@PTRS_PER_PTE = common dso_local global i32 0, align 4
@max_addr = common dso_local global i64 0, align 8
@_PAGE_PROTECT = common dso_local global i32 0, align 4
@_PAGE_INVALID = common dso_local global i32 0, align 4
@_PAGE_NOEXEC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pg_state*, i32*, i64)* @walk_pte_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pte_level(%struct.seq_file* %0, %struct.pg_state* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.pg_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.pg_state* %1, %struct.pg_state** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %45, %4
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* @PTRS_PER_PTE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @max_addr, align 8
  %19 = icmp ult i64 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %48

22:                                               ; preds = %20
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %25 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32* @pte_offset_kernel(i32* %26, i64 %27)
  store i32* %28, i32** %10, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pte_val(i32 %30)
  %32 = load i32, i32* @_PAGE_PROTECT, align 4
  %33 = load i32, i32* @_PAGE_INVALID, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @_PAGE_NOEXEC, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %39 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @note_page(%struct.seq_file* %38, %struct.pg_state* %39, i32 %40, i32 4)
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %22
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %12

48:                                               ; preds = %20
  ret void
}

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @note_page(%struct.seq_file*, %struct.pg_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
