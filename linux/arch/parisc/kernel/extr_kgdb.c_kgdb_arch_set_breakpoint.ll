; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kgdb.c_kgdb_arch_set_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kgdb.c_kgdb_arch_set_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kgdb_bkpt = type { i64, i32 }

@BREAK_INSTR_SIZE = common dso_local global i32 0, align 4
@arch_kgdb_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_arch_set_breakpoint(%struct.kgdb_bkpt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kgdb_bkpt*, align 8
  %4 = alloca i32, align 4
  store %struct.kgdb_bkpt* %0, %struct.kgdb_bkpt** %3, align 8
  %5 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %6 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %9 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32, i32* @BREAK_INSTR_SIZE, align 4
  %13 = call i32 @probe_kernel_read(i32 %7, i8* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %20 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arch_kgdb_ops, i32 0, i32 0), align 4
  %24 = call i32 @__patch_text(i8* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @probe_kernel_read(i32, i8*, i32) #1

declare dso_local i32 @__patch_text(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
