; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_pageattr.c_change_memory_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_pageattr.c_change_memory_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_struct = type { i64, i32, i32, i32*, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_ALLOC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rodata_full = common dso_local global i64 0, align 8
@PTE_RDONLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32)* @change_memory_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_memory_common(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.vm_struct*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %11, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @PAGE_ALIGNED(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %4
  %27 = load i64, i64* @PAGE_MASK, align 8
  %28 = load i64, i64* %10, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %12, align 8
  %33 = call i32 @WARN_ON_ONCE(i32 1)
  br label %34

34:                                               ; preds = %26, %4
  %35 = load i64, i64* %6, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call %struct.vm_struct* @find_vm_area(i8* %36)
  store %struct.vm_struct* %37, %struct.vm_struct** %13, align 8
  %38 = load %struct.vm_struct*, %struct.vm_struct** %13, align 8
  %39 = icmp ne %struct.vm_struct* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.vm_struct*, %struct.vm_struct** %13, align 8
  %43 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.vm_struct*, %struct.vm_struct** %13, align 8
  %46 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %44, %47
  %49 = icmp ugt i64 %41, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %40
  %51 = load %struct.vm_struct*, %struct.vm_struct** %13, align 8
  %52 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @VM_ALLOC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50, %40, %34
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %109

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %109

64:                                               ; preds = %60
  %65 = load i64, i64* @rodata_full, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @pgprot_val(i32 %68)
  %70 = load i64, i64* @PTE_RDONLY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @pgprot_val(i32 %73)
  %75 = load i64, i64* @PTE_RDONLY, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %72, %67
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %98, %77
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.vm_struct*, %struct.vm_struct** %13, align 8
  %81 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load %struct.vm_struct*, %struct.vm_struct** %13, align 8
  %86 = getelementptr inbounds %struct.vm_struct, %struct.vm_struct* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @page_address(i32 %91)
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @__change_memory_common(i64 %92, i64 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %84
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %78

101:                                              ; preds = %78
  br label %102

102:                                              ; preds = %101, %72, %64
  %103 = call i32 (...) @vm_unmap_aliases()
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @__change_memory_common(i64 %104, i64 %105, i32 %106, i32 %107)
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %102, %63, %57
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @PAGE_ALIGNED(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.vm_struct* @find_vm_area(i8*) #1

declare dso_local i64 @pgprot_val(i32) #1

declare dso_local i32 @__change_memory_common(i64, i64, i32, i32) #1

declare dso_local i64 @page_address(i32) #1

declare dso_local i32 @vm_unmap_aliases(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
