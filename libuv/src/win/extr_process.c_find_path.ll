; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_process.c_find_path.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_process.c_find_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*)* @find_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @find_path(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  store i64* %0, i64** %3, align 8
  br label %4

4:                                                ; preds = %62, %1
  %5 = load i64*, i64** %3, align 8
  %6 = icmp ne i64* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i64*, i64** %3, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i1 [ false, %4 ], [ %10, %7 ]
  br i1 %12, label %13, label %68

13:                                               ; preds = %11
  %14 = load i64*, i64** %3, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 80
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i64*, i64** %3, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 112
  br i1 %22, label %23, label %61

23:                                               ; preds = %18, %13
  %24 = load i64*, i64** %3, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 65
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i64*, i64** %3, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 97
  br i1 %32, label %33, label %61

33:                                               ; preds = %28, %23
  %34 = load i64*, i64** %3, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 84
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i64*, i64** %3, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 116
  br i1 %42, label %43, label %61

43:                                               ; preds = %38, %33
  %44 = load i64*, i64** %3, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 72
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i64*, i64** %3, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 104
  br i1 %52, label %53, label %61

53:                                               ; preds = %48, %43
  %54 = load i64*, i64** %3, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 61
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i64*, i64** %3, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 5
  store i64* %60, i64** %2, align 8
  br label %69

61:                                               ; preds = %53, %48, %38, %28, %18
  br label %62

62:                                               ; preds = %61
  %63 = load i64*, i64** %3, align 8
  %64 = call i64 @wcslen(i64* %63)
  %65 = add nsw i64 %64, 1
  %66 = load i64*, i64** %3, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 %65
  store i64* %67, i64** %3, align 8
  br label %4

68:                                               ; preds = %11
  store i64* null, i64** %2, align 8
  br label %69

69:                                               ; preds = %68, %58
  %70 = load i64*, i64** %2, align 8
  ret i64* %70
}

declare dso_local i64 @wcslen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
