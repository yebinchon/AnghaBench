; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_sum.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_sum = type { i32, i32, i32, i64, i32, i32 }

@TL_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_list_sum(%struct.tl_act_extra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca %struct.tl_list_sum*, align 8
  %5 = alloca i64, align 8
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %3, align 8
  %6 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %7 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.tl_list_sum*
  store %struct.tl_list_sum* %10, %struct.tl_list_sum** %4, align 8
  %11 = load %struct.tl_list_sum*, %struct.tl_list_sum** %4, align 8
  %12 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tl_list_sum*, %struct.tl_list_sum** %4, align 8
  %15 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tl_list_sum*, %struct.tl_list_sum** %4, align 8
  %18 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.tl_list_sum*, %struct.tl_list_sum** %4, align 8
  %22 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tl_list_sum*, %struct.tl_list_sum** %4, align 8
  %25 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tl_list_sum*, %struct.tl_list_sum** %4, align 8
  %28 = getelementptr inbounds %struct.tl_list_sum, %struct.tl_list_sum* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @prepare_list_sum(i32 %13, i32 %16, i32* %20, i32 %23, i32 %26, i32 %29)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, -2
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %45

34:                                               ; preds = %1
  %35 = load i64, i64* %5, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %5, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %45

40:                                               ; preds = %34
  %41 = load i32, i32* @TL_LONG, align 4
  %42 = call i32 @tl_store_int(i32 %41)
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @tl_store_long(i64 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %37, %33
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @prepare_list_sum(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @tl_store_long(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
