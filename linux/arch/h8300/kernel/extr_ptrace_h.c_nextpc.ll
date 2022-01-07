; ModuleID = '/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_ptrace_h.c_nextpc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/h8300/kernel/extr_ptrace_h.c_nextpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.optable* }
%struct.optable = type { i8, i8, i64 }
%struct.task_struct = type { i32 }

@optables = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16* (%struct.task_struct*, i16*)* @nextpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i16* @nextpc(%struct.task_struct* %0, i16* %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca %struct.optable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i16* %1, i16** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @optables, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.optable*, %struct.optable** %12, align 8
  store %struct.optable* %13, %struct.optable** %6, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @optables, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i16*, i16** %5, align 8
  %19 = bitcast i16* %18 to i8*
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %7, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %9, align 1
  br label %23

23:                                               ; preds = %74, %2
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = load %struct.optable*, %struct.optable** %6, align 8
  %27 = getelementptr inbounds %struct.optable, %struct.optable* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 8
  %29 = zext i8 %28 to i32
  %30 = and i32 %25, %29
  %31 = load %struct.optable*, %struct.optable** %6, align 8
  %32 = getelementptr inbounds %struct.optable, %struct.optable* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %23
  %37 = load %struct.optable*, %struct.optable** %6, align 8
  %38 = getelementptr inbounds %struct.optable, %struct.optable* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @optables, align 8
  %43 = load %struct.optable*, %struct.optable** %6, align 8
  %44 = getelementptr inbounds %struct.optable, %struct.optable* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load %struct.optable*, %struct.optable** %48, align 8
  store %struct.optable* %49, %struct.optable** %6, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @optables, align 8
  %51 = load %struct.optable*, %struct.optable** %6, align 8
  %52 = getelementptr inbounds %struct.optable, %struct.optable* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %7, align 8
  %61 = load i8, i8* %59, align 1
  store i8 %61, i8* %9, align 1
  br label %69

62:                                               ; preds = %36
  %63 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %64 = load %struct.optable*, %struct.optable** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i16*, i16** %5, align 8
  %67 = load i8, i8* %9, align 1
  %68 = call i16* @decode(%struct.task_struct* %63, %struct.optable* %64, i8* %65, i16* %66, i8 zeroext %67)
  store i16* %68, i16** %3, align 8
  br label %79

69:                                               ; preds = %41
  br label %73

70:                                               ; preds = %23
  %71 = load %struct.optable*, %struct.optable** %6, align 8
  %72 = getelementptr inbounds %struct.optable, %struct.optable* %71, i32 1
  store %struct.optable* %72, %struct.optable** %6, align 8
  br label %73

73:                                               ; preds = %70, %69
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %23, label %78

78:                                               ; preds = %74
  store i16* null, i16** %3, align 8
  br label %79

79:                                               ; preds = %78, %62
  %80 = load i16*, i16** %3, align 8
  ret i16* %80
}

declare dso_local i16* @decode(%struct.task_struct*, %struct.optable*, i8*, i16*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
