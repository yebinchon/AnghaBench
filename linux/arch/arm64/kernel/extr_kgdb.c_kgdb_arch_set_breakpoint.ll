; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_kgdb.c_kgdb_arch_set_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_kgdb.c_kgdb_arch_set_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgdb_bkpt = type { i64, i64 }

@AARCH64_INSN_SIZE = common dso_local global i64 0, align 8
@BREAK_INSTR_SIZE = common dso_local global i64 0, align 8
@AARCH64_BREAK_KGDB_DYN_DBG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_arch_set_breakpoint(%struct.kgdb_bkpt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kgdb_bkpt*, align 8
  %4 = alloca i32, align 4
  store %struct.kgdb_bkpt* %0, %struct.kgdb_bkpt** %3, align 8
  %5 = load i64, i64* @AARCH64_INSN_SIZE, align 8
  %6 = load i64, i64* @BREAK_INSTR_SIZE, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUILD_BUG_ON(i32 %8)
  %10 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %11 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %15 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = call i32 @aarch64_insn_read(i8* %13, i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %25 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i64, i64* @AARCH64_BREAK_KGDB_DYN_DBG, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @aarch64_insn_write(i8* %27, i32 %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @aarch64_insn_read(i8*, i32*) #1

declare dso_local i32 @aarch64_insn_write(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
