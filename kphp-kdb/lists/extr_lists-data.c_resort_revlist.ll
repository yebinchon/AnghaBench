; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_resort_revlist.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_resort_revlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@revlist_metafile_mode = common dso_local global i64 0, align 8
@tot_revlist_metafiles = common dso_local global i32 0, align 4
@revlist_iterator = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CUR_REVLIST_OBJECT_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resort_revlist() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i64, i64* @revlist_metafile_mode, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %8

7:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %8

8:                                                ; preds = %7, %6
  br label %9

9:                                                ; preds = %45, %8
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @tot_revlist_metafiles, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %48

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @init_revlist_iterator(i32 %14, i32 0)
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %38, %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 2), align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load i32, i32* @CUR_REVLIST_OBJECT_ID, align 4
  store i32 %21, i32* %2, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 0), align 8
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %37, %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 2), align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = call i64 (...) @advance_revlist_iterator()
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %38

31:                                               ; preds = %29
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @CUR_REVLIST_OBJECT_ID, align 4
  %34 = call i32 @object_id_equal(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  br label %23

38:                                               ; preds = %36, %29
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 1), align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @revlist_iterator, i32 0, i32 0), align 8
  %42 = sub nsw i64 %41, 1
  %43 = trunc i64 %42 to i32
  %44 = call i32 @sort_revlist_part(i32 %39, i64 %40, i32 %43)
  br label %16

45:                                               ; preds = %16
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %9

48:                                               ; preds = %9
  ret void
}

declare dso_local i32 @init_revlist_iterator(i32, i32) #1

declare dso_local i64 @advance_revlist_iterator(...) #1

declare dso_local i32 @object_id_equal(i32, i32) #1

declare dso_local i32 @sort_revlist_part(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
