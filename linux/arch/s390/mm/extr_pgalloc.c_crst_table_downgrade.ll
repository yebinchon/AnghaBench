; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_crst_table_downgrade.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_crst_table_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@_REGION2_SIZE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@_REGION_ENTRY_ORIGIN = common dso_local global i32 0, align 4
@_REGION3_SIZE = common dso_local global i64 0, align 8
@_ASCE_TABLE_LENGTH = common dso_local global i32 0, align 4
@_ASCE_USER_BITS = common dso_local global i32 0, align 4
@_ASCE_TYPE_SEGMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crst_table_downgrade(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %5 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @_REGION2_SIZE, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @VM_BUG_ON(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %16 = icmp eq %struct.mm_struct* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 (...) @clear_user_asce()
  %19 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %20 = call i32 @__tlb_flush_mm(%struct.mm_struct* %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %3, align 8
  %25 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %26 = call i32 @mm_dec_nr_pmds(%struct.mm_struct* %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pgd_val(i32 %28)
  %30 = load i32, i32* @_REGION_ENTRY_ORIGIN, align 4
  %31 = and i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load i64, i64* @_REGION3_SIZE, align 8
  %37 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %41 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @__pa(i32* %42)
  %44 = load i32, i32* @_ASCE_TABLE_LENGTH, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @_ASCE_USER_BITS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @_ASCE_TYPE_SEGMENT, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %51 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = bitcast i32* %54 to i64*
  %56 = call i32 @crst_table_free(%struct.mm_struct* %53, i64* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.mm_struct*, %struct.mm_struct** %58, align 8
  %60 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %61 = icmp eq %struct.mm_struct* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %21
  %63 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %64 = call i32 @set_user_asce(%struct.mm_struct* %63)
  br label %65

65:                                               ; preds = %62, %21
  ret void
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @clear_user_asce(...) #1

declare dso_local i32 @__tlb_flush_mm(%struct.mm_struct*) #1

declare dso_local i32 @mm_dec_nr_pmds(%struct.mm_struct*) #1

declare dso_local i32 @pgd_val(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @crst_table_free(%struct.mm_struct*, i64*) #1

declare dso_local i32 @set_user_asce(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
