; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_load_index.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_load_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@index_entries = common dso_local global i64 0, align 8
@NODE_TYPE_PLUS = common dso_local global i32 0, align 4
@NODE_TYPE_SURE = common dso_local global i32 0, align 4
@min_item = common dso_local global i8* null, align 8
@load_index.key = internal global [1000 x i32] zeroinitializer, align 16
@max_item = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  store i64 0, i64* @index_entries, align 8
  %8 = load i32, i32* @NODE_TYPE_PLUS, align 4
  %9 = load i32, i32* @NODE_TYPE_SURE, align 4
  %10 = or i32 %8, %9
  %11 = call i8* @alloc_item(i32 0, i32* null, i32 %10, i32 0)
  store i8* %11, i8** @min_item, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %19, %7
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 1000
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1000 x i32], [1000 x i32]* @load_index.key, i64 0, i64 %17
  store i32 2147483647, i32* %18, align 4
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %12

22:                                               ; preds = %12
  %23 = load i32, i32* @NODE_TYPE_PLUS, align 4
  %24 = load i32, i32* @NODE_TYPE_SURE, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @alloc_item(i32 1000, i32* getelementptr inbounds ([1000 x i32], [1000 x i32]* @load_index.key, i64 0, i64 0), i32 %25, i32 0)
  store i8* %26, i8** @max_item, align 8
  store i32 0, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  %28 = call i32 @assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i8* @alloc_item(i32, i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
