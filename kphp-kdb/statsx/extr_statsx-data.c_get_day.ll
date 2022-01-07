; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_day.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_day.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i64, i64 }

@custom_version_names = common dso_local global i32 0, align 4
@create_day_start = common dso_local global i64 0, align 8
@default_timezone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_day(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @custom_version_names, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @create_day_start, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @default_timezone, align 4
  %14 = call i32 @tz_offset(i32 %13)
  %15 = add nsw i32 %12, %14
  %16 = sdiv i32 %15, 86400
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = sdiv i32 %18, 86400
  store i32 %19, i32* %2, align 4
  br label %50

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %4, align 8
  %23 = call i32 @assert(i32 0)
  %24 = bitcast i64* %4 to i32*
  %25 = call %struct.tm* @gmtime(i32* %24)
  store %struct.tm* %25, %struct.tm** %5, align 8
  %26 = load %struct.tm*, %struct.tm** %5, align 8
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.tm*, %struct.tm** %5, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.tm*, %struct.tm** %5, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 0
  store i32 12, i32* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = srem i32 %32, 100
  %34 = load %struct.tm*, %struct.tm** %5, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %3, align 4
  %37 = sdiv i32 %36, 100
  %38 = srem i32 %37, 100
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.tm*, %struct.tm** %5, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sdiv i32 %42, 10000
  %44 = sub nsw i32 %43, 1900
  %45 = load %struct.tm*, %struct.tm** %5, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tm*, %struct.tm** %5, align 8
  %48 = call i32 @mktime(%struct.tm* %47)
  %49 = sdiv i32 %48, 86400
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %20, %17, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @tz_offset(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
