; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_show_ident_date.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_show_ident_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_split = type { i64, i64, i64, i64 }
%struct.date_mode = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @show_ident_date(%struct.ident_split* %0, %struct.date_mode* %1) #0 {
  %3 = alloca %struct.ident_split*, align 8
  %4 = alloca %struct.date_mode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ident_split* %0, %struct.ident_split** %3, align 8
  store %struct.date_mode* %1, %struct.date_mode** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.ident_split*, %struct.ident_split** %3, align 8
  %8 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.ident_split*, %struct.ident_split** %3, align 8
  %13 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.ident_split*, %struct.ident_split** %3, align 8
  %18 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @parse_timestamp(i64 %19, i32* null, i32 10)
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %16, %11, %2
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @date_overflows(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %51

26:                                               ; preds = %21
  %27 = load %struct.ident_split*, %struct.ident_split** %3, align 8
  %28 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.ident_split*, %struct.ident_split** %3, align 8
  %33 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.ident_split*, %struct.ident_split** %3, align 8
  %38 = getelementptr inbounds %struct.ident_split, %struct.ident_split* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @strtol(i64 %39, i32* null, i32 10)
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %36, %31, %26
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @INT_MAX, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @INT_MIN, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %41
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %49, %45
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.date_mode*, %struct.date_mode** %4, align 8
  %55 = call i8* @show_date(i64 %52, i64 %53, %struct.date_mode* %54)
  ret i8* %55
}

declare dso_local i64 @parse_timestamp(i64, i32*, i32) #1

declare dso_local i64 @date_overflows(i64) #1

declare dso_local i64 @strtol(i64, i32*, i32) #1

declare dso_local i8* @show_date(i64, i64, %struct.date_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
