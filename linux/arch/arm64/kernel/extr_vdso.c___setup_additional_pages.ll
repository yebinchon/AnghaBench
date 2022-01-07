; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_vdso.c___setup_additional_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_vdso.c___setup_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.mm_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.linux_binprm = type { i32 }

@vdso_lookup = common dso_local global %struct.TYPE_4__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mm_struct*, %struct.linux_binprm*, i32)* @__setup_additional_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__setup_additional_pages(i32 %0, %struct.mm_struct* %1, %struct.linux_binprm* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca %struct.linux_binprm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.mm_struct* %1, %struct.mm_struct** %7, align 8
  store %struct.linux_binprm* %2, %struct.linux_binprm** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vdso_lookup, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = shl i64 %19, %20
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @get_unmapped_area(i32* null, i32 0, i64 %25, i32 0, i32 0)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @IS_ERR_VALUE(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i64, i64* %10, align 8
  %32 = call i8* @ERR_PTR(i64 %31)
  store i8* %32, i8** %13, align 8
  br label %85

33:                                               ; preds = %4
  %34 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = load i32, i32* @VM_READ, align 4
  %38 = load i32, i32* @VM_MAYREAD, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vdso_lookup, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @_install_special_mapping(%struct.mm_struct* %34, i64 %35, i64 %36, i32 %39, i32 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %85

51:                                               ; preds = %33
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %59 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32* %57, i32** %60, align 8
  %61 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* @VM_READ, align 4
  %65 = load i32, i32* @VM_EXEC, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @VM_MAYREAD, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @VM_MAYWRITE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @VM_MAYEXEC, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vdso_lookup, align 8
  %74 = load i32, i32* %6, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @_install_special_mapping(%struct.mm_struct* %61, i64 %62, i64 %63, i32 %72, i32 %78)
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i64 @IS_ERR(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %51
  br label %85

84:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %91

85:                                               ; preds = %83, %50, %30
  %86 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %87 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32* null, i32** %88, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @PTR_ERR(i8* %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %85, %84
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @get_unmapped_area(i32*, i32, i64, i32, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i8* @ERR_PTR(i64) #1

declare dso_local i8* @_install_special_mapping(%struct.mm_struct*, i64, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
