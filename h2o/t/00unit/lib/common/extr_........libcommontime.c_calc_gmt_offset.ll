; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommontime.c_calc_gmt_offset.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommontime.c_calc_gmt_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tm*)* @calc_gmt_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_gmt_offset(i32 %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.tm, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.tm* %1, %struct.tm** %4, align 8
  %8 = call i32 @gmtime_r(i32* %3, %struct.tm* %5)
  %9 = load %struct.tm*, %struct.tm** %4, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %11, %13
  %15 = mul nsw i32 %14, 60
  %16 = load %struct.tm*, %struct.tm** %4, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %18, %20
  %22 = add nsw i32 %15, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.tm*, %struct.tm** %4, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %2
  %30 = load %struct.tm*, %struct.tm** %4, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.tm*, %struct.tm** %4, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %39, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  br label %52

44:                                               ; preds = %29
  %45 = load %struct.tm*, %struct.tm** %4, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %47, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %44, %36
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, 24
  %55 = mul nsw i32 %54, 60
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %52, %2
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @gmtime_r(i32*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
