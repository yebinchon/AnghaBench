; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_object_cmp.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_object_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @object_cmp(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @GET_USER_RATING_STATE(i32 %15)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32* @user_get_object_rating(%struct.TYPE_5__* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32* @user_get_object_rating(%struct.TYPE_5__* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rating_cmp(i32 %23, i32 %28)
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %18, %4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %53

35:                                               ; preds = %30
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @user_get_object_type_id(%struct.TYPE_5__* %36, i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @user_get_object_type_id(%struct.TYPE_5__* %39, i32 %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %53

46:                                               ; preds = %35
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %53

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %50, %45, %33
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @GET_USER_RATING_STATE(i32) #1

declare dso_local i32 @rating_cmp(i32, i32) #1

declare dso_local i32* @user_get_object_rating(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @user_get_object_type_id(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
