; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_update_answer_correct_mistake.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_update_answer_correct_mistake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cur_id = common dso_local global i32 0, align 4
@ratings = common dso_local global i64* null, align 8
@lowest_rate = common dso_local global i64 0, align 8
@names_buff = common dso_local global i64 0, align 8
@names = common dso_local global i64* null, align 8
@diff = common dso_local global i32 0, align 4
@A = common dso_local global i32 0, align 4
@B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_answer_correct_mistake(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @get_id_by_hash(i64 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @cur_id, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load i64*, i64** @ratings, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @lowest_rate, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %19
  %28 = load i64, i64* @names_buff, align 8
  %29 = load i64*, i64** @names, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = call i32 @black_list_check(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* @diff, align 4
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* @A, align 4
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* @B, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @merge(i32 %44)
  br label %46

46:                                               ; preds = %37, %27, %19, %15, %4
  ret void
}

declare dso_local i32 @get_id_by_hash(i64) #1

declare dso_local i32 @black_list_check(i64) #1

declare dso_local i32 @merge(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
