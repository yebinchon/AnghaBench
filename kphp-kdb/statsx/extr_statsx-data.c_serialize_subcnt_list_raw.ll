; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_serialize_subcnt_list_raw.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_serialize_subcnt_list_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.counter*)* @serialize_subcnt_list_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @serialize_subcnt_list_raw(i32* %0, %struct.counter* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.counter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.counter* %1, %struct.counter** %5, align 8
  %9 = load %struct.counter*, %struct.counter** %5, align 8
  %10 = getelementptr inbounds %struct.counter, %struct.counter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 1296637200
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %4, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32*, i32** %4, align 8
  store i32* %16, i32** %3, align 8
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.counter*, %struct.counter** %5, align 8
  %19 = getelementptr inbounds %struct.counter, %struct.counter* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %4, align 8
  store i32 0, i32* %23, align 4
  %25 = load i32*, i32** %4, align 8
  store i32* %25, i32** %3, align 8
  br label %61

26:                                               ; preds = %17
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %4, align 8
  store i32 64, i32* %27, align 4
  store i64 1, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %54, %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 64
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.counter*, %struct.counter** %5, align 8
  %35 = getelementptr inbounds %struct.counter, %struct.counter* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = and i64 %33, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.counter*, %struct.counter** %5, align 8
  %41 = getelementptr inbounds %struct.counter, %struct.counter* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %4, align 8
  store i32 %47, i32* %48, align 4
  br label %53

50:                                               ; preds = %32
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %4, align 8
  store i32 0, i32* %51, align 4
  br label %53

53:                                               ; preds = %50, %39
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load i64, i64* %6, align 8
  %58 = shl i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %29

59:                                               ; preds = %29
  %60 = load i32*, i32** %4, align 8
  store i32* %60, i32** %3, align 8
  br label %61

61:                                               ; preds = %59, %22, %13
  %62 = load i32*, i32** %3, align 8
  ret i32* %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
