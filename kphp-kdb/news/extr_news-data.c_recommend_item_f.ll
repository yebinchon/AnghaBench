; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_recommend_item_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_recommend_item_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@RECOMMEND_FIND_ITEM_DUPS_STEPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32, i32, i32, i32)* @recommend_item_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @recommend_item_f(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @get_user_f(i32 %15, i32 0)
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %12, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %69

21:                                               ; preds = %5
  %22 = load i32, i32* @RECOMMEND_FIND_ITEM_DUPS_STEPS, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %14, align 8
  br label %26

26:                                               ; preds = %62, %21
  %27 = load i32, i32* %13, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = bitcast %struct.TYPE_4__* %31 to %struct.TYPE_5__*
  %33 = icmp ne %struct.TYPE_5__* %30, %32
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi i1 [ false, %26 ], [ %33, %29 ]
  br i1 %35, label %36, label %68

36:                                               ; preds = %34
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %6, align 8
  br label %69

62:                                               ; preds = %54, %48, %42, %36
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %14, align 8
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %13, align 4
  br label %26

68:                                               ; preds = %34
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  br label %69

69:                                               ; preds = %68, %60, %20
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %70
}

declare dso_local i64 @get_user_f(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
