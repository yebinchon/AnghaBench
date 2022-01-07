; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_do_commit_transaction.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-data.c_do_commit_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.lev_money_trans_commit = type { i64, i32 }

@trs_temp = common dso_local global i64 0, align 8
@trs_temp_locked = common dso_local global i64 0, align 8
@LEV_MONEY_TRANS_COMMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%16llx_%08x%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_commit_transaction(i32 %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_money_trans_commit*, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_6__* @get_temp_transaction(i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load i64*, i64** %6, align 8
  store i64 0, i64* %13, align 8
  %14 = load i8*, i8** %7, align 8
  store i8 0, i8* %14, align 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = call i32 @check_transaction(%struct.TYPE_6__* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %89

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @trs_temp, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @trs_temp_locked, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %89

38:                                               ; preds = %31, %25
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = call i64 (...) @get_next_transaction_id()
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = call i32 @do_declare_transaction(%struct.TYPE_6__* %48)
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* @LEV_MONEY_TRANS_COMMIT, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call %struct.lev_money_trans_commit* @alloc_log_event(i32 %53, i32 16, i32 %54)
  store %struct.lev_money_trans_commit* %55, %struct.lev_money_trans_commit** %10, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.lev_money_trans_commit*, %struct.lev_money_trans_commit** %10, align 8
  %60 = getelementptr inbounds %struct.lev_money_trans_commit, %struct.lev_money_trans_commit* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.lev_money_trans_commit*, %struct.lev_money_trans_commit** %10, align 8
  %65 = getelementptr inbounds %struct.lev_money_trans_commit, %struct.lev_money_trans_commit* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.lev_money_trans_commit*, %struct.lev_money_trans_commit** %10, align 8
  %67 = call i32 @commit_transaction(%struct.lev_money_trans_commit* %66)
  %68 = icmp eq i32 %67, 1
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = call i32 @add_temp_transaction(%struct.TYPE_6__* %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %6, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @sprintf(i8* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %80, i32 %83, i32 %86)
  %88 = call i32 @flush_binlog_forced(i32 0)
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %47, %37, %23, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.TYPE_6__* @get_temp_transaction(i32) #1

declare dso_local i32 @check_transaction(%struct.TYPE_6__*) #1

declare dso_local i64 @get_next_transaction_id(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @do_declare_transaction(%struct.TYPE_6__*) #1

declare dso_local %struct.lev_money_trans_commit* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @commit_transaction(%struct.lev_money_trans_commit*) #1

declare dso_local i32 @add_temp_transaction(%struct.TYPE_6__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @flush_binlog_forced(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
