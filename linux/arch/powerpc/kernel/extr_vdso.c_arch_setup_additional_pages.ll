; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_vdso.c_arch_setup_additional_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_vdso.c_arch_setup_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.page = type { i32 }
%struct.linux_binprm = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@vdso_ready = common dso_local global i32 0, align 4
@vdso32_pagelist = common dso_local global %struct.page** null, align 8
@vdso32_pages = common dso_local global i64 0, align 8
@VDSO32_MBASE = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VDSO_ALIGNMENT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@vdso64_pagelist = common dso_local global %struct.page** null, align 8
@vdso64_pages = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_additional_pages(%struct.linux_binprm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  store %struct.mm_struct* %13, %struct.mm_struct** %6, align 8
  %14 = load i32, i32* @vdso_ready, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %100

17:                                               ; preds = %2
  %18 = load %struct.page**, %struct.page*** @vdso32_pagelist, align 8
  store %struct.page** %18, %struct.page*** %7, align 8
  %19 = load i64, i64* @vdso32_pages, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* @VDSO32_MBASE, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.mm_struct*, %struct.mm_struct** %22, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %100

29:                                               ; preds = %17
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 0
  %34 = call i64 @down_write_killable(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EINTR, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %100

39:                                               ; preds = %29
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @PAGE_SHIFT, align 8
  %43 = shl i64 %41, %42
  %44 = load i32, i32* @VDSO_ALIGNMENT, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* @PAGE_MASK, align 4
  %47 = and i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = add i64 %43, %48
  %50 = call i64 @get_unmapped_area(i32* null, i64 %40, i64 %49, i32 0, i32 0)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @IS_ERR_VALUE(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %10, align 4
  br label %95

57:                                               ; preds = %39
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* @VDSO_ALIGNMENT, align 4
  %60 = call i64 @ALIGN(i64 %58, i32 %59)
  store i64 %60, i64* %9, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.mm_struct*, %struct.mm_struct** %63, align 8
  %65 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %61, i64* %66, align 8
  %67 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @PAGE_SHIFT, align 8
  %71 = shl i64 %69, %70
  %72 = load i32, i32* @VM_READ, align 4
  %73 = load i32, i32* @VM_EXEC, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @VM_MAYREAD, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @VM_MAYWRITE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @VM_MAYEXEC, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.page**, %struct.page*** %7, align 8
  %82 = call i32 @install_special_mapping(%struct.mm_struct* %67, i64 %68, i64 %71, i32 %80, %struct.page** %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %57
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.mm_struct*, %struct.mm_struct** %87, align 8
  %89 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %95

91:                                               ; preds = %57
  %92 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %93 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %92, i32 0, i32 0
  %94 = call i32 @up_write(i32* %93)
  store i32 0, i32* %3, align 4
  br label %100

95:                                               ; preds = %85, %54
  %96 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %97 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %96, i32 0, i32 0
  %98 = call i32 @up_write(i32* %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %91, %36, %28, %16
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i64 @get_unmapped_area(i32*, i64, i64, i32, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @install_special_mapping(%struct.mm_struct*, i64, i64, i32, %struct.page**) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
