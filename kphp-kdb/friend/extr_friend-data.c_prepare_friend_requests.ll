; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_prepare_friend_requests.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_prepare_friend_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@R = common dso_local global i32* null, align 8
@R_end = common dso_local global i32* null, align 8
@R_cat_mask = common dso_local global i32 0, align 4
@R_mode = common dso_local global i32 0, align 4
@R_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_friend_requests(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_3__* @get_user(i32 %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @conv_uid(i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, -2
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 10000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %13
  store i32 -1, i32* %3, align 4
  br label %82

24:                                               ; preds = %20
  %25 = load i32*, i32** @R, align 8
  store i32* %25, i32** @R_end, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %82

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  store i32 -1, i32* @R_cat_mask, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, -1
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 2, i32 0
  store i32 %36, i32* @R_mode, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @tree_fetch(i32 %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %82

44:                                               ; preds = %29
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %82

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  store i32 -1, i32* @R_cat_mask, align 4
  store i32 2, i32* @R_mode, align 4
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* @R_max, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tree_fetch_max(i32 %56)
  %58 = load i32*, i32** @R, align 8
  store i32* %58, i32** %7, align 8
  br label %59

59:                                               ; preds = %63, %52
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** @R_end, align 8
  %62 = icmp ne i32* %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 0, %72
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32* %77, i32** %7, align 8
  br label %59

78:                                               ; preds = %59
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %78, %47, %32, %28, %23
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_3__* @get_user(i32) #1

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @tree_fetch(i32) #1

declare dso_local i32 @tree_fetch_max(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
