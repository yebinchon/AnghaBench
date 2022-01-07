; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_init_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

@log_ts_exact_interval = common dso_local global i32 0, align 4
@user_table = common dso_local global i32 0, align 4
@bl_head = common dso_local global i8* null, align 8
@header = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@index_users = common dso_local global i32 0, align 4
@users = common dso_local global %struct.TYPE_5__* null, align 8
@LRU_head = common dso_local global %struct.TYPE_5__* null, align 8
@index_mode = common dso_local global i64 0, align 8
@max_words = common dso_local global i32 0, align 4
@buff = common dso_local global i8* null, align 8
@new_buff = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @log_ts_exact_interval, align 4
  %6 = call i32 @ltbl_init(i32* @user_table)
  %7 = call i8* @qmalloc(i32 4)
  store i8* %7, i8** @bl_head, align 8
  %8 = load i8*, i8** @bl_head, align 8
  %9 = call i32 @black_list_init(i8* %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @load_header(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @header, i32 0, i32 3), align 4
  store i32 %12, i32* @jump_log_ts, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @header, i32 0, i32 2), align 4
  store i32 %13, i32* @jump_log_pos, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @header, i32 0, i32 1), align 4
  store i32 %14, i32* @jump_log_crc32, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @header, i32 0, i32 0), align 4
  store i32 %15, i32* @index_users, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 1000000
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1000000, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 1000000
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double %25, 1.100000e+00
  %27 = fptosi double %26 to i32
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %38, %19
  %29 = load i32, i32* %5, align 4
  %30 = srem i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = srem i32 %33, 5
  %35 = icmp eq i32 %34, 0
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ true, %28 ], [ %35, %32 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %28

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ltbl_set_size(i32* @user_table, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call i8* @qmalloc(i32 %47)
  %49 = bitcast i8* %48 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** @users, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %60, %41
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @users, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = call i32 @user_init(%struct.TYPE_5__* %58)
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %50

63:                                               ; preds = %50
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @users, align 8
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** @LRU_head, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LRU_head, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LRU_head, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %67, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @LRU_head, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store %struct.TYPE_5__* %65, %struct.TYPE_5__** %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = call i32 (...) @try_init_local_uid()
  br label %74

74:                                               ; preds = %72, %63
  %75 = load i64, i64* @index_mode, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* @max_words, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i8* @qmalloc(i32 %81)
  store i8* %82, i8** @buff, align 8
  %83 = call i8* @qmalloc(i32 16000000)
  store i8* %83, i8** @new_buff, align 8
  br label %84

84:                                               ; preds = %77, %74
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ltbl_init(i32*) #1

declare dso_local i8* @qmalloc(i32) #1

declare dso_local i32 @black_list_init(i8*) #1

declare dso_local i32 @load_header(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ltbl_set_size(i32*, i32) #1

declare dso_local i32 @user_init(%struct.TYPE_5__*) #1

declare dso_local i32 @try_init_local_uid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
