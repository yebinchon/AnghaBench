; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_init_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Init_all started\0A\00", align 1
@log_ts_exact_interval = common dso_local global i32 0, align 4
@volumes = common dso_local global i32 0, align 4
@h_users = common dso_local global i32 0, align 4
@header = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@jump_log_ts = common dso_local global i32 0, align 4
@jump_log_pos = common dso_local global i32 0, align 4
@jump_log_crc32 = common dso_local global i32 0, align 4
@index_users = common dso_local global i32 0, align 4
@user_cnt = common dso_local global i32 0, align 4
@total_photos = common dso_local global i32 0, align 4
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
  %11 = call i32 @map_int_int_init(i32* @volumes)
  %12 = call i32 @set_intp_init(i32* @h_users)
  %13 = call i32 (...) @init_types()
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @load_header(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 4), align 4
  store i32 %16, i32* @jump_log_ts, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 3), align 4
  store i32 %17, i32* @jump_log_pos, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 2), align 4
  store i32 %18, i32* @jump_log_crc32, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 0), align 4
  store i32 %19, i32* @index_users, align 4
  store i32 %19, i32* @user_cnt, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @header, i32 0, i32 1), align 4
  store i32 %20, i32* @total_photos, align 4
  %21 = load i32, i32* @user_cnt, align 4
  %22 = icmp slt i32 %21, 200000
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  store i32 200000, i32* @user_cnt, align 4
  br label %24

24:                                               ; preds = %23, %10
  %25 = load i32, i32* @user_cnt, align 4
  %26 = icmp sge i32 %25, 200000
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* @user_cnt, align 4
  %30 = sitofp i32 %29 to double
  %31 = fmul double %30, 1.100000e+00
  %32 = fptosi double %31 to i32
  store i32 %32, i32* @user_cnt, align 4
  br label %33

33:                                               ; preds = %43, %24
  %34 = load i32, i32* @user_cnt, align 4
  %35 = srem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @user_cnt, align 4
  %39 = srem i32 %38, 5
  %40 = icmp eq i32 %39, 0
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ true, %33 ], [ %40, %37 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, i32* @user_cnt, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @user_cnt, align 4
  br label %33

46:                                               ; preds = %41
  %47 = load i32, i32* @user_cnt, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  %50 = trunc i64 %49 to i32
  %51 = call %struct.TYPE_6__* @dl_malloc(i32 %50)
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** @users, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %62, %46
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @user_cnt, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = call i32 @user_init(%struct.TYPE_6__* %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @users, align 8
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** @LRU_head, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @LRU_head, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %71, align 8
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = call i32 (...) @try_init_local_uid()
  br label %76

76:                                               ; preds = %74, %65
  %77 = load i32, i32* @verbosity, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @map_int_int_init(i32*) #1

declare dso_local i32 @set_intp_init(i32*) #1

declare dso_local i32 @init_types(...) #1

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
