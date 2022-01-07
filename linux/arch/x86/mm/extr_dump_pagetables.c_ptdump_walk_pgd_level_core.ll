; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_dump_pagetables.c_ptdump_walk_pgd_level_core.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_dump_pagetables.c_ptdump_walk_pgd_level_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pg_state = type { i32, i32, i64, i8* }

@INIT_PGD = common dso_local global i32* null, align 8
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@PGD_LEVEL_MULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"x86/mm: Checked W+X mappings: FAILED, %lu W+X pages found.\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"x86/mm: Checked W+X mappings: passed, no W+X pages found.\0A\00", align 1
@_PAGE_RW = common dso_local global i32 0, align 4
@_PAGE_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32*, i32, i32)* @ptdump_walk_pgd_level_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptdump_walk_pgd_level_core(%struct.seq_file* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pg_state, align 8
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** @INIT_PGD, align 8
  store i32* %14, i32** %9, align 8
  %15 = bitcast %struct.pg_state* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %13, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  br label %22

22:                                               ; preds = %18, %4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %13, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %13, i32 0, i32 2
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %27, %22
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %86, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @PTRS_PER_PGD, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %89

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @PGD_LEVEL_MULT, align 4
  %37 = mul nsw i32 %35, %36
  %38 = call i8* @normalize_addr(i32 %37)
  %39 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %13, i32 0, i32 3
  store i8* %38, i8** %39, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pgd_none(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %78, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @is_hypervisor_range(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pgd_flags(i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @pgd_large(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %48
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pgd_present(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57, %48
  %63 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @__pgprot(i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @note_page(%struct.seq_file* %63, %struct.pg_state* %13, i32 %65, i32 %66, i32 1)
  br label %77

68:                                               ; preds = %57
  %69 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @PGD_LEVEL_MULT, align 4
  %75 = mul nsw i32 %73, %74
  %76 = call i32 @walk_p4d_level(%struct.seq_file* %69, %struct.pg_state* %13, i32 %71, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %68, %62
  br label %82

78:                                               ; preds = %44, %34
  %79 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %80 = call i32 @__pgprot(i32 0)
  %81 = call i32 @note_page(%struct.seq_file* %79, %struct.pg_state* %13, i32 %80, i32 0, i32 1)
  br label %82

82:                                               ; preds = %78, %77
  %83 = call i32 (...) @cond_resched()
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %9, align 8
  br label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %30

89:                                               ; preds = %30
  %90 = load i32, i32* @PTRS_PER_PGD, align 4
  %91 = load i32, i32* @PGD_LEVEL_MULT, align 4
  %92 = mul nsw i32 %90, %91
  %93 = call i8* @normalize_addr(i32 %92)
  %94 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %13, i32 0, i32 3
  store i8* %93, i8** %94, align 8
  %95 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %96 = call i32 @__pgprot(i32 0)
  %97 = call i32 @note_page(%struct.seq_file* %95, %struct.pg_state* %13, i32 %96, i32 0, i32 0)
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %89
  br label %111

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %13, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %13, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %107)
  br label %111

109:                                              ; preds = %101
  %110 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %100, %109, %105
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @normalize_addr(i32) #2

declare dso_local i32 @pgd_none(i32) #2

declare dso_local i32 @is_hypervisor_range(i32) #2

declare dso_local i32 @pgd_flags(i32) #2

declare dso_local i64 @pgd_large(i32) #2

declare dso_local i32 @pgd_present(i32) #2

declare dso_local i32 @note_page(%struct.seq_file*, %struct.pg_state*, i32, i32, i32) #2

declare dso_local i32 @__pgprot(i32) #2

declare dso_local i32 @walk_p4d_level(%struct.seq_file*, %struct.pg_state*, i32, i32, i32) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @pr_info(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
