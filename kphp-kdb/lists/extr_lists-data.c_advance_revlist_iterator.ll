; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_advance_revlist_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_advance_revlist_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }

@revlist_iterator = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@revlist_metafile_mode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @advance_revlist_iterator() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 0), align 8
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %30

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 1), align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 1), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 1), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 2), align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 4), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 0), align 8
  store i32 0, i32* %1, align 4
  br label %30

15:                                               ; preds = %11
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 3), align 8
  %17 = add nsw i64 %16, 1
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 4), align 8
  %19 = call i32 @init_revlist_iterator(i64 %17, i64 %18)
  store i32 %19, i32* %1, align 4
  br label %30

20:                                               ; preds = %5
  %21 = load i64, i64* @revlist_metafile_mode, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 4), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 3), align 8
  %28 = call i32 @update_revlist_use(i64 %27)
  br label %29

29:                                               ; preds = %26, %23, %20
  store i32 1, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %15, %14, %4
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @init_revlist_iterator(i64, i64) #1

declare dso_local i32 @update_revlist_use(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
