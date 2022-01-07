; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_hash_preload.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c_hash_preload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, i32* }

@_PAGE_PRESENT = common dso_local global i64 0, align 8
@_PAGE_READ = common dso_local global i64 0, align 8
@_PAGE_EXEC = common dso_local global i64 0, align 8
@USER_REGION_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"hash_preload(mm=%p, mm->pgdir=%p, ea=%016lx, access=%lx, trap=%lx\0A\00", align 1
@HPTE_LOCAL_UPDATE = common dso_local global i32 0, align 4
@H_PAGE_4K_PFN = common dso_local global i32 0, align 4
@MMU_PAGE_64K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*, i64, i32, i64)* @hash_preload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_preload(%struct.mm_struct* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %16, align 4
  %18 = load i64, i64* @_PAGE_PRESENT, align 8
  %19 = load i64, i64* @_PAGE_READ, align 8
  %20 = or i64 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @_PAGE_EXEC, align 8
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i64 [ %24, %23 ], [ 0, %25 ]
  %28 = or i64 %20, %27
  store i64 %28, i64* %17, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @get_region_id(i64 %29)
  %31 = load i64, i64* @USER_REGION_ID, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @should_hash_preload(%struct.mm_struct* %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %119

40:                                               ; preds = %26
  %41 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %42 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %43 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @DBG_LOW(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), %struct.mm_struct* %41, i32* %44, i64 %45, i64 %46, i64 %47)
  %49 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %50 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %119

55:                                               ; preds = %40
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @user_segment_size(i64 %56)
  store i32 %57, i32* %15, align 4
  %58 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %59 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %58, i32 0, i32 0
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i64 @get_user_vsid(i32* %59, i64 %60, i32 %61)
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  br label %119

66:                                               ; preds = %55
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @local_irq_save(i64 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32* @find_current_mm_pte(i32* %69, i64 %70, i32* null, i32* %9)
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %116

75:                                               ; preds = %66
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @WARN_ON(i32 %76)
  %78 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %79 = call i64 @mm_is_thread_local(%struct.mm_struct* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @HPTE_LOCAL_UPDATE, align 4
  %83 = load i32, i32* %16, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %16, align 4
  br label %85

85:                                               ; preds = %81, %75
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @subpage_protection(%struct.mm_struct* %93, i64 %94)
  %96 = call i32 @__hash_page_4K(i64 %86, i64 %87, i64 %88, i32* %89, i64 %90, i32 %91, i32 %92, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %115

99:                                               ; preds = %85
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %17, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %106 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %105, i32 0, i32 0
  %107 = call i64 @mm_ctx_user_psize(i32* %106)
  %108 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %109 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %108, i32 0, i32 0
  %110 = call i64 @mm_ctx_user_psize(i32* %109)
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @pte_val(i32 %112)
  %114 = call i32 @hash_failure_debug(i64 %100, i64 %101, i64 %102, i64 %103, i32 %104, i64 %107, i64 %110, i32 %113)
  br label %115

115:                                              ; preds = %99, %85
  br label %116

116:                                              ; preds = %115, %74
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @local_irq_restore(i64 %117)
  br label %119

119:                                              ; preds = %116, %65, %54, %39
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @get_region_id(i64) #1

declare dso_local i32 @should_hash_preload(%struct.mm_struct*, i64) #1

declare dso_local i32 @DBG_LOW(i8*, %struct.mm_struct*, i32*, i64, i64, i64) #1

declare dso_local i32 @user_segment_size(i64) #1

declare dso_local i64 @get_user_vsid(i32*, i64, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32* @find_current_mm_pte(i32*, i64, i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @mm_is_thread_local(%struct.mm_struct*) #1

declare dso_local i32 @__hash_page_4K(i64, i64, i64, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @subpage_protection(%struct.mm_struct*, i64) #1

declare dso_local i32 @hash_failure_debug(i64, i64, i64, i64, i32, i64, i64, i32) #1

declare dso_local i64 @mm_ctx_user_psize(i32*) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
