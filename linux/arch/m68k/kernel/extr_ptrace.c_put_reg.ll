; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_ptrace.c_put_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_ptrace.c_put_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@PT_USP = common dso_local global i32 0, align 4
@regoff = common dso_local global i64* null, align 8
@PT_SR = common dso_local global i32 0, align 4
@PT_PC = common dso_local global i32 0, align 4
@stkadj = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, i64)* @put_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_reg(%struct.task_struct* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PT_USP, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64* %16, i64** %8, align 8
  br label %36

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i64*, i64** @regoff, align 8
  %20 = call i32 @ARRAY_SIZE(i64* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** @regoff, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  %33 = inttoptr i64 %32 to i64*
  store i64* %33, i64** %8, align 8
  br label %35

34:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %72

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PT_SR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PT_PC, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %40, %36
  %45 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %46 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i64 @PT_REG(i32 %50)
  %52 = add nsw i64 %48, %51
  %53 = inttoptr i64 %52 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = ptrtoint i64* %55 to i64
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %56, %57
  %59 = inttoptr i64 %58 to i64*
  store i64* %59, i64** %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @PT_SR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %44
  %64 = load i64, i64* %7, align 8
  %65 = trunc i64 %64 to i16
  %66 = load i64*, i64** %8, align 8
  %67 = bitcast i64* %66 to i16*
  store i16 %65, i16* %67, align 2
  store i32 0, i32* %4, align 4
  br label %72

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68, %40
  %70 = load i64, i64* %7, align 8
  %71 = load i64*, i64** %8, align 8
  store i64 %70, i64* %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %63, %34
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @PT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
