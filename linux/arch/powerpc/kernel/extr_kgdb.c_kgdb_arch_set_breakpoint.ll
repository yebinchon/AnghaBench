; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kgdb.c_kgdb_arch_set_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kgdb.c_kgdb_arch_set_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgdb_bkpt = type { i64, i64 }

@BREAK_INSTR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_arch_set_breakpoint(%struct.kgdb_bkpt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kgdb_bkpt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.kgdb_bkpt* %0, %struct.kgdb_bkpt** %3, align 8
  %7 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %8 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @probe_kernel_address(i32* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %33

18:                                               ; preds = %1
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* @BREAK_INSTR, align 4
  %21 = call i32 @patch_instruction(i32* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.kgdb_bkpt*, %struct.kgdb_bkpt** %3, align 8
  %30 = getelementptr inbounds %struct.kgdb_bkpt, %struct.kgdb_bkpt* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32 %28, i32* %32, align 4
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %27, %24, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @probe_kernel_address(i32*, i32) #1

declare dso_local i32 @patch_instruction(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
