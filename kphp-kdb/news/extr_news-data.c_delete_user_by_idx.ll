; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_delete_user_by_idx.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_delete_user_by_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@User = common dso_local global %struct.TYPE_5__** null, align 8
@UG_MODE = common dso_local global i64 0, align 8
@NOTIFY_MODE = common dso_local global i64 0, align 8
@RECOMMEND_MODE = common dso_local global i32 0, align 4
@tot_users = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @delete_user_by_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_user_by_idx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %60

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @User, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %9, i64 %11
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %60

17:                                               ; preds = %8
  %18 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @User, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %18, i64 %20
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %21, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  %24 = load i64, i64* @UG_MODE, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load i64, i64* @NOTIFY_MODE, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @RECOMMEND_MODE, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %26, %17
  %33 = phi i1 [ true, %26 ], [ true, %17 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* @UG_MODE, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = call i32 @free_item_list(%struct.TYPE_5__* %39)
  br label %55

41:                                               ; preds = %32
  %42 = load i64, i64* @NOTIFY_MODE, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = bitcast %struct.TYPE_5__* %45 to i32*
  %47 = call i32 @free_notify_user_list(i32* %46)
  br label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @RECOMMEND_MODE, align 4
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = bitcast %struct.TYPE_5__* %51 to i32*
  %53 = call i32 @free_recommend_user_list(i32* %52)
  br label %54

54:                                               ; preds = %48, %44
  br label %55

55:                                               ; preds = %54, %38
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = call i32 @free_user_struct(%struct.TYPE_5__* %56)
  %58 = load i32, i32* @tot_users, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* @tot_users, align 4
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %16, %7
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_item_list(%struct.TYPE_5__*) #1

declare dso_local i32 @free_notify_user_list(i32*) #1

declare dso_local i32 @free_recommend_user_list(i32*) #1

declare dso_local i32 @free_user_struct(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
