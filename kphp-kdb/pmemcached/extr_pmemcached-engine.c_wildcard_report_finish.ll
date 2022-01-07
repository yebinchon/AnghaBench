; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_wildcard_report_finish.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-engine.c_wildcard_report_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@wildcard_type = common dso_local global i8 0, align 1
@metafile_mode = common dso_local global i64 0, align 8
@wildcard_ptr = common dso_local global i32 0, align 4
@wildcard_total_data_sent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"}\00", align 1
@wildcard_connection = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"}\0D\0A\00", align 1
@wildcard_report_finish.s = internal global [12 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%09d\00", align 1
@wildcard_total_keys_sent = common dso_local global i32 0, align 4
@wildcard_arrays_allocated = common dso_local global i32 0, align 4
@wildcard_report_finish.s.3 = internal global [12 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wildcard_report_finish(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* @wildcard_type, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 35
  br i1 %7, label %8, label %60

8:                                                ; preds = %2
  %9 = load i64, i64* @metafile_mode, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* @wildcard_ptr, align 4
  %13 = load i32, i32* @wildcard_total_data_sent, align 4
  %14 = add nsw i32 %12, %13
  %15 = call i32 @memcpy(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %16 = load i32, i32* @wildcard_total_data_sent, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @wildcard_total_data_sent, align 4
  br label %24

18:                                               ; preds = %8
  %19 = load i32, i32* @wildcard_total_data_sent, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @wildcard_total_data_sent, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wildcard_connection, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @write_out(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  br label %24

24:                                               ; preds = %18, %11
  %25 = load i64, i64* @metafile_mode, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32, i32* @wildcard_total_keys_sent, align 4
  %29 = call i32 @sprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @wildcard_report_finish.s, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @wildcard_ptr, align 4
  %31 = add nsw i32 %30, 2
  %32 = call i32 @memcpy(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @wildcard_report_finish.s, i64 0, i64 0), i32 9)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wildcard_connection, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @wildcard_ptr, align 4
  %37 = load i32, i32* @wildcard_total_data_sent, align 4
  %38 = call i32 @return_one_key_flags_len(%struct.TYPE_3__* %33, i8* %34, i32 %35, i32 %36, i32 %37, i32 1)
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* @wildcard_ptr, align 4
  %43 = load i32, i32* @wildcard_total_data_sent, align 4
  %44 = call i32 @wildcard_add_value(i8* %39, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* @wildcard_ptr, align 4
  %46 = call i32 @free(i32 %45)
  %47 = load i32, i32* @wildcard_arrays_allocated, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* @wildcard_arrays_allocated, align 4
  br label %59

49:                                               ; preds = %24
  %50 = load i32, i32* @wildcard_total_data_sent, align 4
  %51 = call i32 @sprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @wildcard_report_finish.s.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @wildcard_ptr, align 4
  %53 = call i32 @memcpy(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @wildcard_report_finish.s.3, i64 0, i64 0), i32 9)
  %54 = load i32, i32* @wildcard_total_keys_sent, align 4
  %55 = call i32 @sprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @wildcard_report_finish.s.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @wildcard_ptr, align 4
  %57 = add nsw i32 %56, 13
  %58 = call i32 @memcpy(i32 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @wildcard_report_finish.s.3, i64 0, i64 0), i32 9)
  br label %59

59:                                               ; preds = %49, %27
  br label %60

60:                                               ; preds = %59, %2
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @return_one_key_flags_len(%struct.TYPE_3__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wildcard_add_value(i8*, i32, i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
