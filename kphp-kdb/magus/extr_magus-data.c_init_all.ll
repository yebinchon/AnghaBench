; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_init_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Init_all started\0A\00", align 1
@log_ts_exact_interval = common dso_local global i32 0, align 4
@h_users = common dso_local global i32 0, align 4
@header = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@index_users = common dso_local global i32 0, align 4
@user_cnt = common dso_local global i32 0, align 4
@users = common dso_local global %struct.TYPE_6__* null, align 8
@LRU_head = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Init_all finished\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @verbosity, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  store i32 1, i32* @log_ts_exact_interval, align 4
  %11 = call i32 @hset_intp_init(i32* @h_users)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @load_header(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 3), align 4
  store i32 %14, i32* @jump_log_ts, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 2), align 4
  store i32 %15, i32* @jump_log_pos, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 1), align 4
  store i32 %16, i32* @jump_log_crc32, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 0), align 4
  store i32 %17, i32* @index_users, align 4
  store i32 %17, i32* @user_cnt, align 4
  %18 = load i32, i32* @user_cnt, align 4
  %19 = icmp slt i32 %18, 10000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 10000000, i32* @user_cnt, align 4
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i32, i32* @user_cnt, align 4
  %23 = icmp sge i32 %22, 10000000
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @user_cnt, align 4
  %27 = sitofp i32 %26 to double
  %28 = fmul double %27, 1.100000e+00
  %29 = fptosi double %28 to i32
  store i32 %29, i32* @user_cnt, align 4
  br label %30

30:                                               ; preds = %40, %21
  %31 = load i32, i32* @user_cnt, align 4
  %32 = srem i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @user_cnt, align 4
  %36 = srem i32 %35, 5
  %37 = icmp eq i32 %36, 0
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ true, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, i32* @user_cnt, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @user_cnt, align 4
  br label %30

43:                                               ; preds = %38
  %44 = load i32, i32* @user_cnt, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = trunc i64 %46 to i32
  %48 = call %struct.TYPE_6__* @dl_malloc(i32 %47)
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** @users, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %59, %43
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @user_cnt, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = call i32 @user_init(%struct.TYPE_6__* %57)
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %49

62:                                               ; preds = %49
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** @LRU_head, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = call i32 (...) @try_init_local_uid()
  br label %73

73:                                               ; preds = %71, %62
  %74 = load i32, i32* @verbosity, align 4
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @hset_intp_init(i32*) #1

declare dso_local i32 @load_header(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_6__* @dl_malloc(i32) #1

declare dso_local i32 @user_init(%struct.TYPE_6__*) #1

declare dso_local i32 @try_init_local_uid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
