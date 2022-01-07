; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_bin_info.c_bin_infos_init.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_bin_info.c_bin_infos_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i64 }

@SC_NBINS = common dso_local global i32 0, align 4
@LG_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, %struct.TYPE_8__*)* @bin_infos_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bin_infos_init(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %11 = load i32, i32* @SC_NBINS, align 4
  %12 = zext i32 %11 to i64
  %13 = load i32, i32* @SC_NBINS, align 4
  %14 = zext i32 %13 to i64
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %75, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SC_NBINS, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %9, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = shl i64 1, %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = shl i64 %36, %39
  %41 = add i64 %33, %40
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @LG_PAGE, align 4
  %48 = shl i32 %46, %47
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = udiv i64 %54, %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @BITMAP_INFO_INITIALIZER(i64 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %19
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %15

78:                                               ; preds = %15
  ret void
}

declare dso_local i32 @BITMAP_INFO_INITIALIZER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
