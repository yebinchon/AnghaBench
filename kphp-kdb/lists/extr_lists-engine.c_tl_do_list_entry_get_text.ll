; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_entry_get_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_tl_do_list_entry_get_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_list_entry_get_text = type { i32, i32 }

@R = common dso_local global i32* null, align 8
@TL_MAYBE_FALSE = common dso_local global i32 0, align 4
@TL_MAYBE_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_list_entry_get_text(%struct.tl_act_extra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca %struct.tl_list_entry_get_text*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %3, align 8
  %8 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %9 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.tl_list_entry_get_text*
  store %struct.tl_list_entry_get_text* %12, %struct.tl_list_entry_get_text** %4, align 8
  %13 = load %struct.tl_list_entry_get_text*, %struct.tl_list_entry_get_text** %4, align 8
  %14 = getelementptr inbounds %struct.tl_list_entry_get_text, %struct.tl_list_entry_get_text* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tl_list_entry_get_text*, %struct.tl_list_entry_get_text** %4, align 8
  %17 = getelementptr inbounds %struct.tl_list_entry_get_text, %struct.tl_list_entry_get_text* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @R, align 8
  %20 = call i32 @fetch_list_entry(i32 %15, i32 %18, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -2
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %59

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @TL_MAYBE_FALSE, align 4
  %29 = call i32 @tl_store_int(i32 %28)
  store i32 0, i32* %2, align 4
  br label %59

30:                                               ; preds = %24
  %31 = load i32, i32* @TL_MAYBE_TRUE, align 4
  %32 = call i32 @tl_store_int(i32 %31)
  %33 = load i32*, i32** @R, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 12
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32*, i32** @R, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 10
  %38 = bitcast i32* %37 to i8**
  store i8** %38, i8*** %7, align 8
  %39 = load i8**, i8*** %7, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %41, %30
  %46 = phi i1 [ true, %30 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i8**, i8*** %7, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8**, i8*** %7, align 8
  %53 = load i8*, i8** %52, align 8
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i8* [ %53, %51 ], [ null, %54 ]
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @tl_store_string(i8* %56, i32 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %27, %23
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @fetch_list_entry(i32, i32, i32*) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tl_store_string(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
