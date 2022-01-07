; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_add_friend.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_add_friend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"add_friend. user_id = %d, friend_id = %d\0A\00", align 1
@MAX_FRIENDS = common dso_local global i64 0, align 8
@now = common dso_local global i64 0, align 8
@reverse_friends_mode = common dso_local global i64 0, align 8
@rev_friends = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @add_friend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_friend(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4
  br label %104

15:                                               ; preds = %11
  %16 = load i32, i32* @verbosity, align 4
  %17 = icmp sge i32 %16, 4
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %15
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.TYPE_7__* @tree_lookup(i32 %28, i32 %29)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %8, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  br label %104

48:                                               ; preds = %25
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MAX_FRIENDS, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %104

55:                                               ; preds = %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @delete_friend_request(%struct.TYPE_6__* %56, i32 %57)
  %59 = load i64, i64* @now, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i64, i64* @now, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  br label %73

68:                                               ; preds = %55
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %68, %64
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (...) @lrand48()
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @tree_insert(i32 %76, i32 %77, i32 %78, i32 %80, i64 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = load i64, i64* @reverse_friends_mode, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %73
  %94 = load i32, i32* @rev_friends, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (...) @lrand48()
  %100 = call i32 @rev_friends_insert(i32 %94, i32 %95, i32 %98, i32 %99, i32 0)
  store i32 %100, i32* @rev_friends, align 4
  br label %101

101:                                              ; preds = %93, %73
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %101, %54, %33, %14
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @tree_lookup(i32, i32) #1

declare dso_local i32 @delete_friend_request(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @tree_insert(i32, i32, i32, i32, i64) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @rev_friends_insert(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
