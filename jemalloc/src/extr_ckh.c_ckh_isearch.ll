; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_ckh.c_ckh_isearch.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_ckh.c_ckh_isearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i8*, i64*)* }

@SIZE_T_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8*)* @ckh_isearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ckh_isearch(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32 (i8*, i64*)*, i32 (i8*, i64*)** %14, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %18 = call i32 %15(i8* %16, i64* %17)
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %20 = load i64, i64* %19, align 16
  %21 = call i32 @ZU(i32 1)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 %21, %24
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = and i64 %20, %27
  store i64 %28, i64* %7, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @ckh_bucket_search(%struct.TYPE_4__* %29, i64 %30, i8* %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @SIZE_T_MAX, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %3, align 8
  br label %54

38:                                               ; preds = %2
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ZU(i32 1)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %41, %44
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = and i64 %40, %47
  store i64 %48, i64* %7, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @ckh_bucket_search(%struct.TYPE_4__* %49, i64 %50, i8* %51)
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %38, %36
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZU(i32) #1

declare dso_local i64 @ckh_bucket_search(%struct.TYPE_4__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
