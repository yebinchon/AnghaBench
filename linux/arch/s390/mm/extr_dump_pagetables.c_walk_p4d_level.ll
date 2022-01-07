; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_walk_p4d_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_walk_p4d_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pg_state = type { i64 }

@PTRS_PER_P4D = common dso_local global i32 0, align 4
@max_addr = common dso_local global i64 0, align 8
@_PAGE_INVALID = common dso_local global i32 0, align 4
@P4D_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@kasan_early_shadow_p4d = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pg_state*, i32*, i64)* @walk_p4d_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_p4d_level(%struct.seq_file* %0, %struct.pg_state* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.pg_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.pg_state* %1, %struct.pg_state** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i32* @p4d_offset(i32* %11, i64 %12)
  store i32* %13, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %47, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @PTRS_PER_P4D, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @max_addr, align 8
  %21 = icmp ult i64 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %52

24:                                               ; preds = %22
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %27 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @p4d_none(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %34 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @walk_pud_level(%struct.seq_file* %33, %struct.pg_state* %34, i32* %35, i64 %36)
  br label %43

38:                                               ; preds = %24
  %39 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %40 = load %struct.pg_state*, %struct.pg_state** %6, align 8
  %41 = load i32, i32* @_PAGE_INVALID, align 4
  %42 = call i32 @note_page(%struct.seq_file* %39, %struct.pg_state* %40, i32 %41, i32 2)
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i64, i64* @P4D_SIZE, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %9, align 8
  br label %14

52:                                               ; preds = %22
  ret void
}

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i32 @p4d_none(i32) #1

declare dso_local i32 @walk_pud_level(%struct.seq_file*, %struct.pg_state*, i32*, i64) #1

declare dso_local i32 @note_page(%struct.seq_file*, %struct.pg_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
