; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_try_init_local_uid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_try_init_local_uid.c"
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
@PHOTO_SCHEMA_V1 = common dso_local global i32 0, align 4
@log_schema = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @try_init_local_uid() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @try_init_local_uid.was, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  %5 = load i32, i32* @try_init_local_uid.old_log_split_min, align 4
  %6 = load i32, i32* @log_split_min, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load i32, i32* @try_init_local_uid.old_log_split_max, align 4
  %10 = load i32, i32* @log_split_max, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* @try_init_local_uid.old_log_split_mod, align 4
  %14 = load i32, i32* @log_split_mod, align 4
  %15 = icmp eq i32 %13, %14
  br label %16

16:                                               ; preds = %12, %8, %4
  %17 = phi i1 [ false, %8 ], [ false, %4 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  br label %47

20:                                               ; preds = %0
  store i32 1, i32* @try_init_local_uid.was, align 4
  %21 = load i32, i32* @log_split_min, align 4
  store i32 %21, i32* @try_init_local_uid.old_log_split_min, align 4
  %22 = load i32, i32* @log_split_max, align 4
  store i32 %22, i32* @try_init_local_uid.old_log_split_max, align 4
  %23 = load i32, i32* @log_split_mod, align 4
  store i32 %23, i32* @try_init_local_uid.old_log_split_mod, align 4
  br label %24

24:                                               ; preds = %20
  store i32 1, i32* %1, align 4
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @header, i32 0, i32 0), align 8
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @header, i32 0, i32 1), align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @conv_uid(i32 %35)
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %25

43:                                               ; preds = %25
  %44 = load i32, i32* @PHOTO_SCHEMA_V1, align 4
  store i32 %44, i32* @log_schema, align 4
  %45 = load i32, i32* @log_schema, align 4
  %46 = call i32 @init_photo_data(i32 %45)
  br label %47

47:                                               ; preds = %43, %16
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @conv_uid(i32) #1

declare dso_local i32 @init_photo_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
