; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_groups_short_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_groups_short_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = common dso_local global i32* null, align 8
@gs_id = common dso_local global i64 0, align 8
@gs_is_event = common dso_local global i64 0, align 8
@MAX_GROUPS = common dso_local global i32 0, align 4
@Gc = common dso_local global i32 0, align 4
@GT = common dso_local global i32* null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_groups_short_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @I, align 8
  %4 = load i64, i64* @gs_id, align 8
  %5 = getelementptr inbounds i32, i32* %3, i64 %4
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %1, align 4
  %7 = load i32*, i32** @I, align 8
  %8 = load i64, i64* @gs_is_event, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @MAX_GROUPS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, -2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13, %0
  br label %38

22:                                               ; preds = %17
  %23 = load i32, i32* @Gc, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @Gc, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 2, %30
  %32 = load i32*, i32** @GT, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @adj_rec, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @adj_rec, align 4
  br label %38

38:                                               ; preds = %29, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
