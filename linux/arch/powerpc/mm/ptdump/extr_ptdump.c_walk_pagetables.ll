; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_ptdump.c_walk_pagetables.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_ptdump.c_walk_pagetables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i64 }

@PGDIR_MASK = common dso_local global i64 0, align 8
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@PGDIR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*)* @walk_pagetables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pagetables(%struct.pg_state* %0) #0 {
  %2 = alloca %struct.pg_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.pg_state* %0, %struct.pg_state** %2, align 8
  %6 = load %struct.pg_state*, %struct.pg_state** %2, align 8
  %7 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PGDIR_MASK, align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32* @pgd_offset_k(i64 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @pgd_index(i64 %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %42, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @PTRS_PER_PGD, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pgd_none(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pgd_is_leaf(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.pg_state*, %struct.pg_state** %2, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @walk_pud(%struct.pg_state* %30, i32* %31, i64 %32)
  br label %41

34:                                               ; preds = %24, %19
  %35 = load %struct.pg_state*, %struct.pg_state** %2, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pgd_val(i32 %38)
  %40 = call i32 @note_page(%struct.pg_state* %35, i64 %36, i32 1, i32 %39)
  br label %41

41:                                               ; preds = %34, %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %3, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  %47 = load i64, i64* @PGDIR_SIZE, align 8
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %4, align 8
  br label %15

50:                                               ; preds = %15
  ret void
}

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i32 @pgd_none(i32) #1

declare dso_local i32 @pgd_is_leaf(i32) #1

declare dso_local i32 @walk_pud(%struct.pg_state*, i32*, i64) #1

declare dso_local i32 @note_page(%struct.pg_state*, i64, i32, i32) #1

declare dso_local i32 @pgd_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
