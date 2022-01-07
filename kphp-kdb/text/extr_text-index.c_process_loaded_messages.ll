; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_process_loaded_messages.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_process_loaded_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@cur_min_uid = common dso_local global i32 0, align 4
@cur_max_uid = common dso_local global i32 0, align 4
@User = common dso_local global i64* null, align 8
@processed_users = common dso_local global i64 0, align 8
@tot_users = common dso_local global i64 0, align 8
@UserDirectory = common dso_local global %struct.TYPE_3__** null, align 8
@dyn_cur = common dso_local global i8* null, align 8
@last_process_time = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_loaded_messages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca double, align 8
  %4 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %5 = call double @get_utime(i32 %4)
  store double %5, double* %3, align 8
  %6 = load i32, i32* @cur_min_uid, align 4
  store i32 %6, i32* %1, align 4
  br label %7

7:                                                ; preds = %50, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @cur_max_uid, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %53

11:                                               ; preds = %7
  %12 = load i64*, i64** @User, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %11
  %19 = load i64, i64* @processed_users, align 8
  %20 = load i64, i64* @tot_users, align 8
  %21 = icmp ult i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @UserDirectory, align 8
  %25 = load i64, i64* @processed_users, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %1, align 4
  %31 = call i64 @unconv_uid(i32 %30)
  %32 = icmp eq i64 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** @dyn_cur, align 8
  store i8* %35, i8** %2, align 8
  %36 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @UserDirectory, align 8
  %37 = load i64, i64* @processed_users, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %36, i64 %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64*, i64** @User, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @process_user_messages(%struct.TYPE_3__* %39, i64 %44)
  %46 = load i8*, i8** %2, align 8
  store i8* %46, i8** @dyn_cur, align 8
  %47 = load i64, i64* @processed_users, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* @processed_users, align 8
  br label %49

49:                                               ; preds = %18, %11
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %7

53:                                               ; preds = %7
  %54 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %55 = call double @get_utime(i32 %54)
  %56 = load double, double* %3, align 8
  %57 = fsub double %55, %56
  store double %57, double* @last_process_time, align 8
  ret void
}

declare dso_local double @get_utime(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @unconv_uid(i32) #1

declare dso_local i32 @process_user_messages(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
