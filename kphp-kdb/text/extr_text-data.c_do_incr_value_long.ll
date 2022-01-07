; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_incr_value_long.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_do_incr_value_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_incr_field_long = type { i32, i64 }
%struct.value_data = type { i32, i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"do_incr_value_long(%d,%d,%d,%lld):\0A\00", align 1
@write_extra_mask = common dso_local global i32 0, align 4
@LEV_TX_INCR_FIELD_LONG = common dso_local global i64 0, align 8
@read_extra_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_incr_value_long(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.lev_incr_field_long*, align 8
  %11 = alloca %struct.value_data*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* @verbosity, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18, i64 %19)
  br label %21

21:                                               ; preds = %14, %4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @conv_uid(i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %32, 12
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28, %25, %21
  store i32 -1, i32* %5, align 4
  br label %76

35:                                               ; preds = %31
  %36 = load i32, i32* @write_extra_mask, align 4
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %36, %37
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %76

42:                                               ; preds = %35
  %43 = load i64, i64* @LEV_TX_INCR_FIELD_LONG, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.lev_incr_field_long* @alloc_log_event(i64 %46, i32 20, i32 %47)
  store %struct.lev_incr_field_long* %48, %struct.lev_incr_field_long** %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.lev_incr_field_long*, %struct.lev_incr_field_long** %10, align 8
  %51 = getelementptr inbounds %struct.lev_incr_field_long, %struct.lev_incr_field_long* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.lev_incr_field_long*, %struct.lev_incr_field_long** %10, align 8
  %54 = getelementptr inbounds %struct.lev_incr_field_long, %struct.lev_incr_field_long* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @read_extra_mask, align 4
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 1, %56
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %76

61:                                               ; preds = %42
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 1, %62
  %64 = call %struct.value_data* @alloc_value_data(i32 %63)
  store %struct.value_data* %64, %struct.value_data** %11, align 8
  %65 = load %struct.value_data*, %struct.value_data** %11, align 8
  %66 = getelementptr inbounds %struct.value_data, %struct.value_data* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.value_data*, %struct.value_data** %11, align 8
  %68 = getelementptr inbounds %struct.value_data, %struct.value_data* %67, i32 0, i32 0
  %69 = call i32 @memcpy(i32* %68, i64* %9, i32 8)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.value_data*, %struct.value_data** %11, align 8
  %73 = call i64 @adjust_message_values(i32 %70, i32 %71, %struct.value_data* %72)
  %74 = icmp sgt i64 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %61, %60, %41, %34
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i64) #1

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.lev_incr_field_long* @alloc_log_event(i64, i32, i32) #1

declare dso_local %struct.value_data* @alloc_value_data(i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i64 @adjust_message_values(i32, i32, %struct.value_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
