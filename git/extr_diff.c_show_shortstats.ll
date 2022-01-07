; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_show_shortstats.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_show_shortstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diffstat_t = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }
%struct.diff_options = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diffstat_t*, %struct.diff_options*)* @show_shortstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_shortstats(%struct.diffstat_t* %0, %struct.diff_options* %1) #0 {
  %3 = alloca %struct.diffstat_t*, align 8
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.diffstat_t* %0, %struct.diffstat_t** %3, align 8
  store %struct.diff_options* %1, %struct.diff_options** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.diffstat_t*, %struct.diffstat_t** %3, align 8
  %12 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.diffstat_t*, %struct.diffstat_t** %3, align 8
  %15 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %103

19:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %94, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.diffstat_t*, %struct.diffstat_t** %3, align 8
  %23 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %97

26:                                               ; preds = %20
  %27 = load %struct.diffstat_t*, %struct.diffstat_t** %3, align 8
  %28 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  %36 = load %struct.diffstat_t*, %struct.diffstat_t** %3, align 8
  %37 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.diffstat_t*, %struct.diffstat_t** %3, align 8
  %46 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %49
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %26
  %56 = load %struct.diffstat_t*, %struct.diffstat_t** %3, align 8
  %57 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %26
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  br label %93

74:                                               ; preds = %66, %55
  %75 = load %struct.diffstat_t*, %struct.diffstat_t** %3, align 8
  %76 = getelementptr inbounds %struct.diffstat_t, %struct.diffstat_t* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %77, i64 %79
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %85, %74
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %20

97:                                               ; preds = %20
  %98 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @print_stat_summary_inserts_deletes(%struct.diff_options* %98, i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %18
  ret void
}

declare dso_local i32 @print_stat_summary_inserts_deletes(%struct.diff_options*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
