; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_kgdb.c_kgdb_arch_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32*, i32 }

@kgdb_contthread = common dso_local global i32* null, align 8
@kgdb_single_step = common dso_local global i32 0, align 4
@PARISC_KGDB_COMPILED_BREAK_INSN = common dso_local global i32 0, align 4
@PSW_R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kgdb_arch_handle_exception(i32 %0, i32 %1, i32 %2, i8* %3, i8* %4, %struct.pt_regs* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.pt_regs*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.pt_regs* %5, %struct.pt_regs** %13, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %17, i8** %15, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  switch i32 %21, label %74 [
    i32 68, label %22
    i32 99, label %22
    i32 107, label %22
    i32 115, label %43
  ]

22:                                               ; preds = %6, %6, %6
  store i32* null, i32** @kgdb_contthread, align 8
  store i32 0, i32* @kgdb_single_step, align 4
  %23 = call i32 @kgdb_hex2long(i8** %15, i64* %14)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @kgdb_arch_set_pc(%struct.pt_regs* %26, i64 %27)
  br label %42

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PARISC_KGDB_COMPILED_BREAK_INSN, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %40 = call i32 @step_instruction_queue(%struct.pt_regs* %39)
  br label %41

41:                                               ; preds = %38, %32, %29
  br label %42

42:                                               ; preds = %41, %25
  store i32 0, i32* %7, align 4
  br label %75

43:                                               ; preds = %6
  store i32 1, i32* @kgdb_single_step, align 4
  %44 = call i32 @kgdb_hex2long(i8** %15, i64* %14)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @kgdb_arch_set_pc(%struct.pt_regs* %47, i64 %48)
  br label %66

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 9
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PARISC_KGDB_COMPILED_BREAK_INSN, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %61 = call i32 @step_instruction_queue(%struct.pt_regs* %60)
  %62 = call i32 @mtctl(i32 -1, i32 0)
  br label %65

63:                                               ; preds = %53, %50
  %64 = call i32 @mtctl(i32 0, i32 0)
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* @PSW_R, align 4
  %68 = load %struct.pt_regs*, %struct.pt_regs** %13, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  store i32 0, i32* %7, align 4
  br label %75

74:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %75

75:                                               ; preds = %74, %66, %42
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i32 @kgdb_hex2long(i8**, i64*) #1

declare dso_local i32 @kgdb_arch_set_pc(%struct.pt_regs*, i64) #1

declare dso_local i32 @step_instruction_queue(%struct.pt_regs*) #1

declare dso_local i32 @mtctl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
