; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_do_set_object_type.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_do_set_object_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_set_object_type = type { i64 }

@LEV_HINTS_SET_OBJECT_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_object_type(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_hints_set_object_type*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @check_type(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @check_type(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @check_object_id(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %12, %3
  store i32 0, i32* %4, align 4
  br label %41

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %41

26:                                               ; preds = %21
  %27 = load i64, i64* @LEV_HINTS_SET_OBJECT_TYPE, align 8
  %28 = load i32, i32* %5, align 4
  %29 = mul nsw i32 256, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = call %struct.lev_hints_set_object_type* @alloc_log_event(i64 %34, i32 8, i32 0)
  store %struct.lev_hints_set_object_type* %35, %struct.lev_hints_set_object_type** %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.lev_hints_set_object_type*, %struct.lev_hints_set_object_type** %8, align 8
  %38 = getelementptr inbounds %struct.lev_hints_set_object_type, %struct.lev_hints_set_object_type* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.lev_hints_set_object_type*, %struct.lev_hints_set_object_type** %8, align 8
  %40 = call i32 @set_object_type(%struct.lev_hints_set_object_type* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %26, %25, %20
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @check_type(i32) #1

declare dso_local i32 @check_object_id(i64) #1

declare dso_local %struct.lev_hints_set_object_type* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @set_object_type(%struct.lev_hints_set_object_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
