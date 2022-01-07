; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_line_log_data_insert.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_line_log_data_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_log_data = type { i8*, %struct.line_log_data*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line_log_data**, i8*, i64, i64)* @line_log_data_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @line_log_data_insert(%struct.line_log_data** %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.line_log_data**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.line_log_data*, align 8
  %10 = alloca %struct.line_log_data*, align 8
  store %struct.line_log_data** %0, %struct.line_log_data*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.line_log_data**, %struct.line_log_data*** %5, align 8
  %12 = load %struct.line_log_data*, %struct.line_log_data** %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.line_log_data* @search_line_log_data(%struct.line_log_data* %12, i8* %13, %struct.line_log_data** %9)
  store %struct.line_log_data* %14, %struct.line_log_data** %10, align 8
  %15 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %16 = icmp ne %struct.line_log_data* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %19 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %18, i32 0, i32 2
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @range_set_append_unsafe(i32* %19, i64 %20, i64 %21)
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @free(i8* %23)
  br label %53

25:                                               ; preds = %4
  %26 = call %struct.line_log_data* @xcalloc(i32 1, i32 24)
  store %struct.line_log_data* %26, %struct.line_log_data** %10, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %29 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %31 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %30, i32 0, i32 2
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @range_set_append(i32* %31, i64 %32, i64 %33)
  %35 = load %struct.line_log_data*, %struct.line_log_data** %9, align 8
  %36 = icmp ne %struct.line_log_data* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %25
  %38 = load %struct.line_log_data*, %struct.line_log_data** %9, align 8
  %39 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %38, i32 0, i32 1
  %40 = load %struct.line_log_data*, %struct.line_log_data** %39, align 8
  %41 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %42 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %41, i32 0, i32 1
  store %struct.line_log_data* %40, %struct.line_log_data** %42, align 8
  %43 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %44 = load %struct.line_log_data*, %struct.line_log_data** %9, align 8
  %45 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %44, i32 0, i32 1
  store %struct.line_log_data* %43, %struct.line_log_data** %45, align 8
  br label %53

46:                                               ; preds = %25
  %47 = load %struct.line_log_data**, %struct.line_log_data*** %5, align 8
  %48 = load %struct.line_log_data*, %struct.line_log_data** %47, align 8
  %49 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %50 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %49, i32 0, i32 1
  store %struct.line_log_data* %48, %struct.line_log_data** %50, align 8
  %51 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %52 = load %struct.line_log_data**, %struct.line_log_data*** %5, align 8
  store %struct.line_log_data* %51, %struct.line_log_data** %52, align 8
  br label %53

53:                                               ; preds = %17, %46, %37
  ret void
}

declare dso_local %struct.line_log_data* @search_line_log_data(%struct.line_log_data*, i8*, %struct.line_log_data**) #1

declare dso_local i32 @range_set_append_unsafe(i32*, i64, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.line_log_data* @xcalloc(i32, i32) #1

declare dso_local i32 @range_set_append(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
