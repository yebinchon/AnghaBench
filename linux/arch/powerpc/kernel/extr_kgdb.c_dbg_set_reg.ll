; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kgdb.c_dbg_set_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_kgdb.c_dbg_set_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.pt_regs = type { i32 }

@DBG_MAX_REG_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dbg_reg_def = common dso_local global %struct.TYPE_5__* null, align 8
@current = common dso_local global %struct.TYPE_6__* null, align 8

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
  %9 = load i32, i32* @DBG_MAX_REG_NUM, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %50

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 32
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 64
  br i1 %22, label %23, label %42

23:                                               ; preds = %20, %17
  %24 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %25 = bitcast %struct.pt_regs* %24 to i8*
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dbg_reg_def, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %25, i64 %32
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dbg_reg_def, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i8* %33, i8* %34, i32 %40)
  br label %42

42:                                               ; preds = %23, %20
  %43 = load i32, i32* %5, align 4
  %44 = icmp sge i32 %43, 32
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 64
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %50

49:                                               ; preds = %45, %42
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
