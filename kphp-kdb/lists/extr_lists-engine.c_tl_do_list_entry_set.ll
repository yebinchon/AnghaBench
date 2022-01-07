; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_entry_set.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_entry_set = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@TL_BOOL_FALSE = common dso_local global i32 0, align 4
@TL_BOOL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_list_entry_set(%struct.tl_act_extra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca %struct.tl_list_entry_set*, align 8
  %5 = alloca i32, align 4
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %3, align 8
  %6 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %7 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.tl_list_entry_set*
  store %struct.tl_list_entry_set* %10, %struct.tl_list_entry_set** %4, align 8
  %11 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %12 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %1
  %16 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %17 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %20 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %23 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %26 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %29 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %32 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %31, i32 0, i32 5
  %33 = call i32 @do_add_list_entry(i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, -2
  br i1 %35, label %36, label %37

36:                                               ; preds = %15
  store i32 -2, i32* %2, align 4
  br label %101

37:                                               ; preds = %15
  %38 = load i32, i32* %5, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @TL_BOOL_FALSE, align 4
  %42 = call i32 @tl_store_int(i32 %41)
  store i32 0, i32* %2, align 4
  br label %101

43:                                               ; preds = %37
  br label %98

44:                                               ; preds = %1
  %45 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %46 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %49 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %52 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %60

56:                                               ; preds = %44
  %57 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %58 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  br label %60

60:                                               ; preds = %56, %55
  %61 = phi i32 [ 3, %55 ], [ %59, %56 ]
  %62 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %63 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %66 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %69 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %68, i32 0, i32 5
  %70 = call i32 @do_add_list_entry(i32 %47, i32 %50, i32 %61, i32 %64, i32 %67, i32* %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, -2
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  store i32 -2, i32* %2, align 4
  br label %101

74:                                               ; preds = %60
  %75 = load i32, i32* %5, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @TL_BOOL_FALSE, align 4
  %79 = call i32 @tl_store_int(i32 %78)
  store i32 0, i32* %2, align 4
  br label %101

80:                                               ; preds = %74
  %81 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %82 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %85 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %88 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.tl_list_entry_set*, %struct.tl_list_entry_set** %4, align 8
  %91 = getelementptr inbounds %struct.tl_list_entry_set, %struct.tl_list_entry_set* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @do_change_entry_text(i32 %83, i32 %86, i32 %89, i64 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp sge i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  br label %98

98:                                               ; preds = %80, %43
  %99 = load i32, i32* @TL_BOOL_TRUE, align 4
  %100 = call i32 @tl_store_int(i32 %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %98, %77, %73, %40, %36
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @do_add_list_entry(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @do_change_entry_text(i32, i32, i32, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
