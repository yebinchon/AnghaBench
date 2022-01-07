; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_update_tm.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_update_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tm*, %struct.tm*, i64)* @update_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @update_tm(%struct.tm* %0, %struct.tm* %1, i64 %2) #0 {
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tm* %0, %struct.tm** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.tm*, %struct.tm** %4, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.tm*, %struct.tm** %5, align 8
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.tm*, %struct.tm** %4, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %12, %3
  %19 = load %struct.tm*, %struct.tm** %4, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.tm*, %struct.tm** %5, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.tm*, %struct.tm** %4, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.tm*, %struct.tm** %4, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load %struct.tm*, %struct.tm** %5, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.tm*, %struct.tm** %4, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.tm*, %struct.tm** %4, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tm*, %struct.tm** %5, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load %struct.tm*, %struct.tm** %4, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %47, %34
  br label %53

53:                                               ; preds = %52, %29
  %54 = load %struct.tm*, %struct.tm** %4, align 8
  %55 = call i64 @mktime(%struct.tm* %54)
  %56 = load i64, i64* %6, align 8
  %57 = sub nsw i64 %55, %56
  store i64 %57, i64* %7, align 8
  %58 = load %struct.tm*, %struct.tm** %4, align 8
  %59 = call i32 @localtime_r(i64* %7, %struct.tm* %58)
  %60 = load i64, i64* %7, align 8
  ret i64 %60
}

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local i32 @localtime_r(i64*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
