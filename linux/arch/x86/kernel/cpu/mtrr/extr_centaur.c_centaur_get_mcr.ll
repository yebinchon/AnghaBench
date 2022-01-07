; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_centaur.c_centaur_get_mcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_centaur.c_centaur_get_mcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@centaur_mcr = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MTRR_TYPE_WRCOMB = common dso_local global i32 0, align 4
@centaur_mcr_type = common dso_local global i32 0, align 4
@MTRR_TYPE_UNCACHABLE = common dso_local global i32 0, align 4
@MTRR_TYPE_WRBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64*, i32*)* @centaur_get_mcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @centaur_get_mcr(i32 %0, i64* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @centaur_mcr, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = load i64*, i64** %6, align 8
  store i64 %17, i64* %18, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @centaur_mcr, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, -4096
  %26 = sub i32 0, %25
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = lshr i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = load i64*, i64** %7, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* @MTRR_TYPE_WRCOMB, align 4
  %32 = load i32*, i32** %8, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @centaur_mcr_type, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %48

35:                                               ; preds = %4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @centaur_mcr, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 31
  %43 = and i32 %42, 2
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @MTRR_TYPE_UNCACHABLE, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %35, %4
  %49 = load i32, i32* @centaur_mcr_type, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @centaur_mcr, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 31
  %59 = icmp eq i32 %58, 25
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @MTRR_TYPE_WRBACK, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %51, %48
  %64 = load i32, i32* @centaur_mcr_type, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @centaur_mcr, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 31
  %74 = icmp eq i32 %73, 31
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @MTRR_TYPE_WRBACK, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %66, %63
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
