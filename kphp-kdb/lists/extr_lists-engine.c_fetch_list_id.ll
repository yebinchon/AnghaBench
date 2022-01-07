; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_fetch_list_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_fetch_list_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@list_id_ints = common dso_local global i32 0, align 4
@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"list_id in not from this engine. log_split_mod = %d, log_split_min = %d, log_split_max = %d\00", align 1
@log_split_mod = common dso_local global i32 0, align 4
@log_split_min = common dso_local global i32 0, align 4
@log_split_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetch_list_id(i32***** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*****, align 8
  store i32***** %0, i32****** %3, align 8
  %4 = load i32*****, i32****** %3, align 8
  %5 = call i32 @assert(i32***** %4)
  %6 = load i32, i32* @list_id_ints, align 4
  %7 = mul nsw i32 4, %6
  %8 = call i64 @tl_fetch_check(i32 %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load i32*****, i32****** %3, align 8
  %13 = call i32 @tl_fetch_raw_data(i32***** %12, i32 4)
  %14 = load i32*****, i32****** %3, align 8
  %15 = load i32****, i32***** %14, align 8
  %16 = call i64 @conv_list_id(i32**** %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %20 = load i32, i32* @log_split_mod, align 4
  %21 = load i32, i32* @log_split_min, align 4
  %22 = load i32, i32* @log_split_max, align 4
  %23 = call i32 @tl_fetch_set_error_format(i32 %19, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i32 %22)
  store i32 -1, i32* %2, align 4
  br label %25

24:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %18, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @assert(i32*****) #1

declare dso_local i64 @tl_fetch_check(i32) #1

declare dso_local i32 @tl_fetch_raw_data(i32*****, i32) #1

declare dso_local i64 @conv_list_id(i32****) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
