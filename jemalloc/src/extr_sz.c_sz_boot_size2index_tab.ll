; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_sz.c_sz_boot_size2index_tab.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_sz.c_sz_boot_size2index_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SC_LOOKUP_MAXCLASS = common dso_local global i32 0, align 4
@SC_LG_TINY_MIN = common dso_local global i32 0, align 4
@SC_NSIZES = common dso_local global i32 0, align 4
@sz_size2index_tab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @sz_boot_size2index_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sz_boot_size2index_tab(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load i32, i32* @SC_LOOKUP_MAXCLASS, align 4
  %10 = load i32, i32* @SC_LG_TINY_MIN, align 4
  %11 = ashr i32 %9, %10
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %75, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SC_NSIZES, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp ult i64 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %78

24:                                               ; preds = %22
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %6, align 8
  %31 = call i32 @ZU(i32 1)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %31, %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ZU(i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %39, %42
  %44 = add nsw i32 %35, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @ZU(i32 1)
  %48 = load i32, i32* @SC_LG_TINY_MIN, align 4
  %49 = shl i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = add i64 %46, %50
  %52 = sub i64 %51, 1
  %53 = load i32, i32* @SC_LG_TINY_MIN, align 4
  %54 = zext i32 %53 to i64
  %55 = lshr i64 %52, %54
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %71, %24
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %3, align 8
  %63 = icmp ult i64 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  br i1 %65, label %66, label %74

66:                                               ; preds = %64
  %67 = load i32, i32* %5, align 4
  %68 = load i32*, i32** @sz_size2index_tab, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %4, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %4, align 8
  br label %56

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %14

78:                                               ; preds = %22
  ret void
}

declare dso_local i32 @ZU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
