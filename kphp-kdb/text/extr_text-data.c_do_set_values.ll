; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_set_values.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_set_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_data = type { i32, i32, i32* }
%struct.lev_set_extra_fields = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"do_set_values(%d,%d,%d:%d,%d,...):\0A\00", align 1
@MAX_EXTRA_MASK = common dso_local global i32 0, align 4
@write_extra_mask = common dso_local global i32 0, align 4
@LEV_TX_SET_EXTRA_FIELDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_values(i32 %0, i32 %1, %struct.value_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.value_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lev_set_extra_fields*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.value_data* %2, %struct.value_data** %7, align 8
  %10 = load i32, i32* @verbosity, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.value_data*, %struct.value_data** %7, align 8
  %17 = getelementptr inbounds %struct.value_data, %struct.value_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.value_data*, %struct.value_data** %7, align 8
  %20 = getelementptr inbounds %struct.value_data, %struct.value_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.value_data*, %struct.value_data** %7, align 8
  %23 = getelementptr inbounds %struct.value_data, %struct.value_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %12
  %27 = load %struct.value_data*, %struct.value_data** %7, align 8
  %28 = getelementptr inbounds %struct.value_data, %struct.value_data* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i32 [ %31, %26 ], [ 0, %32 ]
  %35 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %18, i32 %21, i32 %34)
  br label %36

36:                                               ; preds = %33, %3
  %37 = load %struct.value_data*, %struct.value_data** %7, align 8
  %38 = getelementptr inbounds %struct.value_data, %struct.value_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.value_data*, %struct.value_data** %7, align 8
  %41 = getelementptr inbounds %struct.value_data, %struct.value_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load %struct.value_data*, %struct.value_data** %7, align 8
  %46 = getelementptr inbounds %struct.value_data, %struct.value_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MAX_EXTRA_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44, %36
  store i32 -1, i32* %4, align 4
  br label %105

53:                                               ; preds = %44
  %54 = load %struct.value_data*, %struct.value_data** %7, align 8
  %55 = getelementptr inbounds %struct.value_data, %struct.value_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @write_extra_mask, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %105

61:                                               ; preds = %53
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @conv_uid(i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %61
  store i32 -1, i32* %4, align 4
  br label %105

69:                                               ; preds = %65
  %70 = load %struct.value_data*, %struct.value_data** %7, align 8
  %71 = load i32, i32* @write_extra_mask, align 4
  %72 = call %struct.value_data* @convert_value_data(%struct.value_data* %70, i32 1, i32 %71)
  store %struct.value_data* %72, %struct.value_data** %7, align 8
  %73 = load %struct.value_data*, %struct.value_data** %7, align 8
  %74 = getelementptr inbounds %struct.value_data, %struct.value_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @extra_mask_intcount(i32 %75)
  %77 = mul nsw i32 4, %76
  store i32 %77, i32* %8, align 4
  %78 = load i64, i64* @LEV_TX_SET_EXTRA_FIELDS, align 8
  %79 = load %struct.value_data*, %struct.value_data** %7, align 8
  %80 = getelementptr inbounds %struct.value_data, %struct.value_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %78, %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 12, %84
  %86 = load i32, i32* %5, align 4
  %87 = call %struct.lev_set_extra_fields* @alloc_log_event(i64 %83, i32 %85, i32 %86)
  store %struct.lev_set_extra_fields* %87, %struct.lev_set_extra_fields** %9, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.lev_set_extra_fields*, %struct.lev_set_extra_fields** %9, align 8
  %90 = getelementptr inbounds %struct.lev_set_extra_fields, %struct.lev_set_extra_fields* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.lev_set_extra_fields*, %struct.lev_set_extra_fields** %9, align 8
  %92 = getelementptr inbounds %struct.lev_set_extra_fields, %struct.lev_set_extra_fields* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.value_data*, %struct.value_data** %7, align 8
  %95 = getelementptr inbounds %struct.value_data, %struct.value_data* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @memcpy(i32 %93, i32* %96, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.value_data*, %struct.value_data** %7, align 8
  %102 = call i64 @adjust_message_values(i32 %99, i32 %100, %struct.value_data* %101)
  %103 = icmp sgt i64 %102, 0
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %69, %68, %60, %52
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.value_data* @convert_value_data(%struct.value_data*, i32, i32) #1

declare dso_local i32 @extra_mask_intcount(i32) #1

declare dso_local %struct.lev_set_extra_fields* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @adjust_message_values(i32, i32, %struct.value_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
