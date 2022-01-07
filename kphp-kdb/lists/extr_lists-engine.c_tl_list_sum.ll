; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_sum.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i32, i64 }
%struct.tl_list_sum = type { i32, i32, i32, i64, i8*, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_list_sum = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4
@object_id_ints = common dso_local global i8* null, align 8
@TL_ERROR_VALUE_NOT_IN_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Too long query. Total %d bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_sum(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tl_act_extra*, align 8
  %7 = alloca %struct.tl_list_sum*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @stats_buff, align 4
  %10 = load i32, i32* @tl_do_list_sum, align 4
  %11 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %9, i32 40, i32 %10)
  store %struct.tl_act_extra* %11, %struct.tl_act_extra** %6, align 8
  %12 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  %13 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.tl_list_sum*
  store %struct.tl_list_sum* %16, %struct.tl_list_sum** %7, align 8
  %17 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %18 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %19 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %18, i32 0, i32 5
  %20 = call i64 @fetch_list_id(i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %102

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i8* (...) @tl_fetch_int()
  br label %30

28:                                               ; preds = %23
  %29 = load i8*, i8** @object_id_ints, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i8* [ %27, %26 ], [ %29, %28 ]
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %34 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = call i8* (...) @tl_fetch_int()
  %36 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %37 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = call i8* (...) @tl_fetch_int()
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %41 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %44 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %46 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = add nsw i32 %47, %50
  %52 = mul nsw i32 4, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %55 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = icmp sgt i32 %57, 1048576
  br i1 %58, label %64, label %59

59:                                               ; preds = %30
  %60 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %61 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59, %30
  %65 = load i32, i32* @TL_ERROR_VALUE_NOT_IN_RANGE, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %68 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = call i32 @tl_fetch_set_error_format(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %70)
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %102

72:                                               ; preds = %59
  %73 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %74 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %79 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = call i64 @tl_fetch_string_data(i8* %76, i32 %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %102

85:                                               ; preds = %72
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.tl_list_sum*, %struct.tl_list_sum** %7, align 8
  %88 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  %91 = mul nsw i32 %86, %90
  %92 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  %93 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = call i32 (...) @tl_fetch_end()
  %97 = call i64 (...) @tl_fetch_error()
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %102

100:                                              ; preds = %85
  %101 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  store %struct.tl_act_extra* %101, %struct.tl_act_extra** %3, align 8
  br label %102

102:                                              ; preds = %100, %99, %84, %64, %22
  %103 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  ret %struct.tl_act_extra* %103
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i8* @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32) #1

declare dso_local i64 @tl_fetch_string_data(i8*, i32) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
