; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_serialize_local_copies_as_text.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-engine.c_serialize_local_copies_as_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_local_copy = type { i8*, i32 }
%union.cache_packed_local_copy_location = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@value_buff = common dso_local global i64 0, align 8
@VALUE_BUFF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s\09%d\09%d\09%d\09%d\09%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_local_copy*, i32)* @serialize_local_copies_as_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serialize_local_copies_as_text(%struct.cache_local_copy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_local_copy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.cache_packed_local_copy_location, align 8
  %9 = alloca i32, align 4
  store %struct.cache_local_copy* %0, %struct.cache_local_copy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %62, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %10
  %15 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %15, i64 %17
  %19 = call i32 @cache_local_copy_get_flags(%struct.cache_local_copy* %18, %union.cache_packed_local_copy_location* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* @value_buff, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* @VALUE_BUFF_SIZE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %27, i64 %29
  %31 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast %union.cache_packed_local_copy_location* %8 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = bitcast %union.cache_packed_local_copy_location* %8 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = bitcast %union.cache_packed_local_copy_location* %8 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.cache_local_copy*, %struct.cache_local_copy** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %46, i64 %48
  %50 = getelementptr inbounds %struct.cache_local_copy, %struct.cache_local_copy* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @snprintf(i64 %23, i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %36, i32 %40, i32 %44, i32 %45, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @VALUE_BUFF_SIZE, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %67

61:                                               ; preds = %14
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %10

65:                                               ; preds = %10
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @cache_local_copy_get_flags(%struct.cache_local_copy*, %union.cache_packed_local_copy_location*) #1

declare dso_local i64 @snprintf(i64, i32, i8*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
