; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_widget_comments_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_widget_comments_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = common dso_local global i32* null, align 8
@wc_likes = common dso_local global i64 0, align 8
@wc_comments = common dso_local global i64 0, align 8
@wc_app = common dso_local global i64 0, align 8
@wc_date = common dso_local global i64 0, align 8
@last_date = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"date goes back by %d seconds\0A\00", align 1
@wc_page = common dso_local global i64 0, align 8
@wc_owner = common dso_local global i64 0, align 8
@wc_post = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_widget_comments_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @I, align 8
  %6 = load i64, i64* @wc_likes, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %1, align 4
  %9 = load i32*, i32** @I, align 8
  %10 = load i64, i64* @wc_comments, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  %13 = load i32*, i32** @I, align 8
  %14 = load i64, i64* @wc_app, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32*, i32** @I, align 8
  %18 = load i64, i64* @wc_date, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @last_date, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %0
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* @last_date, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %39

30:                                               ; preds = %0
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @last_date, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @log_timestamp(i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* @last_date, align 4
  br label %38

38:                                               ; preds = %34, %30
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @check_id(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %74

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = load i32*, i32** @I, align 8
  %47 = load i64, i64* @wc_page, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @I, align 8
  %51 = load i64, i64* @wc_owner, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** @I, align 8
  %55 = load i64, i64* @wc_post, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = mul nsw i32 %63, 2
  %65 = load i32, i32* %2, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = add nsw i32 %64, %69
  %71 = call i32 @log_x22_set(i32 %45, i32 %49, i32 %53, i32 %57, i32 %58, i32 %70)
  %72 = load i32, i32* @adj_rec, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @adj_rec, align 4
  br label %74

74:                                               ; preds = %44, %43
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @log_timestamp(i32) #1

declare dso_local i32 @check_id(i32) #1

declare dso_local i32 @log_x22_set(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
