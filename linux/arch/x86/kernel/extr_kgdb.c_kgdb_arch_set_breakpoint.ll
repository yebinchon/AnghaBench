; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_arch_set_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_kgdb_arch_set_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kgdb_bkpt = type { i32, i64, i32 }

@BP_BREAKPOINT = common dso_local global i32 0, align 4
@BREAK_INSTR_SIZE = common dso_local global i32 0, align 4
@arch_kgdb_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@text_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BP_POKE_BREAKPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_arch_set_breakpoint(%struct.kgdb_bkpt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kgdb_bkpt*, align 8
  %4 = alloca i32, align 4
  store %struct.kgdb_bkpt* %0, %struct.kgdb_bkpt** %3, align 8
  %5 = load i32, i32* @BP_BREAKPOINT, align 4
  %6 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %7 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %9 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %12 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load i32, i32* @BREAK_INSTR_SIZE, align 4
  %16 = call i32 @probe_kernel_read(i32 %10, i8* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %23 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arch_kgdb_ops, i32 0, i32 0), align 4
  %27 = load i32, i32* @BREAK_INSTR_SIZE, align 4
  %28 = call i32 @probe_kernel_write(i8* %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %50

33:                                               ; preds = %21
  %34 = call i64 @mutex_is_locked(i32* @text_mutex)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %50

39:                                               ; preds = %33
  %40 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %41 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arch_kgdb_ops, i32 0, i32 0), align 4
  %45 = load i32, i32* @BREAK_INSTR_SIZE, align 4
  %46 = call i32 @text_poke_kgdb(i8* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @BP_POKE_BREAKPOINT, align 4
  %48 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %49 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %39, %36, %31, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @probe_kernel_read(i32, i8*, i32) #1

declare dso_local i32 @probe_kernel_write(i8*, i32, i32) #1

declare dso_local i64 @mutex_is_locked(i32*) #1

declare dso_local i32 @text_poke_kgdb(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
