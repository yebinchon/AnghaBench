; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_ckh.c_ckh_try_insert.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_ckh.c_ckh_try_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i8*, i64*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**, i8**)* @ckh_try_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ckh_try_insert(%struct.TYPE_5__* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca [2 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32 (i8*, i64*)*, i32 (i8*, i64*)** %17, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %21 = call i32 %18(i8* %19, i64* %20)
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %23 = load i64, i64* %22, align 16
  %24 = call i32 @ZU(i32 1)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %24, %27
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = and i64 %23, %30
  store i64 %31, i64* %9, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @ckh_try_bucket_insert(%struct.TYPE_5__* %32, i64 %33, i8* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

39:                                               ; preds = %3
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ZU(i32 1)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %42, %45
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = and i64 %41, %48
  store i64 %49, i64* %9, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @ckh_try_bucket_insert(%struct.TYPE_5__* %50, i64 %51, i8* %52, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %63

57:                                               ; preds = %39
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i8**, i8*** %6, align 8
  %61 = load i8**, i8*** %7, align 8
  %62 = call i32 @ckh_evict_reloc_insert(%struct.TYPE_5__* %58, i64 %59, i8** %60, i8** %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %56, %38
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @ZU(i32) #1

declare dso_local i32 @ckh_try_bucket_insert(%struct.TYPE_5__*, i64, i8*, i8*) #1

declare dso_local i32 @ckh_evict_reloc_insert(%struct.TYPE_5__*, i64, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
