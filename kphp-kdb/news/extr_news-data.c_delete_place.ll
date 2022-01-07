; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_delete_place.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_delete_place.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@now = common dso_local global i64 0, align 8
@min_logevent_time = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"delete_place: V = %p\0A\00", align 1
@COMM_MODE = common dso_local global i64 0, align 8
@NOTIFY_MODE = common dso_local global i64 0, align 8
@tot_places = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @delete_place to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_place(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @now, align 8
  %10 = load i64, i64* @min_logevent_time, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @check_obj(i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %60

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.TYPE_6__* @get_place_f(i32 %21, i32 %22, i32 %23, i32 -1)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %60

30:                                               ; preds = %20
  %31 = load i64, i64* @COMM_MODE, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @NOTIFY_MODE, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ true, %30 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i64, i64* @COMM_MODE, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = call i32 @free_comment_list(%struct.TYPE_6__* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 -1, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = call i32 @zfree(%struct.TYPE_6__* %47, i32 4)
  br label %57

49:                                               ; preds = %36
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = bitcast %struct.TYPE_6__* %50 to i32*
  %52 = call i32 @free_notify_place_list(i32* %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = call i32 @zfree(%struct.TYPE_6__* %55, i32 4)
  br label %57

57:                                               ; preds = %49, %42
  %58 = load i32, i32* @tot_places, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* @tot_places, align 4
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %29, %19, %12
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @check_obj(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @get_place_f(i32, i32, i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_comment_list(%struct.TYPE_6__*) #1

declare dso_local i32 @zfree(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @free_notify_place_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
