; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/kernel/extr_vdso.c_arch_setup_additional_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/kernel/extr_vdso.c_arch_setup_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.linux_binprm = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@STACK_TOP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@vdso_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_additional_pages(%struct.linux_binprm* %0, i32 %1) #0 {
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.mm_struct*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %10, %struct.mm_struct** %7, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = call i32 @down_write(i32* %12)
  %14 = load i32, i32* @STACK_TOP, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i64 @get_unmapped_area(i32* null, i32 %14, i32 %15, i32 0, i32 0)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @IS_ERR_VALUE(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = load i32, i32* @VM_READ, align 4
  %28 = load i32, i32* @VM_EXEC, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @VM_MAYREAD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VM_MAYWRITE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @VM_MAYEXEC, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @install_special_mapping(%struct.mm_struct* %24, i64 %25, i32 %26, i32 %35, i32* @vdso_page)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %46

40:                                               ; preds = %23
  %41 = load i64, i64* %6, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %44 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i8* %42, i8** %45, align 8
  br label %46

46:                                               ; preds = %40, %39, %20
  %47 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %48 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %47, i32 0, i32 0
  %49 = call i32 @up_write(i32* %48)
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @get_unmapped_area(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @install_special_mapping(%struct.mm_struct*, i64, i32, i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
