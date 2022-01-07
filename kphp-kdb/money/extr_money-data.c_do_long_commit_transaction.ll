; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_do_long_commit_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_do_long_commit_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.lev_money_trans_commit = type { i32, i32 }

@trs_long_locked = common dso_local global i64 0, align 8
@LEV_MONEY_TRANS_COMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%16llx_%08x%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_long_commit_transaction(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i64], align 16
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lev_money_trans_commit*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.TYPE_5__* @get_transaction(i64 %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %9, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @trs_long_locked, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %67

24:                                               ; preds = %17
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %27 = call i32 @compute_lock_codes(%struct.TYPE_5__* %25, i64* %26)
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %30 = load i64, i64* %29, align 16
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %67

33:                                               ; preds = %24
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = call i32 @check_transaction(%struct.TYPE_5__* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %67

40:                                               ; preds = %33
  %41 = load i32, i32* @LEV_MONEY_TRANS_COMMIT, align 4
  %42 = call %struct.lev_money_trans_commit* @alloc_log_event(i32 %41, i32 8, i32 -2)
  store %struct.lev_money_trans_commit* %42, %struct.lev_money_trans_commit** %11, align 8
  %43 = load %struct.lev_money_trans_commit*, %struct.lev_money_trans_commit** %11, align 8
  %44 = getelementptr inbounds %struct.lev_money_trans_commit, %struct.lev_money_trans_commit* %43, i32 0, i32 0
  store i32 -2, i32* %44, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.lev_money_trans_commit*, %struct.lev_money_trans_commit** %11, align 8
  %49 = getelementptr inbounds %struct.lev_money_trans_commit, %struct.lev_money_trans_commit* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.lev_money_trans_commit*, %struct.lev_money_trans_commit** %11, align 8
  %51 = call i32 @commit_transaction(%struct.lev_money_trans_commit* %50)
  %52 = icmp eq i32 %51, 1
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i8*, i8** %7, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61, i32 %64)
  %66 = call i32 @flush_binlog_forced(i32 0)
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %40, %38, %32, %23, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_5__* @get_transaction(i64) #1

declare dso_local i32 @compute_lock_codes(%struct.TYPE_5__*, i64*) #1

declare dso_local i32 @check_transaction(%struct.TYPE_5__*) #1

declare dso_local %struct.lev_money_trans_commit* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @commit_transaction(%struct.lev_money_trans_commit*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @flush_binlog_forced(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
