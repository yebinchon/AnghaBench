; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-ram.c_index_get_next.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-ram.c_index_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_entry = type { i32, i32 }

@index_size = common dso_local global i32 0, align 4
@index_binary_data = common dso_local global i32* null, align 8
@index_offset = common dso_local global i64* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"(l,r) = (%d,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"index_size = %d\0A\00", align 1
@empty_index_entry = common dso_local global %struct.index_entry zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.index_entry* @index_get_next(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.index_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.index_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.index_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %14 = load i32, i32* @index_size, align 4
  store i32 %14, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %15

15:                                               ; preds = %61, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %16, %17
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** @index_binary_data, align 8
  %26 = load i64*, i64** @index_offset, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = bitcast i32* %31 to %struct.index_entry*
  store %struct.index_entry* %32, %struct.index_entry** %11, align 8
  %33 = load %struct.index_entry*, %struct.index_entry** %11, align 8
  %34 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.index_entry*, %struct.index_entry** %11, align 8
  %37 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @min(i32 %41, i32 %42)
  %44 = sub nsw i64 %43, 1
  %45 = call i32 @mystrcmp2(i32 %35, i32 %38, i8* %39, i32 %40, i64 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %20
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %61

52:                                               ; preds = %20
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %9, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %6, align 4
  br label %62

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %48
  br label %15

62:                                               ; preds = %58, %15
  %63 = load i32, i32* @verbosity, align 4
  %64 = icmp sge i32 %63, 4
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i32, i32* @stderr, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* @stderr, align 4
  %71 = load i32, i32* @index_size, align 4
  %72 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %65, %62
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @index_size, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load i32*, i32** @index_binary_data, align 8
  %81 = load i64*, i64** @index_offset, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  %87 = bitcast i32* %86 to %struct.index_entry*
  store %struct.index_entry* %87, %struct.index_entry** %13, align 8
  %88 = load %struct.index_entry*, %struct.index_entry** %13, align 8
  store %struct.index_entry* %88, %struct.index_entry** %3, align 8
  br label %90

89:                                               ; preds = %73
  store %struct.index_entry* @empty_index_entry, %struct.index_entry** %3, align 8
  br label %90

90:                                               ; preds = %89, %79
  %91 = load %struct.index_entry*, %struct.index_entry** %3, align 8
  ret %struct.index_entry* %91
}

declare dso_local i32 @mystrcmp2(i32, i32, i8*, i32, i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
