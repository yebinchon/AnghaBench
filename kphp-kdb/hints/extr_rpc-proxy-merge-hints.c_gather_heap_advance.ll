; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_rpc-proxy-merge-hints.c_gather_heap_advance.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_rpc-proxy-merge-hints.c_gather_heap_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GH_N = common dso_local global i32 0, align 4
@GH = common dso_local global %struct.TYPE_6__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gather_heap_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_heap_advance() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GH_N, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %85

7:                                                ; preds = %0
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @GH, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %8, i64 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %1, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %7
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @GH, align 8
  %17 = load i32, i32* @GH_N, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @GH_N, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 %19
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %1, align 8
  %22 = load i32, i32* @GH_N, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %85

25:                                               ; preds = %15
  br label %29

26:                                               ; preds = %7
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %28 = call i32 @load_heap_v(%struct.TYPE_6__* %27)
  br label %29

29:                                               ; preds = %26, %25
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %68
  %31 = load i32, i32* %2, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @GH_N, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %79

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @GH_N, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @GH, align 8
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @GH, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %48, i64 %50
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i64 @gh_entry_less(%struct.TYPE_6__* %47, %struct.TYPE_6__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %41, %37
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @GH, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %65 = call i64 @gh_entry_less(%struct.TYPE_6__* %63, %struct.TYPE_6__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %79

68:                                               ; preds = %58
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @GH, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %69, i64 %71
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @GH, align 8
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %74, i64 %76
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %77, align 8
  %78 = load i32, i32* %3, align 4
  store i32 %78, i32* %2, align 4
  br label %30

79:                                               ; preds = %67, %36
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @GH, align 8
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 %83
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %84, align 8
  br label %85

85:                                               ; preds = %79, %24, %6
  ret void
}

declare dso_local i32 @load_heap_v(%struct.TYPE_6__*) #1

declare dso_local i64 @gh_entry_less(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
