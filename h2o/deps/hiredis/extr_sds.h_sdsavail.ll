; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_sds.h_sdsavail.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_sds.h_sdsavail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@SDS_TYPE_MASK = common dso_local global i8 0, align 1
@sh = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @sdsavail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sdsavail(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 -1
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %4, align 1
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* @SDS_TYPE_MASK, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %9, %11
  switch i32 %12, label %54 [
    i32 130, label %13
    i32 128, label %14
    i32 132, label %24
    i32 131, label %34
    i32 129, label %44
  ]

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %55

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @SDS_HDR_VAR(i32 8, i8* %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  store i64 %23, i64* %2, align 8
  br label %55

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @SDS_HDR_VAR(i32 16, i8* %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %29, %32
  store i64 %33, i64* %2, align 8
  br label %55

34:                                               ; preds = %1
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @SDS_HDR_VAR(i32 32, i8* %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %39, %42
  store i64 %43, i64* %2, align 8
  br label %55

44:                                               ; preds = %1
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @SDS_HDR_VAR(i32 64, i8* %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  store i64 %53, i64* %2, align 8
  br label %55

54:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %55

55:                                               ; preds = %54, %44, %34, %24, %14, %13
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i32 @SDS_HDR_VAR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
