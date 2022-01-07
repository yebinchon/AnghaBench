; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_collect_garbage_comments.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_collect_garbage_comments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@COMM_MODE = common dso_local global i32 0, align 4
@comments_kept = common dso_local global i32 0, align 4
@garbage_uid = common dso_local global i32 0, align 4
@PLACES_HASH = common dso_local global i32 0, align 4
@Place = common dso_local global %struct.TYPE_4__** null, align 8
@garbage_objects_collected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @collect_garbage_comments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_garbage_comments(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @COMM_MODE, align 4
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* @comments_kept, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @garbage_uid, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @PLACES_HASH, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %2, align 4
  %14 = mul nsw i32 %13, 10
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %54, %1
  %16 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @Place, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %16, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %7, align 8
  br label %21

21:                                               ; preds = %24, %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = call i32 @remove_old_comments(%struct.TYPE_4__* %25)
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %2, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %7, align 8
  br label %21

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @garbage_uid, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %6, align 4
  %53 = icmp sgt i32 %52, 0
  br label %54

54:                                               ; preds = %50, %47, %43
  %55 = phi i1 [ false, %47 ], [ false, %43 ], [ %53, %50 ]
  br i1 %55, label %15, label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* @garbage_uid, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @comments_kept, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* @garbage_objects_collected, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* @garbage_objects_collected, align 4
  ret i32 1
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @remove_old_comments(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
