; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_return_error.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_return_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.value_buffer = type { i32 (%struct.value_buffer*, i32)* }

@.str = private unnamed_addr constant [21 x i8] c"ERROR near '%.256s'\0A\00", align 1
@return_empty_record_on_error = common dso_local global i64 0, align 8
@Q_raw = common dso_local global i32 0, align 4
@stats_buff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32, i32, i8*)* @return_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @return_error(%struct.connection* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.value_buffer, align 8
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %11, align 8
  %14 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i64, i64* @return_empty_record_on_error, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %5
  %18 = load %struct.connection*, %struct.connection** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 0, %21
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @Q_raw, align 4
  %28 = call i32 @value_buffer_init(%struct.value_buffer* %12, %struct.connection* %18, i8* %23, i32 %26, i32 %27, i32 64)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %48

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %12, i32 0, i32 0
  %33 = load i32 (%struct.value_buffer*, i32)*, i32 (%struct.value_buffer*, i32)** %32, align 8
  %34 = call i32 %33(%struct.value_buffer* %12, i32 0)
  %35 = call i32 @value_buffer_return(%struct.value_buffer* %12)
  store i32 %35, i32* %6, align 4
  br label %48

36:                                               ; preds = %5
  %37 = load %struct.connection*, %struct.connection** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 0, %40
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i32, i32* @stats_buff, align 4
  %44 = load i32, i32* @stats_buff, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @sprintf(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = call i32 @return_one_key(%struct.connection* %37, i8* %42, i32 %43, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %36, %31, %30
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i32 @value_buffer_init(%struct.value_buffer*, %struct.connection*, i8*, i32, i32, i32) #1

declare dso_local i32 @value_buffer_return(%struct.value_buffer*) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
