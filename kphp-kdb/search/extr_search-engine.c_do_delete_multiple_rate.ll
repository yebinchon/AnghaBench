; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_delete_multiple_rate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_delete_multiple_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.hashset_int = type { i32 }

@value_buff = common dso_local global i8* null, align 8
@func_delete_multiple_rate = common dso_local global i32 0, align 4
@delete_hash_query_items = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_delete_multiple_rate(%struct.connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hashset_int, align 4
  %12 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** @value_buff, align 8
  store i8* %13, i8** %8, align 8
  %14 = load %struct.connection*, %struct.connection** %5, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 0
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @read_in(i32* %15, i8* %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8 0, i8* %26, align 1
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %43, %3
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 44
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %27

46:                                               ; preds = %27
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 10, i32* %10, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @hashset_int_init(%struct.hashset_int* %11, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %69

55:                                               ; preds = %50
  %56 = load i8*, i8** @value_buff, align 8
  %57 = load i32, i32* @func_delete_multiple_rate, align 4
  %58 = call i64 @int_list_foreach(i8* %56, %struct.hashset_int* %11, i32 %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @hashset_int_free(%struct.hashset_int* %11)
  store i32 0, i32* %4, align 4
  br label %69

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @do_delete_items_with_rate_using_hashset(%struct.hashset_int* %11, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @delete_hash_query_items, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* @delete_hash_query_items, align 4
  %68 = call i32 @hashset_int_free(%struct.hashset_int* %11)
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %62, %60, %54
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i8*, i32) #1

declare dso_local i32 @hashset_int_init(%struct.hashset_int*, i32) #1

declare dso_local i64 @int_list_foreach(i8*, %struct.hashset_int*, i32) #1

declare dso_local i32 @hashset_int_free(%struct.hashset_int*) #1

declare dso_local i32 @do_delete_items_with_rate_using_hashset(%struct.hashset_int*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
