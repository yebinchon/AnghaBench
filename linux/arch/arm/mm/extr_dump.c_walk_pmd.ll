; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_walk_pmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_dump.c_walk_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32 }

@PTRS_PER_PMD = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i32 0, align 4
@SECTION_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i32*, i64)* @walk_pmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pmd(%struct.pg_state* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.pg_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.pg_state* %0, %struct.pg_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @pmd_offset(i32* %11, i32 0)
  store i32* %12, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %81, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @PTRS_PER_PMD, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %86

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PMD_SIZE, align 4
  %21 = mul i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = add i64 %18, %22
  store i64 %23, i64* %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i8* @get_domain_name(i32* %24)
  store i8* %25, i8** %10, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @pmd_none(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %17
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @pmd_large(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pmd_present(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35, %30, %17
  %41 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pmd_val(i32 %44)
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @note_page(%struct.pg_state* %41, i64 %42, i32 3, i32 %45, i8* %46)
  br label %54

48:                                               ; preds = %35
  %49 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @walk_pte(%struct.pg_state* %49, i32* %50, i64 %51, i8* %52)
  br label %54

54:                                               ; preds = %48, %40
  %55 = load i32, i32* @SECTION_SIZE, align 4
  %56 = load i32, i32* @PMD_SIZE, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @pmd_large(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load i32, i32* @SECTION_SIZE, align 4
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %8, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i8* @get_domain_name(i32* %71)
  store i8* %72, i8** %10, align 8
  %73 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pmd_val(i32 %76)
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @note_page(%struct.pg_state* %73, i64 %74, i32 3, i32 %77, i8* %78)
  br label %80

80:                                               ; preds = %64, %58, %54
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %9, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %7, align 8
  br label %13

86:                                               ; preds = %13
  ret void
}

declare dso_local i32* @pmd_offset(i32*, i32) #1

declare dso_local i8* @get_domain_name(i32*) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32 @note_page(%struct.pg_state*, i64, i32, i32, i8*) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @walk_pte(%struct.pg_state*, i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
