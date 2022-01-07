; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_get = type { i32, i32, i8*, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_list_get = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4
@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"in non-full get list only modes 0..63 and bit 15 are supported\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_get(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tl_act_extra*, align 8
  %7 = alloca %struct.tl_list_get*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @stats_buff, align 4
  %9 = load i32, i32* @tl_do_list_get, align 4
  %10 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %8, i32 24, i32 %9)
  store %struct.tl_act_extra* %10, %struct.tl_act_extra** %6, align 8
  %11 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  %12 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.tl_list_get*
  store %struct.tl_list_get* %15, %struct.tl_list_get** %7, align 8
  %16 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %17 = load %struct.tl_list_get*, %struct.tl_list_get** %7, align 8
  %18 = getelementptr inbounds %struct.tl_list_get, %struct.tl_list_get* %17, i32 0, i32 3
  %19 = call i64 @fetch_list_id(i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %69

22:                                               ; preds = %2
  %23 = call i8* (...) @tl_fetch_int()
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.tl_list_get*, %struct.tl_list_get** %7, align 8
  %26 = getelementptr inbounds %struct.tl_list_get, %struct.tl_list_get* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = load %struct.tl_list_get*, %struct.tl_list_get** %7, align 8
  %31 = getelementptr inbounds %struct.tl_list_get, %struct.tl_list_get* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, -32832
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %37 = call i32 @tl_fetch_set_error_format(i32 %36, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %69

38:                                               ; preds = %29, %22
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load %struct.tl_list_get*, %struct.tl_list_get** %7, align 8
  %43 = getelementptr inbounds %struct.tl_list_get, %struct.tl_list_get* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, 32768
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = call i8* (...) @tl_fetch_int()
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.tl_list_get*, %struct.tl_list_get** %7, align 8
  %53 = getelementptr inbounds %struct.tl_list_get, %struct.tl_list_get* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = call i8* (...) @tl_fetch_int()
  %55 = load %struct.tl_list_get*, %struct.tl_list_get** %7, align 8
  %56 = getelementptr inbounds %struct.tl_list_get, %struct.tl_list_get* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %62

57:                                               ; preds = %46
  %58 = load %struct.tl_list_get*, %struct.tl_list_get** %7, align 8
  %59 = getelementptr inbounds %struct.tl_list_get, %struct.tl_list_get* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  %60 = load %struct.tl_list_get*, %struct.tl_list_get** %7, align 8
  %61 = getelementptr inbounds %struct.tl_list_get, %struct.tl_list_get* %60, i32 0, i32 2
  store i8* null, i8** %61, align 8
  br label %62

62:                                               ; preds = %57, %49
  %63 = call i32 (...) @tl_fetch_end()
  %64 = call i64 (...) @tl_fetch_error()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %3, align 8
  br label %69

67:                                               ; preds = %62
  %68 = load %struct.tl_act_extra*, %struct.tl_act_extra** %6, align 8
  store %struct.tl_act_extra* %68, %struct.tl_act_extra** %3, align 8
  br label %69

69:                                               ; preds = %67, %66, %35, %21
  %70 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  ret %struct.tl_act_extra* %70
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i8* @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
