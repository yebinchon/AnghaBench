; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_user_set_object_rating.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_user_set_object_rating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@write_only = common dso_local global i64 0, align 8
@no_changes = common dso_local global i64 0, align 8
@now = common dso_local global i32 0, align 4
@MAX_RATING_NUM = common dso_local global i32 0, align 4
@changes_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_set_object_rating(%struct.TYPE_3__* %0, i8 zeroext %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8 %1, i8* %8, align 1
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = call i32 @check_rating(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %5
  %16 = load i8, i8* %8, align 1
  %17 = call i32 @check_type(i8 zeroext %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @check_object_id(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @check_rating_num(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %19, %15, %5
  store i32 0, i32* %6, align 4
  br label %74

28:                                               ; preds = %23
  %29 = load i64, i64* @write_only, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @no_changes, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28
  store i32 1, i32* %6, align 4
  br label %74

35:                                               ; preds = %31
  %36 = load i32, i32* @now, align 4
  %37 = icmp sle i32 1333411200, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32, i32* @now, align 4
  %40 = icmp sle i32 %39, 1334016000
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = sitofp i32 %42 to double
  %44 = fcmp ogt double %43, 1.000000e-03
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 21
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %74

53:                                               ; preds = %49, %45, %41, %38, %35
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8, i8* %8, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 256, %60
  %62 = add nsw i32 %59, %61
  %63 = load i32, i32* @MAX_RATING_NUM, align 4
  %64 = mul nsw i32 256, %63
  %65 = add nsw i32 %62, %64
  %66 = trunc i32 %65 to i8
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  %69 = sub nsw i32 0, %68
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @chg_list_add_rating(i32* %55, i32* %57, i8 zeroext %66, i32 %69, i32 %70)
  %72 = load i32, i32* @changes_count, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @changes_count, align 4
  store i32 1, i32* %6, align 4
  br label %74

74:                                               ; preds = %53, %52, %34, %27
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @check_rating(i32) #1

declare dso_local i32 @check_type(i8 zeroext) #1

declare dso_local i32 @check_object_id(i64) #1

declare dso_local i32 @check_rating_num(i32) #1

declare dso_local i32 @chg_list_add_rating(i32*, i32*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
