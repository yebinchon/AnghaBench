; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_datedistr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_datedistr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_datedistr = type { i8*, i8*, i8*, i8*, i32 }

@stats_buff = common dso_local global i32 0, align 4
@tl_do_datedistr = common dso_local global i32 0, align 4
@CHECK_LIST_OBJECT_INTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_act_extra* @tl_datedistr() #0 {
  %1 = alloca %struct.tl_act_extra*, align 8
  %2 = alloca %struct.tl_act_extra*, align 8
  %3 = alloca %struct.tl_datedistr*, align 8
  %4 = load i32, i32* @stats_buff, align 4
  %5 = load i32, i32* @tl_do_datedistr, align 4
  %6 = call %struct.tl_act_extra* @tl_act_extra_init(i32 %4, i32 40, i32 %5)
  store %struct.tl_act_extra* %6, %struct.tl_act_extra** %2, align 8
  %7 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %8 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.tl_datedistr*
  store %struct.tl_datedistr* %11, %struct.tl_datedistr** %3, align 8
  %12 = load i32, i32* @CHECK_LIST_OBJECT_INTS, align 4
  %13 = load %struct.tl_datedistr*, %struct.tl_datedistr** %3, align 8
  %14 = getelementptr inbounds %struct.tl_datedistr, %struct.tl_datedistr* %13, i32 0, i32 4
  %15 = call i64 @fetch_list_id(i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %1, align 8
  br label %37

18:                                               ; preds = %0
  %19 = call i8* (...) @tl_fetch_int()
  %20 = load %struct.tl_datedistr*, %struct.tl_datedistr** %3, align 8
  %21 = getelementptr inbounds %struct.tl_datedistr, %struct.tl_datedistr* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = call i8* (...) @tl_fetch_int()
  %23 = load %struct.tl_datedistr*, %struct.tl_datedistr** %3, align 8
  %24 = getelementptr inbounds %struct.tl_datedistr, %struct.tl_datedistr* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = call i8* (...) @tl_fetch_int()
  %26 = load %struct.tl_datedistr*, %struct.tl_datedistr** %3, align 8
  %27 = getelementptr inbounds %struct.tl_datedistr, %struct.tl_datedistr* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = call i8* (...) @tl_fetch_int()
  %29 = load %struct.tl_datedistr*, %struct.tl_datedistr** %3, align 8
  %30 = getelementptr inbounds %struct.tl_datedistr, %struct.tl_datedistr* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = call i32 (...) @tl_fetch_end()
  %32 = call i64 (...) @tl_fetch_error()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  store %struct.tl_act_extra* null, %struct.tl_act_extra** %1, align 8
  br label %37

35:                                               ; preds = %18
  %36 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  store %struct.tl_act_extra* %36, %struct.tl_act_extra** %1, align 8
  br label %37

37:                                               ; preds = %35, %34, %17
  %38 = load %struct.tl_act_extra*, %struct.tl_act_extra** %1, align 8
  ret %struct.tl_act_extra* %38
}

declare dso_local %struct.tl_act_extra* @tl_act_extra_init(i32, i32, i32) #1

declare dso_local i64 @fetch_list_id(i32*) #1

declare dso_local i8* @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local i64 @tl_fetch_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
