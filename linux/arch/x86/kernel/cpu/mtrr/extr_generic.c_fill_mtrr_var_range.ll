; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_generic.c_fill_mtrr_var_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_generic.c_fill_mtrr_var_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mtrr_var_range* }
%struct.mtrr_var_range = type { i8*, i8*, i8*, i8* }

@mtrr_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_mtrr_var_range(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mtrr_var_range*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.mtrr_var_range*, %struct.mtrr_var_range** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mtrr_state, i32 0, i32 0), align 8
  store %struct.mtrr_var_range* %12, %struct.mtrr_var_range** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load %struct.mtrr_var_range*, %struct.mtrr_var_range** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mtrr_var_range, %struct.mtrr_var_range* %14, i64 %16
  %18 = getelementptr inbounds %struct.mtrr_var_range, %struct.mtrr_var_range* %17, i32 0, i32 3
  store i8* %13, i8** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load %struct.mtrr_var_range*, %struct.mtrr_var_range** %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mtrr_var_range, %struct.mtrr_var_range* %20, i64 %22
  %24 = getelementptr inbounds %struct.mtrr_var_range, %struct.mtrr_var_range* %23, i32 0, i32 2
  store i8* %19, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.mtrr_var_range*, %struct.mtrr_var_range** %11, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mtrr_var_range, %struct.mtrr_var_range* %26, i64 %28
  %30 = getelementptr inbounds %struct.mtrr_var_range, %struct.mtrr_var_range* %29, i32 0, i32 1
  store i8* %25, i8** %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.mtrr_var_range*, %struct.mtrr_var_range** %11, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mtrr_var_range, %struct.mtrr_var_range* %32, i64 %34
  %36 = getelementptr inbounds %struct.mtrr_var_range, %struct.mtrr_var_range* %35, i32 0, i32 0
  store i8* %31, i8** %36, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
