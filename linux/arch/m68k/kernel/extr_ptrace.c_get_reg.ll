; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_ptrace.c_get_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/kernel/extr_ptrace.c_get_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@PT_USP = common dso_local global i32 0, align 4
@regoff = common dso_local global i64* null, align 8
@PT_SR = common dso_local global i32 0, align 4
@PT_PC = common dso_local global i32 0, align 4
@stkadj = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, i32)* @get_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_reg(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PT_USP, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64* %14, i64** %6, align 8
  br label %34

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i64*, i64** @regoff, align 8
  %18 = call i32 @ARRAY_SIZE(i64* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** @regoff, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %24, %29
  %31 = inttoptr i64 %30 to i64*
  store i64* %31, i64** %6, align 8
  br label %33

32:                                               ; preds = %15
  store i64 0, i64* %3, align 8
  br label %70

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %11
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @PT_SR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PT_PC, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %38, %34
  %43 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %44 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i64 @PT_REG(i32 %48)
  %50 = add nsw i64 %46, %49
  %51 = inttoptr i64 %50 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  %53 = load i64*, i64** %6, align 8
  %54 = ptrtoint i64* %53 to i64
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %54, %55
  %57 = inttoptr i64 %56 to i64*
  store i64* %57, i64** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @PT_SR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %42
  %62 = load i64*, i64** %6, align 8
  %63 = bitcast i64* %62 to i16*
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i64
  store i64 %65, i64* %3, align 8
  br label %70

66:                                               ; preds = %42
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i64*, i64** %6, align 8
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %3, align 8
  br label %70

70:                                               ; preds = %67, %61, %32
  %71 = load i64, i64* %3, align 8
  ret i64 %71
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @PT_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
