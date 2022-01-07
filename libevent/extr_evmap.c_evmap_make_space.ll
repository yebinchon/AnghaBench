; ModuleID = '/home/carl/AnghaBench/libevent/extr_evmap.c_evmap_make_space.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evmap.c_evmap_make_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_signal_map = type { i32, i8** }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_signal_map*, i32, i32)* @evmap_make_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evmap_make_space(%struct.event_signal_map* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_signal_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  store %struct.event_signal_map* %0, %struct.event_signal_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %11 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %80

15:                                               ; preds = %3
  %16 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %17 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %22 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 32, %24 ]
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @INT_MAX, align 4
  %29 = sdiv i32 %28, 2
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %81

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %37, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %33

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @INT_MAX, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sdiv i32 %42, %43
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %4, align 4
  br label %81

47:                                               ; preds = %40
  %48 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %49 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %48, i32 0, i32 1
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call i64 @mm_realloc(i8** %50, i32 %53)
  %55 = inttoptr i64 %54 to i8**
  store i8** %55, i8*** %9, align 8
  %56 = load i8**, i8*** %9, align 8
  %57 = icmp eq i8** %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %81

59:                                               ; preds = %47
  %60 = load i8**, i8*** %9, align 8
  %61 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %62 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %60, i64 %64
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %68 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %66, %69
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %70, %71
  %73 = call i32 @memset(i8** %65, i32 0, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %76 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i8**, i8*** %9, align 8
  %78 = load %struct.event_signal_map*, %struct.event_signal_map** %5, align 8
  %79 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %78, i32 0, i32 1
  store i8** %77, i8*** %79, align 8
  br label %80

80:                                               ; preds = %59, %3
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %58, %46, %31
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @mm_realloc(i8**, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
