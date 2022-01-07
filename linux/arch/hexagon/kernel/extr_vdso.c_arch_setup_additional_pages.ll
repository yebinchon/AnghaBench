; ModuleID = '/home/carl/AnghaBench/linux/arch/hexagon/kernel/extr_vdso.c_arch_setup_additional_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/hexagon/kernel/extr_vdso.c_arch_setup_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.linux_binprm = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@EINTR = common dso_local global i32 0, align 4
@STACK_TOP = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@vdso_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_additional_pages(%struct.linux_binprm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  store %struct.mm_struct* %11, %struct.mm_struct** %8, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = call i64 @down_write_killable(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINTR, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %58

19:                                               ; preds = %2
  %20 = load i64, i64* @STACK_TOP, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i64 @get_unmapped_area(i32* null, i64 %21, i32 %22, i32 0, i32 0)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @IS_ERR_VALUE(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %53

30:                                               ; preds = %19
  %31 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* @VM_READ, align 4
  %35 = load i32, i32* @VM_EXEC, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @VM_MAYREAD, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @VM_MAYWRITE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @VM_MAYEXEC, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @install_special_mapping(%struct.mm_struct* %31, i64 %32, i32 %33, i32 %42, i32* @vdso_page)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  br label %53

47:                                               ; preds = %30
  %48 = load i64, i64* %7, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %51 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  br label %53

53:                                               ; preds = %47, %46, %27
  %54 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %55 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %54, i32 0, i32 0
  %56 = call i32 @up_write(i32* %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i64 @get_unmapped_area(i32*, i64, i32, i32, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @install_special_mapping(%struct.mm_struct*, i64, i32, i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
