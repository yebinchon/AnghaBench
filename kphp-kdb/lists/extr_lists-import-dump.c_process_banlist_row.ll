; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_banlist_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_process_banlist_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = common dso_local global i32* null, align 8
@ba_group_id = common dso_local global i64 0, align 8
@ba_enemy = common dso_local global i64 0, align 8
@ba_admin = common dso_local global i64 0, align 8
@ba_date = common dso_local global i64 0, align 8
@last_date = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"date goes back by %d seconds\0A\00", align 1
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_banlist_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @I, align 8
  %6 = load i64, i64* @ba_group_id, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %1, align 4
  %9 = load i32*, i32** @I, align 8
  %10 = load i64, i64* @ba_enemy, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  %13 = load i32*, i32** @I, align 8
  %14 = load i64, i64* @ba_admin, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load i32*, i32** @I, align 8
  %18 = load i64, i64* @ba_date, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %0
  %24 = load i32, i32* %1, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %0
  br label %63

27:                                               ; preds = %23
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @check_id(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %63

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @last_date, align 4
  %38 = sub nsw i32 %37, 10
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32, i32* @last_date, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %55

46:                                               ; preds = %35, %32
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @last_date, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @log_timestamp(i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* @last_date, align 4
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %1, align 4
  %57 = sub nsw i32 0, %56
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @log_11_set(i32 %57, i32 %58, i32 %59, i32 0)
  %61 = load i32, i32* @adj_rec, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @adj_rec, align 4
  br label %63

63:                                               ; preds = %55, %31, %26
  ret void
}

declare dso_local i32 @check_id(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @log_timestamp(i32) #1

declare dso_local i32 @log_11_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
