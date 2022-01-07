; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_dbg_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_kgdb.c_dbg_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i32 }

@GDB_SP = common dso_local global i32 0, align 4
@GDB_ORIG_AX = common dso_local global i32 0, align 4
@dbg_reg_def = common dso_local global %struct.TYPE_2__* null, align 8
@GDB_FS = common dso_local global i32 0, align 4
@GDB_GS = common dso_local global i32 0, align 4
@GDB_SS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_set_reg(i32 %0, i8* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GDB_SP, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GDB_ORIG_AX, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %44

16:                                               ; preds = %11
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_reg_def, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  %25 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %26 = bitcast %struct.pt_regs* %25 to i8*
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_reg_def, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %26, i64 %33
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_reg_def, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i8* %34, i8* %35, i32 %41)
  br label %43

43:                                               ; preds = %24, %16
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
