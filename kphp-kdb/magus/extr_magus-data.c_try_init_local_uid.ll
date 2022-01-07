; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_try_init_local_uid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_try_init_local_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@try_init_local_uid.was = internal global i32 0, align 4
@try_init_local_uid.old_log_split_min = internal global i32 0, align 4
@try_init_local_uid.old_log_split_max = internal global i32 0, align 4
@try_init_local_uid.old_log_split_mod = internal global i32 0, align 4
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4
@log_split_mod = common dso_local global i32 0, align 4
@header = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAGUS_SCHEMA_V1 = common dso_local global i32 0, align 4
@log_schema = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @try_init_local_uid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @try_init_local_uid.was, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %0
  %6 = load i32, i32* @try_init_local_uid.old_log_split_min, align 4
  %7 = load i32, i32* @log_split_min, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = load i32, i32* @try_init_local_uid.old_log_split_max, align 4
  %11 = load i32, i32* @log_split_max, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @try_init_local_uid.old_log_split_mod, align 4
  %15 = load i32, i32* @log_split_mod, align 4
  %16 = icmp eq i32 %14, %15
  br label %17

17:                                               ; preds = %13, %9, %5
  %18 = phi i1 [ false, %9 ], [ false, %5 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  br label %48

21:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @header, i32 0, i32 0), align 8
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %22
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @header, i32 0, i32 1), align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @conv_uid(i32 %32)
  store i32* %33, i32** %2, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %22

41:                                               ; preds = %22
  store i32 1, i32* @try_init_local_uid.was, align 4
  %42 = load i32, i32* @log_split_min, align 4
  store i32 %42, i32* @try_init_local_uid.old_log_split_min, align 4
  %43 = load i32, i32* @log_split_max, align 4
  store i32 %43, i32* @try_init_local_uid.old_log_split_max, align 4
  %44 = load i32, i32* @log_split_mod, align 4
  store i32 %44, i32* @try_init_local_uid.old_log_split_mod, align 4
  %45 = load i32, i32* @MAGUS_SCHEMA_V1, align 4
  store i32 %45, i32* @log_schema, align 4
  %46 = load i32, i32* @log_schema, align 4
  %47 = call i32 @init_magus_data(i32 %46)
  br label %48

48:                                               ; preds = %41, %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @conv_uid(i32) #1

declare dso_local i32 @init_magus_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
