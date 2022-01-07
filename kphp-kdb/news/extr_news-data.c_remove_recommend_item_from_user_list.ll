; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_remove_recommend_item_from_user_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_remove_recommend_item_from_user_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @remove_recommend_item_from_user_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_recommend_item_from_user_list(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = icmp eq %struct.TYPE_7__* %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %17, align 8
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = icmp eq %struct.TYPE_7__* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %29, align 8
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %5, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %6, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = bitcast %struct.TYPE_6__* %38 to %struct.TYPE_7__*
  %40 = icmp ne %struct.TYPE_7__* %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %44, align 8
  br label %45

45:                                               ; preds = %41, %30
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = bitcast %struct.TYPE_6__* %47 to %struct.TYPE_7__*
  %49 = icmp ne %struct.TYPE_7__* %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %53, align 8
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = call i32 @free_recommend_item(%struct.TYPE_7__* %55)
  ret void
}

declare dso_local i32 @free_recommend_item(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
