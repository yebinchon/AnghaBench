; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_alternative.c___text_poke.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_alternative.c___text_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@after_bootmem = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@_PAGE_GLOBAL = common dso_local global i32 0, align 4
@poking_mm = common dso_local global i32 0, align 4
@poking_addr = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64)* @__text_poke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__text_poke(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.page*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @offset_in_page(i8* %15)
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %17, %18
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %19, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = bitcast [2 x %struct.page*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 16, i1 false)
  %25 = load i32, i32* @after_bootmem, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = call i32 @core_kernel_text(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %3
  %35 = load i8*, i8** %4, align 8
  %36 = call %struct.page* @vmalloc_to_page(i8* %35)
  %37 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %8, i64 0, i64 0
  store %struct.page* %36, %struct.page** %37, align 16
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %41, i64 %43
  %45 = call %struct.page* @vmalloc_to_page(i8* %44)
  %46 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %8, i64 0, i64 1
  store %struct.page* %45, %struct.page** %46, align 8
  br label %47

47:                                               ; preds = %40, %34
  br label %69

48:                                               ; preds = %3
  %49 = load i8*, i8** %4, align 8
  %50 = call %struct.page* @virt_to_page(i8* %49)
  %51 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %8, i64 0, i64 0
  store %struct.page* %50, %struct.page** %51, align 16
  %52 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %8, i64 0, i64 0
  %53 = load %struct.page*, %struct.page** %52, align 16
  %54 = call i32 @PageReserved(%struct.page* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %48
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %62, i64 %64
  %66 = call %struct.page* @virt_to_page(i8* %65)
  %67 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %8, i64 0, i64 1
  store %struct.page* %66, %struct.page** %67, align 8
  br label %68

68:                                               ; preds = %61, %48
  br label %69

69:                                               ; preds = %68, %47
  %70 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %8, i64 0, i64 0
  %71 = load %struct.page*, %struct.page** %70, align 16
  %72 = icmp ne %struct.page* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %8, i64 0, i64 1
  %78 = load %struct.page*, %struct.page** %77, align 8
  %79 = icmp ne %struct.page* %78, null
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %76, %73
  %82 = phi i1 [ false, %73 ], [ %80, %76 ]
  br label %83

83:                                               ; preds = %81, %69
  %84 = phi i1 [ true, %69 ], [ %82, %81 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUG_ON(i32 %85)
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @local_irq_save(i64 %87)
  %89 = load i32, i32* @PAGE_KERNEL, align 4
  %90 = call i32 @pgprot_val(i32 %89)
  %91 = load i32, i32* @_PAGE_GLOBAL, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = call i32 @__pgprot(i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* @poking_mm, align 4
  %96 = load i64, i64* @poking_addr, align 8
  %97 = call i32* @get_locked_pte(i32 %95, i64 %96, i32** %13)
  store i32* %97, i32** %12, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = icmp ne i32* %98, null
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @VM_BUG_ON(i32 %101)
  %103 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %8, i64 0, i64 0
  %104 = load %struct.page*, %struct.page** %103, align 16
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @mk_pte(%struct.page* %104, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* @poking_mm, align 4
  %108 = load i64, i64* @poking_addr, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @set_pte_at(i32 %107, i64 %108, i32* %109, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %83
  %115 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %8, i64 0, i64 1
  %116 = load %struct.page*, %struct.page** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @mk_pte(%struct.page* %116, i32 %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* @poking_mm, align 4
  %120 = load i64, i64* @poking_addr, align 8
  %121 = load i32, i32* @PAGE_SIZE, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @set_pte_at(i32 %119, i64 %123, i32* %125, i32 %126)
  br label %128

128:                                              ; preds = %114, %83
  %129 = load i32, i32* @poking_mm, align 4
  %130 = call i32 @use_temporary_mm(i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = call i32 (...) @kasan_disable_current()
  %132 = load i64, i64* @poking_addr, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 @offset_in_page(i8* %134)
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i8*, i8** %5, align 8
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @memcpy(i32* %137, i8* %138, i64 %139)
  %141 = call i32 (...) @kasan_enable_current()
  %142 = call i32 (...) @barrier()
  %143 = load i32, i32* @poking_mm, align 4
  %144 = load i64, i64* @poking_addr, align 8
  %145 = load i32*, i32** %12, align 8
  %146 = call i32 @pte_clear(i32 %143, i64 %144, i32* %145)
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %128
  %150 = load i32, i32* @poking_mm, align 4
  %151 = load i64, i64* @poking_addr, align 8
  %152 = load i32, i32* @PAGE_SIZE, align 4
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %151, %153
  %155 = load i32*, i32** %12, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = call i32 @pte_clear(i32 %150, i64 %154, i32* %156)
  br label %158

158:                                              ; preds = %149, %128
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @unuse_temporary_mm(i32 %159)
  %161 = load i32, i32* @poking_mm, align 4
  %162 = load i64, i64* @poking_addr, align 8
  %163 = load i64, i64* @poking_addr, align 8
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 2, i32 1
  %168 = load i32, i32* @PAGE_SIZE, align 4
  %169 = mul nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %163, %170
  %172 = load i32, i32* @PAGE_SHIFT, align 4
  %173 = call i32 @flush_tlb_mm_range(i32 %161, i64 %162, i64 %171, i32 %172, i32 0)
  %174 = load i8*, i8** %4, align 8
  %175 = load i8*, i8** %5, align 8
  %176 = load i64, i64* %6, align 8
  %177 = call i32 @memcmp(i8* %174, i8* %175, i64 %176)
  %178 = call i32 @BUG_ON(i32 %177)
  %179 = load i32*, i32** %12, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = call i32 @pte_unmap_unlock(i32* %179, i32* %180)
  %182 = load i64, i64* %10, align 8
  %183 = call i32 @local_irq_restore(i64 %182)
  %184 = load i8*, i8** %4, align 8
  ret i8* %184
}

declare dso_local i32 @offset_in_page(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @core_kernel_text(i64) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @PageReserved(%struct.page*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i32* @get_locked_pte(i32, i64, i32**) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @set_pte_at(i32, i64, i32*, i32) #1

declare dso_local i32 @use_temporary_mm(i32) #1

declare dso_local i32 @kasan_disable_current(...) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @kasan_enable_current(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @pte_clear(i32, i64, i32*) #1

declare dso_local i32 @unuse_temporary_mm(i32) #1

declare dso_local i32 @flush_tlb_mm_range(i32, i64, i64, i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
