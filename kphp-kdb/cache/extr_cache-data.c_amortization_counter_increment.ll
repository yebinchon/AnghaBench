; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_amortization_counter_increment.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_amortization_counter_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.time_amortization_table = type { i32 }
%struct.amortization_counter = type { i8*, i32 }

@log_last_ts = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amortization_counter_increment(%struct.time_amortization_table* %0, %struct.amortization_counter* %1, i32 %2) #0 {
  %4 = alloca %struct.time_amortization_table*, align 8
  %5 = alloca %struct.amortization_counter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.time_amortization_table* %0, %struct.time_amortization_table** %4, align 8
  store %struct.amortization_counter* %1, %struct.amortization_counter** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** @log_last_ts, align 8
  %9 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %10 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = ptrtoint i8* %8 to i64
  %13 = ptrtoint i8* %11 to i64
  %14 = sub i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %21 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %57

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.time_amortization_table*, %struct.time_amortization_table** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @time_amortization_table_fast_exp(%struct.time_amortization_table* %31, i32 %32)
  %34 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %35 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i8*, i8** @log_last_ts, align 8
  %39 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %40 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %43 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %57

46:                                               ; preds = %24
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.time_amortization_table*, %struct.time_amortization_table** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @time_amortization_table_fast_exp(%struct.time_amortization_table* %48, i32 %50)
  %52 = mul nsw i32 %47, %51
  %53 = load %struct.amortization_counter*, %struct.amortization_counter** %5, align 8
  %54 = getelementptr inbounds %struct.amortization_counter, %struct.amortization_counter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %18, %46, %30
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @time_amortization_table_fast_exp(%struct.time_amortization_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
