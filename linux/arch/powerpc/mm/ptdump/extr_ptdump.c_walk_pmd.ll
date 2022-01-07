; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_ptdump.c_walk_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_ptdump.c_walk_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32 }

@PTRS_PER_PMD = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i32*, i64)* @walk_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pmd(%struct.pg_state* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.pg_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pg_state* %0, %struct.pg_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @pmd_offset(i32* %10, i32 0)
  store i32* %11, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %45, %3
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @PTRS_PER_PMD, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @PMD_SIZE, align 4
  %20 = mul i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = add i64 %17, %21
  store i64 %22, i64* %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pmd_none(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %16
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pmd_is_leaf(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @walk_pte(%struct.pg_state* %33, i32* %34, i64 %35)
  br label %44

37:                                               ; preds = %27, %16
  %38 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pmd_val(i32 %41)
  %43 = call i32 @note_page(%struct.pg_state* %38, i64 %39, i32 3, i32 %42)
  br label %44

44:                                               ; preds = %37, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %7, align 8
  br label %12

50:                                               ; preds = %12
  ret void
}

declare dso_local i32* @pmd_offset(i32*, i32) #1

declare dso_local i32 @pmd_none(i32) #1

declare dso_local i32 @pmd_is_leaf(i32) #1

declare dso_local i32 @walk_pte(%struct.pg_state*, i32*, i64) #1

declare dso_local i32 @note_page(%struct.pg_state*, i64, i32, i32) #1

declare dso_local i32 @pmd_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
