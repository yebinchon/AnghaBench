; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_cAdd.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_cAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collection = type { i32, i64* }

@MAX_C_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.collection*, i32, i32)* @cAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cAdd(%struct.collection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.collection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.collection* %0, %struct.collection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = shl i64 %12, 32
  %14 = add nsw i64 %10, %13
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %33, %3
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.collection*, %struct.collection** %4, align 8
  %18 = getelementptr inbounds %struct.collection, %struct.collection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.collection*, %struct.collection** %4, align 8
  %23 = getelementptr inbounds %struct.collection, %struct.collection* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %53

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load %struct.collection*, %struct.collection** %4, align 8
  %38 = getelementptr inbounds %struct.collection, %struct.collection* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MAX_C_NUM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.collection*, %struct.collection** %4, align 8
  %45 = getelementptr inbounds %struct.collection, %struct.collection* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.collection*, %struct.collection** %4, align 8
  %48 = getelementptr inbounds %struct.collection, %struct.collection* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i64, i64* %46, i64 %51
  store i64 %43, i64* %52, align 8
  br label %53

53:                                               ; preds = %31, %42, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
