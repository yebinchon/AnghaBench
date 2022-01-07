; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_walk_pmd_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_walk_pmd_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pg_state = type { i64 }

@PTRS_PER_PMD = common dso_local global i32 0, align 4
@max_addr = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_PROTECT = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY_NOEXEC = common dso_local global i32 0, align 4
@_PAGE_INVALID = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@kasan_early_shadow_pmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pg_state*, i32*, i64)* @walk_pmd_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pmd_level(%struct.seq_file* %0, %struct.pg_state* %1, i32* %2, i64 %3) #0 {
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
  %12 = load i32*, i32** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i32* @pmd_offset(i32* %12, i64 %13)
  store i32* %14, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %66, %4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @PTRS_PER_PMD, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @max_addr, align 8
  %22 = icmp ult i64 %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %71

25:                                               ; preds = %23
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %28 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pmd_none(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %25
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @pmd_large(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pmd_val(i32 %40)
  %42 = load i32, i32* @_SEGMENT_ENTRY_PROTECT, align 4
  %43 = load i32, i32* @_SEGMENT_ENTRY_NOEXEC, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  store i32 %45, i32* %9, align 4
  %46 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %47 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @note_page(%struct.seq_file* %46, %struct.pg_state* %47, i32 %48, i32 3)
  br label %56

50:                                               ; preds = %33
  %51 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %52 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @walk_pte_level(%struct.seq_file* %51, %struct.pg_state* %52, i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %50, %38
  br label %62

57:                                               ; preds = %25
  %58 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %59 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %60 = load i32, i32* @_PAGE_INVALID, align 4
  %61 = call i32 @note_page(%struct.seq_file* %58, %struct.pg_state* %59, i32 %60, i32 3)
  br label %62

62:                                               ; preds = %57, %56
  %63 = load i64, i64* @PMD_SIZE, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %10, align 8
  br label %15

71:                                               ; preds = %23
  ret void
}

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @note_page(%struct.seq_file*, %struct.pg_state*, i32, i32) #1

declare dso_local i32 @walk_pte_level(%struct.seq_file*, %struct.pg_state*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
