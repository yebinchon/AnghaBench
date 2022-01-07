; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_tm_to_time_t.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_tm_to_time_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64 }

@tm_to_time_t.mdays = internal constant [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*)* @tm_to_time_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm_to_time_t(%struct.tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  %7 = load %struct.tm*, %struct.tm** %3, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 70
  store i32 %10, i32* %4, align 4
  %11 = load %struct.tm*, %struct.tm** %3, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.tm*, %struct.tm** %3, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 129
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %1
  store i32 -1, i32* %2, align 4
  br label %93

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 11
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  store i32 -1, i32* %2, align 4
  br label %93

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 2
  %36 = srem i32 %35, 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.tm*, %struct.tm** %3, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.tm*, %struct.tm** %3, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.tm*, %struct.tm** %3, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %46, %41
  store i32 -1, i32* %2, align 4
  br label %93

57:                                               ; preds = %51
  %58 = load i32, i32* %4, align 4
  %59 = mul nsw i32 %58, 365
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  %62 = sdiv i32 %61, 4
  %63 = add nsw i32 %59, %62
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [12 x i32], [12 x i32]* @tm_to_time_t.mdays, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %63, %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %68, %69
  %71 = mul nsw i32 %70, 24
  %72 = mul nsw i32 %71, 60
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 60
  %75 = load %struct.tm*, %struct.tm** %3, align 8
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 60
  %79 = mul nsw i32 %78, 60
  %80 = sext i32 %79 to i64
  %81 = add i64 %74, %80
  %82 = load %struct.tm*, %struct.tm** %3, align 8
  %83 = getelementptr inbounds %struct.tm, %struct.tm* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %84, 60
  %86 = sext i32 %85 to i64
  %87 = add i64 %81, %86
  %88 = load %struct.tm*, %struct.tm** %3, align 8
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %87, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %57, %56, %29, %22
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
