; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_list_entry_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_entry_get = type { i32, i32, i32 }

@stats_buff = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4
@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"In get object flags 0..5 not supported\00", align 1
@TL_LIST_FLAG_IP = common dso_local global i32 0, align 4
@TL_LIST_FLAG_FRONT_IP = common dso_local global i32 0, align 4
@TL_LIST_FLAG_PORT = common dso_local global i32 0, align 4
@TL_LIST_FLAG_UA_HASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Get ip/front_ip/port/ua_hash not supported (yet?). (mode = 0x%08x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_list_entry_get(i32 (%struct.tl_act_extra*)* %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca i32 (%struct.tl_act_extra*)*, align 8
  %4 = alloca %struct.tl_act_extra*, align 8
  %5 = alloca %struct.tl_list_entry_get*, align 8
  store i32 (%struct.tl_act_extra*)* %0, i32 (%struct.tl_act_extra*)** %3, align 8
  %6 = load i32, i32* @stats_buff, align 4
  %7 = load i32 (%struct.tl_act_extra*)*, i32 (%struct.tl_act_extra*)** %3, align 8
  %8 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %6, i32 12, i32 (%struct.tl_act_extra*)* %7)
  store %struct.tl_act_extra* %8, %struct.tl_act_extra** %4, align 8
  %9 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  %10 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.tl_list_entry_get*
  store %struct.tl_list_entry_get* %13, %struct.tl_list_entry_get** %5, align 8
  %14 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %15 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %5, align 8
  %16 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %15, i32 0, i32 2
  %17 = call i64 @fetch_list_id(i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %64

20:                                               ; preds = %1
  %21 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %5, align 8
  %22 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %21, i32 0, i32 1
  %23 = call i64 @fetch_object_id(i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %64

26:                                               ; preds = %20
  %27 = call i32 (...) @tl_fetch_int()
  %28 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %5, align 8
  %29 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = call i32 (...) @tl_fetch_end()
  %31 = call i64 (...) @tl_fetch_error()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %64

34:                                               ; preds = %26
  %35 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %5, align 8
  %36 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 63
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %42 = call i32 (i32, i8*, ...) @tl_fetch_set_error_format(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %64

43:                                               ; preds = %34
  %44 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %5, align 8
  %45 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TL_LIST_FLAG_IP, align 4
  %48 = load i32, i32* @TL_LIST_FLAG_FRONT_IP, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @TL_LIST_FLAG_PORT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @TL_LIST_FLAG_UA_HASH, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %46, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %58 = load %struct.tl_list_entry_get*, %struct.tl_list_entry_get** %5, align 8
  %59 = getelementptr inbounds %struct.tl_list_entry_get, %struct.tl_list_entry_get* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @tl_fetch_set_error_format(i32 %57, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %2, align 8
  br label %64

62:                                               ; preds = %43
  %63 = load %struct.tl_act_extra*, %struct.tl_act_extra** %4, align 8
  store %struct.tl_act_extra* %63, %struct.tl_act_extra** %2, align 8
  br label %64

64:                                               ; preds = %62, %56, %40, %33, %25, %19
  %65 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  ret %struct.tl_act_extra* %65
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32 (%struct.tl_act_extra*)*) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i64 @fetch_object_id(i32*) #1

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
