; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_search_line_log_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_search_line_log_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_log_data = type { %struct.line_log_data*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.line_log_data* (%struct.line_log_data*, i8*, %struct.line_log_data**)* @search_line_log_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.line_log_data* @search_line_log_data(%struct.line_log_data* %0, i8* %1, %struct.line_log_data** %2) #0 {
  %4 = alloca %struct.line_log_data*, align 8
  %5 = alloca %struct.line_log_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.line_log_data**, align 8
  %8 = alloca %struct.line_log_data*, align 8
  %9 = alloca i32, align 4
  store %struct.line_log_data* %0, %struct.line_log_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.line_log_data** %2, %struct.line_log_data*** %7, align 8
  %10 = load %struct.line_log_data*, %struct.line_log_data** %5, align 8
  store %struct.line_log_data* %10, %struct.line_log_data** %8, align 8
  %11 = load %struct.line_log_data**, %struct.line_log_data*** %7, align 8
  %12 = icmp ne %struct.line_log_data** %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load %struct.line_log_data**, %struct.line_log_data*** %7, align 8
  store %struct.line_log_data* null, %struct.line_log_data** %14, align 8
  br label %15

15:                                               ; preds = %13, %3
  br label %16

16:                                               ; preds = %38, %15
  %17 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %18 = icmp ne %struct.line_log_data* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %21 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strcmp(i32 %22, i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  store %struct.line_log_data* %28, %struct.line_log_data** %4, align 8
  br label %43

29:                                               ; preds = %19
  %30 = load %struct.line_log_data**, %struct.line_log_data*** %7, align 8
  %31 = icmp ne %struct.line_log_data** %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %37 = load %struct.line_log_data**, %struct.line_log_data*** %7, align 8
  store %struct.line_log_data* %36, %struct.line_log_data** %37, align 8
  br label %38

38:                                               ; preds = %35, %32, %29
  %39 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  %40 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %39, i32 0, i32 0
  %41 = load %struct.line_log_data*, %struct.line_log_data** %40, align 8
  store %struct.line_log_data* %41, %struct.line_log_data** %8, align 8
  br label %16

42:                                               ; preds = %16
  store %struct.line_log_data* null, %struct.line_log_data** %4, align 8
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.line_log_data*, %struct.line_log_data** %4, align 8
  ret %struct.line_log_data* %44
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
