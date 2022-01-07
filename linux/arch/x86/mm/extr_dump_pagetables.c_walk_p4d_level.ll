; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_dump_pagetables.c_walk_p4d_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_dump_pagetables.c_walk_p4d_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pg_state = type { i32 }

@PTRS_PER_P4D = common dso_local global i32 0, align 4
@P4D_LEVEL_MULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pg_state*, i32, i32, i64)* @walk_p4d_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_p4d_level(%struct.seq_file* %0, %struct.pg_state* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca %struct.pg_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store %struct.pg_state* %1, %struct.pg_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @PTRS_PER_P4D, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %20 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @pgd_val(i32 %21)
  %23 = call i32 @__p4d(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i64, i64* %10, align 8
  call void @walk_pud_level(%struct.seq_file* %19, %struct.pg_state* %20, i32 %23, i32 %24, i64 %25)
  br label %102

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @pgd_page_vaddr(i32 %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %12, align 8
  store i32* %29, i32** %13, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %99, %26
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @PTRS_PER_P4D, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %102

34:                                               ; preds = %30
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @P4D_LEVEL_MULT, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = add i64 %35, %39
  %41 = call i32 @normalize_addr(i64 %40)
  %42 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %43 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @p4d_none(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %91, label %48

48:                                               ; preds = %34
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @p4d_flags(i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @effective_prot(i32 %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @p4d_large(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %48
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @p4d_present(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59, %48
  %65 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %66 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @__pgprot(i32 %67)
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @note_page(%struct.seq_file* %65, %struct.pg_state* %66, i32 %68, i32 %69, i32 2)
  br label %90

71:                                               ; preds = %59
  %72 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %73 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @kasan_page_table(%struct.seq_file* %72, %struct.pg_state* %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %71
  %78 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %79 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @P4D_LEVEL_MULT, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = add i64 %83, %87
  call void @walk_pud_level(%struct.seq_file* %78, %struct.pg_state* %79, i32 %81, i32 %82, i64 %88)
  br label %89

89:                                               ; preds = %77, %71
  br label %90

90:                                               ; preds = %89, %64
  br label %96

91:                                               ; preds = %34
  %92 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %93 = load %struct.pg_state*, %struct.pg_state** %7, align 8
  %94 = call i32 @__pgprot(i32 0)
  %95 = call i32 @note_page(%struct.seq_file* %92, %struct.pg_state* %93, i32 %94, i32 0, i32 2)
  br label %96

96:                                               ; preds = %91, %90
  %97 = load i32*, i32** %12, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %12, align 8
  br label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %30

102:                                              ; preds = %18, %30
  ret void
}

declare dso_local void @walk_pud_level(%struct.seq_file*, %struct.pg_state*, i32, i32, i64) #1

declare dso_local i32 @__p4d(i32) #1

declare dso_local i32 @pgd_val(i32) #1

declare dso_local i64 @pgd_page_vaddr(i32) #1

declare dso_local i32 @normalize_addr(i64) #1

declare dso_local i32 @p4d_none(i32) #1

declare dso_local i32 @p4d_flags(i32) #1

declare dso_local i32 @effective_prot(i32, i32) #1

declare dso_local i64 @p4d_large(i32) #1

declare dso_local i32 @p4d_present(i32) #1

declare dso_local i32 @note_page(%struct.seq_file*, %struct.pg_state*, i32, i32, i32) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @kasan_page_table(%struct.seq_file*, %struct.pg_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
