; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_init.c_arch_setup_additional_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_init.c_arch_setup_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.linux_binprm = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@KUSER_BASE = common dso_local global i32 0, align 4
@KUSER_SIZE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@kuser_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_additional_pages(%struct.linux_binprm* %0, i32 %1) #0 {
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %9, %struct.mm_struct** %5, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = call i32 @down_write(i32* %11)
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = load i32, i32* @KUSER_BASE, align 4
  %15 = load i32, i32* @KUSER_SIZE, align 4
  %16 = load i32, i32* @VM_READ, align 4
  %17 = load i32, i32* @VM_EXEC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @VM_MAYREAD, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @VM_MAYEXEC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @kuser_page, align 4
  %24 = call i32 @install_special_mapping(%struct.mm_struct* %13, i32 %14, i32 %15, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %26 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %25, i32 0, i32 0
  %27 = call i32 @up_write(i32* %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @install_special_mapping(%struct.mm_struct*, i32, i32, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
