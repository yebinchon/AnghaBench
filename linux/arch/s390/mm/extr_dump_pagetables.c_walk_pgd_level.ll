; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_walk_pgd_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_dump_pagetables.c_walk_pgd_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pg_state = type { i64 }

@PTRS_PER_PGD = common dso_local global i32 0, align 4
@max_addr = common dso_local global i64 0, align 8
@_PAGE_INVALID = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @walk_pgd_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pgd_level(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pg_state, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = call i32 @memset(%struct.pg_state* %4, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %41, %1
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @PTRS_PER_PGD, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @max_addr, align 8
  %15 = icmp ult i64 %13, %14
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br i1 %17, label %18, label %44

18:                                               ; preds = %16
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %4, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i32* @pgd_offset_k(i64 %21)
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pgd_none(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @walk_p4d_level(%struct.seq_file* %28, %struct.pg_state* %4, i32* %29, i64 %30)
  br label %36

32:                                               ; preds = %18
  %33 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %34 = load i32, i32* @_PAGE_INVALID, align 4
  %35 = call i32 @note_page(%struct.seq_file* %33, %struct.pg_state* %4, i32 %34, i32 1)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i64, i64* @PGDIR_SIZE, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %3, align 8
  %40 = call i32 (...) @cond_resched()
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %8

44:                                               ; preds = %16
  %45 = load i64, i64* @max_addr, align 8
  %46 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %4, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %48 = call i32 @note_page(%struct.seq_file* %47, %struct.pg_state* %4, i32 0, i32 0)
  ret void
}

declare dso_local i32 @memset(%struct.pg_state*, i32, i32) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32 @walk_p4d_level(%struct.seq_file*, %struct.pg_state*, i32*, i64) #1

declare dso_local i32 @note_page(%struct.seq_file*, %struct.pg_state*, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
