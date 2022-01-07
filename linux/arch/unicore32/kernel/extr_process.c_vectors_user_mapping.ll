; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_process.c_vectors_user_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_process.c_vectors_user_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vectors_user_mapping() #0 {
  %1 = alloca %struct.mm_struct*, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  store %struct.mm_struct* %4, %struct.mm_struct** %1, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %6 = load i32, i32* @PAGE_SIZE, align 4
  %7 = load i32, i32* @VM_READ, align 4
  %8 = load i32, i32* @VM_EXEC, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @VM_MAYREAD, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @VM_MAYEXEC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @VM_DONTEXPAND, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @VM_DONTDUMP, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @install_special_mapping(%struct.mm_struct* %5, i32 -65536, i32 %6, i32 %17, i32* null)
  ret i32 %18
}

declare dso_local i32 @install_special_mapping(%struct.mm_struct*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
