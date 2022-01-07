; ModuleID = '/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_kgdb.c_dbg_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_kgdb.c_dbg_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.pt_regs = type { i32 }

@DBG_MAX_REG_NUM = common dso_local global i32 0, align 4
@dbg_reg_def = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dbg_get_reg(i32 %0, i8* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DBG_MAX_REG_NUM, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i8* null, i8** %4, align 8
  br label %76

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %32 [
    i32 129, label %17
  ]

17:                                               ; preds = %15
  %18 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %19 = bitcast %struct.pt_regs* %18 to i8*
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_reg_def, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %19, i64 %26
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %69

32:                                               ; preds = %15
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_reg_def, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %32
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %43 = bitcast %struct.pt_regs* %42 to i8*
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_reg_def, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %43, i64 %50
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_reg_def, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memcpy(i8* %41, i8* %51, i32 %57)
  br label %68

59:                                               ; preds = %32
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_reg_def, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @memset(i8* %60, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %59, %40
  br label %69

69:                                               ; preds = %68, %17
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dbg_reg_def, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %4, align 8
  br label %76

76:                                               ; preds = %69, %14
  %77 = load i8*, i8** %4, align 8
  ret i8* %77
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
