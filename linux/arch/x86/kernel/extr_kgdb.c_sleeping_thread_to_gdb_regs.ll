; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_sleeping_thread_to_gdb_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.inactive_task_frame = type { i64 }

@GDB_AX = common dso_local global i64 0, align 8
@GDB_BX = common dso_local global i64 0, align 8
@GDB_CX = common dso_local global i64 0, align 8
@GDB_DX = common dso_local global i64 0, align 8
@GDB_SI = common dso_local global i64 0, align 8
@GDB_DI = common dso_local global i64 0, align 8
@GDB_BP = common dso_local global i64 0, align 8
@GDB_PS = common dso_local global i64 0, align 8
@__KERNEL_CS = common dso_local global i8* null, align 8
@GDB_CS = common dso_local global i64 0, align 8
@__KERNEL_DS = common dso_local global i8* null, align 8
@GDB_SS = common dso_local global i64 0, align 8
@GDB_R8 = common dso_local global i64 0, align 8
@GDB_R9 = common dso_local global i64 0, align 8
@GDB_R10 = common dso_local global i64 0, align 8
@GDB_R11 = common dso_local global i64 0, align 8
@GDB_R12 = common dso_local global i64 0, align 8
@GDB_R13 = common dso_local global i64 0, align 8
@GDB_R14 = common dso_local global i64 0, align 8
@GDB_R15 = common dso_local global i64 0, align 8
@GDB_PC = common dso_local global i64 0, align 8
@GDB_SP = common dso_local global i64 0, align 8
@GDB_DS = common dso_local global i64 0, align 8
@GDB_ES = common dso_local global i64 0, align 8
@GDB_FS = common dso_local global i64 0, align 8
@GDB_GS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sleeping_thread_to_gdb_regs(i64* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i8**, align 8
  store i64* %0, i64** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = bitcast i64* %6 to i8**
  store i8** %7, i8*** %5, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = load i64, i64* @GDB_AX, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = load i64, i64* @GDB_BX, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64 0, i64* %13, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* @GDB_CX, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 0, i64* %16, align 8
  %17 = load i64*, i64** %3, align 8
  %18 = load i64, i64* @GDB_DX, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %3, align 8
  %21 = load i64, i64* @GDB_SI, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = load i64, i64* @GDB_DI, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.inactive_task_frame*
  %31 = getelementptr inbounds %struct.inactive_task_frame, %struct.inactive_task_frame* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %3, align 8
  %34 = load i64, i64* @GDB_BP, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 %32, i64* %35, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = load i64, i64* @GDB_PS, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  store i8* null, i8** %38, align 8
  %39 = load i8*, i8** @__KERNEL_CS, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = load i64, i64* @GDB_CS, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** @__KERNEL_DS, align 8
  %44 = load i8**, i8*** %5, align 8
  %45 = load i64, i64* @GDB_SS, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  store i8* %43, i8** %46, align 8
  %47 = load i64*, i64** %3, align 8
  %48 = load i64, i64* @GDB_R8, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 0, i64* %49, align 8
  %50 = load i64*, i64** %3, align 8
  %51 = load i64, i64* @GDB_R9, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 0, i64* %52, align 8
  %53 = load i64*, i64** %3, align 8
  %54 = load i64, i64* @GDB_R10, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 0, i64* %55, align 8
  %56 = load i64*, i64** %3, align 8
  %57 = load i64, i64* @GDB_R11, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load i64*, i64** %3, align 8
  %60 = load i64, i64* @GDB_R12, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 0, i64* %61, align 8
  %62 = load i64*, i64** %3, align 8
  %63 = load i64, i64* @GDB_R13, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 0, i64* %64, align 8
  %65 = load i64*, i64** %3, align 8
  %66 = load i64, i64* @GDB_R14, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 0, i64* %67, align 8
  %68 = load i64*, i64** %3, align 8
  %69 = load i64, i64* @GDB_R15, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 0, i64* %70, align 8
  %71 = load i64*, i64** %3, align 8
  %72 = load i64, i64* @GDB_PC, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 0, i64* %73, align 8
  %74 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %3, align 8
  %79 = load i64, i64* @GDB_SP, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %77, i64* %80, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
