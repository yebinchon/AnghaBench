; ModuleID = '/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-data.c_cmp_spellers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-data.c_cmp_spellers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.speller = type { x86_fp80** }

@sort_idx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_spellers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_spellers(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.speller**, align 8
  %7 = alloca %struct.speller**, align 8
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.speller**
  store %struct.speller** %11, %struct.speller*** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.speller**
  store %struct.speller** %13, %struct.speller*** %7, align 8
  %14 = load %struct.speller**, %struct.speller*** %6, align 8
  %15 = load %struct.speller*, %struct.speller** %14, align 8
  %16 = getelementptr inbounds %struct.speller, %struct.speller* %15, i32 0, i32 0
  %17 = load x86_fp80**, x86_fp80*** %16, align 8
  %18 = load i64, i64* @sort_idx, align 8
  %19 = getelementptr inbounds x86_fp80*, x86_fp80** %17, i64 %18
  %20 = load x86_fp80*, x86_fp80** %19, align 8
  %21 = getelementptr inbounds x86_fp80, x86_fp80* %20, i64 0
  %22 = load x86_fp80, x86_fp80* %21, align 16
  store x86_fp80 %22, x86_fp80* %8, align 16
  %23 = load %struct.speller**, %struct.speller*** %7, align 8
  %24 = load %struct.speller*, %struct.speller** %23, align 8
  %25 = getelementptr inbounds %struct.speller, %struct.speller* %24, i32 0, i32 0
  %26 = load x86_fp80**, x86_fp80*** %25, align 8
  %27 = load i64, i64* @sort_idx, align 8
  %28 = getelementptr inbounds x86_fp80*, x86_fp80** %26, i64 %27
  %29 = load x86_fp80*, x86_fp80** %28, align 8
  %30 = getelementptr inbounds x86_fp80, x86_fp80* %29, i64 1
  %31 = load x86_fp80, x86_fp80* %30, align 16
  %32 = load x86_fp80, x86_fp80* %8, align 16
  %33 = fmul x86_fp80 %32, %31
  store x86_fp80 %33, x86_fp80* %8, align 16
  %34 = load %struct.speller**, %struct.speller*** %7, align 8
  %35 = load %struct.speller*, %struct.speller** %34, align 8
  %36 = getelementptr inbounds %struct.speller, %struct.speller* %35, i32 0, i32 0
  %37 = load x86_fp80**, x86_fp80*** %36, align 8
  %38 = load i64, i64* @sort_idx, align 8
  %39 = getelementptr inbounds x86_fp80*, x86_fp80** %37, i64 %38
  %40 = load x86_fp80*, x86_fp80** %39, align 8
  %41 = getelementptr inbounds x86_fp80, x86_fp80* %40, i64 0
  %42 = load x86_fp80, x86_fp80* %41, align 16
  store x86_fp80 %42, x86_fp80* %9, align 16
  %43 = load %struct.speller**, %struct.speller*** %6, align 8
  %44 = load %struct.speller*, %struct.speller** %43, align 8
  %45 = getelementptr inbounds %struct.speller, %struct.speller* %44, i32 0, i32 0
  %46 = load x86_fp80**, x86_fp80*** %45, align 8
  %47 = load i64, i64* @sort_idx, align 8
  %48 = getelementptr inbounds x86_fp80*, x86_fp80** %46, i64 %47
  %49 = load x86_fp80*, x86_fp80** %48, align 8
  %50 = getelementptr inbounds x86_fp80, x86_fp80* %49, i64 1
  %51 = load x86_fp80, x86_fp80* %50, align 16
  %52 = load x86_fp80, x86_fp80* %9, align 16
  %53 = fmul x86_fp80 %52, %51
  store x86_fp80 %53, x86_fp80* %9, align 16
  %54 = load x86_fp80, x86_fp80* %8, align 16
  %55 = load x86_fp80, x86_fp80* %9, align 16
  %56 = fcmp ogt x86_fp80 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

58:                                               ; preds = %2
  %59 = load x86_fp80, x86_fp80* %8, align 16
  %60 = load x86_fp80, x86_fp80* %9, align 16
  %61 = fcmp olt x86_fp80 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %64

63:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %57
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
