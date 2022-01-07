; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_set_tm_yday.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_set_tm_yday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32 }

@set_tm_yday.d = internal constant [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*)* @set_tm_yday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tm_yday(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %2, align 8
  %7 = load %struct.tm*, %struct.tm** %2, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.tm*, %struct.tm** %2, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 1900, %12
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %14 = load %struct.tm*, %struct.tm** %2, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  %20 = srem i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = srem i32 %23, 100
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %4, align 4
  %28 = srem i32 %27, 400
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %26, %1
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %3, align 4
  %39 = icmp sgt i32 %38, 11
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = srem i32 %41, 12
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [12 x i32], [12 x i32]* @set_tm_yday.d, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %47, %48
  %50 = load %struct.tm*, %struct.tm** %2, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.tm*, %struct.tm** %2, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %43
  %61 = load %struct.tm*, %struct.tm** %2, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 367
  br label %65

65:                                               ; preds = %60, %43
  %66 = phi i1 [ true, %43 ], [ %64, %60 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.tm*, %struct.tm** %2, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
