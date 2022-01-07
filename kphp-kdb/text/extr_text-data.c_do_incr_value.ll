; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_incr_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_incr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_incr_field = type { i32, i32 }
%struct.value_data = type { i32*, i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"do_incr_value(%d,%d,%d,%d):\0A\00", align 1
@write_extra_mask = common dso_local global i32 0, align 4
@LEV_TX_INCR_FIELD = common dso_local global i64 0, align 8
@read_extra_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_incr_value(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_incr_field*, align 8
  %11 = alloca %struct.value_data*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @verbosity, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %14, %4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @conv_uid(i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp uge i32 %29, 8
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25, %21
  store i32 -1, i32* %5, align 4
  br label %75

32:                                               ; preds = %28
  %33 = load i32, i32* @write_extra_mask, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %33, %34
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %75

39:                                               ; preds = %32
  %40 = load i64, i64* @LEV_TX_INCR_FIELD, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.lev_incr_field* @alloc_log_event(i64 %43, i32 16, i32 %44)
  store %struct.lev_incr_field* %45, %struct.lev_incr_field** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.lev_incr_field*, %struct.lev_incr_field** %10, align 8
  %48 = getelementptr inbounds %struct.lev_incr_field, %struct.lev_incr_field* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.lev_incr_field*, %struct.lev_incr_field** %10, align 8
  %51 = getelementptr inbounds %struct.lev_incr_field, %struct.lev_incr_field* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @read_extra_mask, align 4
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %75

58:                                               ; preds = %39
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 1, %59
  %61 = call %struct.value_data* @alloc_value_data(i32 %60)
  store %struct.value_data* %61, %struct.value_data** %11, align 8
  %62 = load %struct.value_data*, %struct.value_data** %11, align 8
  %63 = getelementptr inbounds %struct.value_data, %struct.value_data* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.value_data*, %struct.value_data** %11, align 8
  %66 = getelementptr inbounds %struct.value_data, %struct.value_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.value_data*, %struct.value_data** %11, align 8
  %72 = call i64 @adjust_message_values(i32 %69, i32 %70, %struct.value_data* %71)
  %73 = icmp sgt i64 %72, 0
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %58, %57, %38, %31
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.lev_incr_field* @alloc_log_event(i64, i32, i32) #1

declare dso_local %struct.value_data* @alloc_value_data(i32) #1

declare dso_local i64 @adjust_message_values(i32, i32, %struct.value_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
