; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_widget_votes_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_widget_votes_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = common dso_local global i32* null, align 8
@wv_user = common dso_local global i64 0, align 8
@wv_voting = common dso_local global i64 0, align 8
@wv_option = common dso_local global i64 0, align 8
@wv_voted = common dso_local global i64 0, align 8
@last_date = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"date goes back by %d seconds\0A\00", align 1
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_widget_votes_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @I, align 8
  %6 = load i64, i64* @wv_user, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %1, align 4
  %9 = load i32*, i32** @I, align 8
  %10 = load i64, i64* @wv_voting, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  %13 = load i32*, i32** @I, align 8
  %14 = load i64, i64* @wv_option, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32*, i32** @I, align 8
  %18 = load i64, i64* @wv_voted, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @last_date, align 4
  %23 = sub nsw i32 %22, 10
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %0
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* @last_date, align 4
  %28 = load i32, i32* %4, align 4
  %29 = sub nsw i32 %27, %28
  %30 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %40

31:                                               ; preds = %0
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @last_date, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @log_timestamp(i32 %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* @last_date, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @check_id(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @log_11_set(i32 %45, i32 %46, i32 0, i32 0)
  %48 = load i32, i32* @adj_rec, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @adj_rec, align 4
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %1, align 4
  %52 = call i64 @check_id(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, i32* %1, align 4
  %56 = sub nsw i32 0, %55
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @log_11_set(i32 %56, i32 %57, i32 %58, i32 0)
  %60 = load i32, i32* @adj_rec, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @adj_rec, align 4
  br label %62

62:                                               ; preds = %54, %50
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @log_timestamp(i32) #1

declare dso_local i64 @check_id(i32) #1

declare dso_local i32 @log_11_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
