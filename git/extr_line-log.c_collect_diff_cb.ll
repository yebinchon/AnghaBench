; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_collect_diff_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_collect_diff_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collect_diff_cbdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i8*)* @collect_diff_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_diff_cb(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.collect_diff_cbdata*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.collect_diff_cbdata*
  store %struct.collect_diff_cbdata* %13, %struct.collect_diff_cbdata** %11, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load %struct.collect_diff_cbdata*, %struct.collect_diff_cbdata** %11, align 8
  %18 = getelementptr inbounds %struct.collect_diff_cbdata, %struct.collect_diff_cbdata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @range_set_append(i32* %20, i64 %21, i64 %24)
  br label %26

26:                                               ; preds = %16, %5
  %27 = load i64, i64* %9, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.collect_diff_cbdata*, %struct.collect_diff_cbdata** %11, align 8
  %31 = getelementptr inbounds %struct.collect_diff_cbdata, %struct.collect_diff_cbdata* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @range_set_append(i32* %33, i64 %34, i64 %37)
  br label %39

39:                                               ; preds = %29, %26
  ret i32 0
}

declare dso_local i32 @range_set_append(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
