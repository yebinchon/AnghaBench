; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_advance_user_iterator.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_advance_user_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@user_iterator = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@new_users_number = common dso_local global i64 0, align 8
@new_users = common dso_local global %struct.TYPE_7__* null, align 8
@MAXINT = common dso_local global i32 0, align 4
@small_users_number = common dso_local global i64 0, align 8
@small_users = common dso_local global %struct.TYPE_6__* null, align 8
@large_users_number = common dso_local global i64 0, align 8
@large_users = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @advance_user_iterator() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 0), align 8
  %7 = load i64, i64* @new_users_number, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @new_users, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 0), align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  br label %17

15:                                               ; preds = %0
  %16 = load i32, i32* @MAXINT, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %14, %9 ], [ %16, %15 ]
  store i32 %18, i32* %2, align 4
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 1), align 8
  %20 = load i64, i64* @small_users_number, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @small_users, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 1), align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %30

28:                                               ; preds = %17
  %29 = load i32, i32* @MAXINT, align 4
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi i32 [ %27, %22 ], [ %29, %28 ]
  store i32 %31, i32* %3, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 2), align 8
  %33 = load i64, i64* @large_users_number, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @large_users, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 2), align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @MAXINT, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %40, %35 ], [ %42, %41 ]
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @min(i32 %46, i32 %47)
  %49 = call i32 @min(i32 %45, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MAXINT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 -1, i32* %1, align 4
  br label %77

54:                                               ; preds = %43
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 3), align 8
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 0), align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 0), align 8
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 1), align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 1), align 8
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 2), align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @user_iterator, i32 0, i32 2), align 8
  br label %76

76:                                               ; preds = %73, %69
  store i32 1, i32* %1, align 4
  br label %77

77:                                               ; preds = %76, %53
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
