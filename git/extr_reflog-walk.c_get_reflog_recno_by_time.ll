; ModuleID = '/home/carl/AnghaBench/git/extr_reflog-walk.c_get_reflog_recno_by_time.c'
source_filename = "/home/carl/AnghaBench/git/extr_reflog-walk.c_get_reflog_recno_by_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complete_reflogs = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.complete_reflogs*, i64)* @get_reflog_recno_by_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_reflog_recno_by_time(%struct.complete_reflogs* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.complete_reflogs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.complete_reflogs* %0, %struct.complete_reflogs** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.complete_reflogs*, %struct.complete_reflogs** %4, align 8
  %8 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.complete_reflogs*, %struct.complete_reflogs** %4, align 8
  %17 = getelementptr inbounds %struct.complete_reflogs, %struct.complete_reflogs* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %15, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  br label %11

31:                                               ; preds = %11
  store i32 -1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
