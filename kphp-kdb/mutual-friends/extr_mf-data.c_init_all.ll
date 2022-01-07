; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_init_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@log_ts_exact_interval = common dso_local global i32 0, align 4
@user_table = common dso_local global i32 0, align 4
@header = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@index_users = common dso_local global i32 0, align 4
@users = common dso_local global %struct.TYPE_6__* null, align 8
@LRU_head = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_all(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* @log_ts_exact_interval, align 4
  %6 = call i32 @ltbl_init(i32* @user_table)
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @load_header(i8* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 3), align 4
  store i32 %9, i32* @jump_log_ts, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 2), align 4
  store i32 %10, i32* @jump_log_pos, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 1), align 4
  store i32 %11, i32* @jump_log_crc32, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 0), align 4
  store i32 %12, i32* @index_users, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 2400000
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 2400000, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 2400000
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = sitofp i32 %21 to double
  %23 = fmul double %22, 1.100000e+00
  %24 = fptosi double %23 to i32
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %35, %16
  %26 = load i32, i32* %5, align 4
  %27 = srem i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = srem i32 %30, 5
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi i1 [ true, %25 ], [ %32, %29 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %25

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ltbl_set_size(i32* @user_table, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = call %struct.TYPE_6__* @qmalloc(i32 %44)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** @users, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %56, %38
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = call i32 @user_init(%struct.TYPE_6__* %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %46

59:                                               ; preds = %46
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** @LRU_head, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = call i32 (...) @try_init_local_uid()
  br label %70

70:                                               ; preds = %68, %59
  ret void
}

declare dso_local i32 @ltbl_init(i32*) #1

declare dso_local i32 @load_header(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ltbl_set_size(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @qmalloc(i32) #1

declare dso_local i32 @user_init(%struct.TYPE_6__*) #1

declare dso_local i32 @try_init_local_uid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
