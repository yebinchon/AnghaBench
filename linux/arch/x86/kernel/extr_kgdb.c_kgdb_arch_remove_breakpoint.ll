; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_arch_remove_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_arch_remove_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgdb_bkpt = type { i64, i64, i64 }

@BP_POKE_BREAKPOINT = common dso_local global i64 0, align 8
@text_mutex = common dso_local global i32 0, align 4
@BREAK_INSTR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_arch_remove_breakpoint(%struct.kgdb_bkpt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kgdb_bkpt*, align 8
  store %struct.kgdb_bkpt* %0, %struct.kgdb_bkpt** %3, align 8
  %4 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %5 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BP_POKE_BREAKPOINT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %24

10:                                               ; preds = %1
  %11 = call i64 @mutex_is_locked(i32* @text_mutex)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %24

14:                                               ; preds = %10
  %15 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %16 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %20 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @BREAK_INSTR_SIZE, align 4
  %23 = call i32 @text_poke_kgdb(i8* %18, i64 %21, i32 %22)
  store i32 0, i32* %2, align 4
  br label %35

24:                                               ; preds = %13, %9
  %25 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %26 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %30 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i32, i32* @BREAK_INSTR_SIZE, align 4
  %34 = call i32 @probe_kernel_write(i8* %28, i8* %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %24, %14
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @mutex_is_locked(i32*) #1

declare dso_local i32 @text_poke_kgdb(i8*, i64, i32) #1

declare dso_local i32 @probe_kernel_write(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
