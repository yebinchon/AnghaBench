; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-value-buffer.c_value_buffer_return.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-value-buffer.c_value_buffer_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_buffer = type { i8*, i32, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"% 9d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @value_buffer_return(%struct.value_buffer* %0) #0 {
  %2 = alloca %struct.value_buffer*, align 8
  store %struct.value_buffer* %0, %struct.value_buffer** %2, align 8
  %3 = load %struct.value_buffer*, %struct.value_buffer** %2, align 8
  %4 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.value_buffer*, %struct.value_buffer** %2, align 8
  %7 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.value_buffer*, %struct.value_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @sprintf(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds i8, i8* %5, i64 %12
  store i8 13, i8* %13, align 1
  %14 = load %struct.value_buffer*, %struct.value_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @memcpy(i64 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %18 = load %struct.value_buffer*, %struct.value_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 2
  store i64 %21, i64* %19, align 8
  %22 = load %struct.value_buffer*, %struct.value_buffer** %2, align 8
  %23 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.value_buffer*, %struct.value_buffer** %2, align 8
  %27 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.value_buffer*, %struct.value_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.value_buffer*, %struct.value_buffer** %2, align 8
  %33 = getelementptr inbounds %struct.value_buffer, %struct.value_buffer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = sub nsw i64 %28, %35
  %37 = call i32 @advance_write_ptr(i32* %25, i64 %36)
  ret i32 0
}

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @advance_write_ptr(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
