; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_user_friends_online.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_user_friends_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FRIEND_MULT = common dso_local global i32 0, align 4
@MAX_USER_FRIENDS = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@minsert_flag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_friends_online(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @FRIEND_MULT, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_USER_FRIENDS, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %17, %3
  store i32 -1, i32* %4, align 4
  br label %72

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %72

29:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %67, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_5__* @get_user_f(i32 %39)
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %8, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %67

44:                                               ; preds = %34
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @stree_delete(i32 %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @now, align 4
  %54 = call i32 @stree_insert(i32 %51, i32 %52, i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = call i32 @adjust_online_tree(%struct.TYPE_5__* %57)
  %59 = load i32, i32* @minsert_flag, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %44
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32 @update_history(%struct.TYPE_5__* %62, i32 %64, i32 0, i32 8)
  br label %66

66:                                               ; preds = %61, %44
  br label %67

67:                                               ; preds = %66, %43
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %30

70:                                               ; preds = %30
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %28, %24
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_5__* @get_user_f(i32) #1

declare dso_local i32 @stree_insert(i32, i32, i32) #1

declare dso_local i32 @stree_delete(i32, i32) #1

declare dso_local i32 @adjust_online_tree(%struct.TYPE_5__*) #1

declare dso_local i32 @update_history(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
