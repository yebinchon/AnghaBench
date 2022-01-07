; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/um/vdso/extr_vma.c_arch_setup_additional_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/um/vdso/extr_vma.c_arch_setup_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.linux_binprm = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@vdso_enabled = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@um_vdso_addr = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@vdsop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_additional_pages(%struct.linux_binprm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %10, %struct.mm_struct** %7, align 8
  %11 = load i32, i32* @vdso_enabled, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = call i64 @down_write_killable(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @EINTR, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %41

22:                                               ; preds = %14
  %23 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %24 = load i32, i32* @um_vdso_addr, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load i32, i32* @VM_READ, align 4
  %27 = load i32, i32* @VM_EXEC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @VM_MAYREAD, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @VM_MAYWRITE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @VM_MAYEXEC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @vdsop, align 4
  %36 = call i32 @install_special_mapping(%struct.mm_struct* %23, i32 %24, i32 %25, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %38 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %37, i32 0, i32 0
  %39 = call i32 @up_write(i32* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %22, %19, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i32 @install_special_mapping(%struct.mm_struct*, i32, i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
