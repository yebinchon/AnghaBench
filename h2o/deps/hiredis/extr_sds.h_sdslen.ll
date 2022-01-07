; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_sds.h_sdslen.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_sds.h_sdslen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@SDS_TYPE_MASK = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @sdslen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sdslen(i8* %0) #0 {
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
  switch i32 %12, label %36 [
    i32 130, label %13
    i32 128, label %16
    i32 132, label %21
    i32 131, label %26
    i32 129, label %31
  ]

13:                                               ; preds = %1
  %14 = load i8, i8* %4, align 1
  %15 = call i64 @SDS_TYPE_5_LEN(i8 zeroext %14)
  store i64 %15, i64* %2, align 8
  br label %37

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = call %struct.TYPE_2__* @SDS_HDR(i32 8, i8* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %2, align 8
  br label %37

21:                                               ; preds = %1
  %22 = load i8*, i8** %3, align 8
  %23 = call %struct.TYPE_2__* @SDS_HDR(i32 16, i8* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %2, align 8
  br label %37

26:                                               ; preds = %1
  %27 = load i8*, i8** %3, align 8
  %28 = call %struct.TYPE_2__* @SDS_HDR(i32 32, i8* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %2, align 8
  br label %37

31:                                               ; preds = %1
  %32 = load i8*, i8** %3, align 8
  %33 = call %struct.TYPE_2__* @SDS_HDR(i32 64, i8* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %2, align 8
  br label %37

36:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %37

37:                                               ; preds = %36, %31, %26, %21, %16, %13
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i64 @SDS_TYPE_5_LEN(i8 zeroext) #1

declare dso_local %struct.TYPE_2__* @SDS_HDR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
