; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_intersect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i32, i64 }
%struct.tl_list_intersect = type { i32, i32, i32, i32, i32, i64, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_list_intersect_full = common dso_local global i32 0, align 4
@tl_do_list_intersect = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4
@object_id_ints = common dso_local global i32 0, align 4
@TL_ERROR_VALUE_NOT_IN_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Too long query. Total %d bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_intersect(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tl_act_extra*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tl_act_extra*, align 8
  %11 = alloca %struct.tl_list_intersect*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @stats_buff, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @tl_do_list_intersect_full, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @tl_do_list_intersect, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %13, i32 40, i32 %21)
  store %struct.tl_act_extra* %22, %struct.tl_act_extra** %10, align 8
  %23 = load %struct.tl_act_extra*, %struct.tl_act_extra** %10, align 8
  %24 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.tl_list_intersect*
  store %struct.tl_list_intersect* %27, %struct.tl_list_intersect** %11, align 8
  %28 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %29 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %30 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %29, i32 0, i32 6
  %31 = call i64 @fetch_list_id(i32* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %5, align 8
  br label %116

34:                                               ; preds = %20
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @tl_fetch_int()
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @object_id_ints, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %44 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = call i32 (...) @tl_fetch_int()
  %46 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %47 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = call i32 (...) @tl_fetch_int()
  %49 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %50 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %53 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %55 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 4, %56
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %60 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = icmp sgt i32 %62, 1048576
  br i1 %63, label %69, label %64

64:                                               ; preds = %41
  %65 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %66 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64, %41
  %70 = load i32, i32* @TL_ERROR_VALUE_NOT_IN_RANGE, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %73 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %71, %74
  %76 = call i32 @tl_fetch_set_error_format(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %75)
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %5, align 8
  br label %116

77:                                               ; preds = %64
  %78 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %79 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %84 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %82, %85
  %87 = call i64 @tl_fetch_string_data(i8* %81, i32 %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %5, align 8
  br label %116

90:                                               ; preds = %77
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %93 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  %96 = mul nsw i32 %91, %95
  %97 = load %struct.tl_act_extra*, %struct.tl_act_extra** %10, align 8
  %98 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = call i32 (...) @tl_fetch_int()
  br label %106

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ -1, %105 ]
  %108 = load %struct.tl_list_intersect*, %struct.tl_list_intersect** %11, align 8
  %109 = getelementptr inbounds %struct.tl_list_intersect, %struct.tl_list_intersect* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = call i32 (...) @tl_fetch_end()
  %111 = call i64 (...) @tl_fetch_error()
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %5, align 8
  br label %116

114:                                              ; preds = %106
  %115 = load %struct.tl_act_extra*, %struct.tl_act_extra** %10, align 8
  store %struct.tl_act_extra* %115, %struct.tl_act_extra** %5, align 8
  br label %116

116:                                              ; preds = %114, %113, %89, %69, %33
  %117 = load %struct.tl_act_extra*, %struct.tl_act_extra** %5, align 8
  ret %struct.tl_act_extra* %117
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i32 @tl_fetch_int(...) #1

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
