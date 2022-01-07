; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_month.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_get_month.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@custom_version_names = common dso_local global i32 0, align 4
@create_day_start = common dso_local global i64 0, align 8
@default_timezone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_month(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @custom_version_names, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* @create_day_start, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i32, i32* @default_timezone, align 4
  %15 = call i64 @tz_offset(i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %13, %8
  %19 = bitcast i64* %4 to i32*
  %20 = call %struct.tm* @gmtime(i32* %19)
  store %struct.tm* %20, %struct.tm** %5, align 8
  %21 = load %struct.tm*, %struct.tm** %5, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = sdiv i32 %25, 100
  %27 = srem i32 %26, 100
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @tz_offset(i32) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
