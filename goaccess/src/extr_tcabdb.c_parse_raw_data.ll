; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_parse_raw_data.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_tcabdb.c_parse_raw_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@MTRC_DATAMAP = common dso_local global i32 0, align 4
@STRING = common dso_local global i64 0, align 8
@MTRC_HITS = common dso_local global i32 0, align 4
@INTEGER = common dso_local global i64 0, align 8
@data_iter_generic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @parse_raw_data(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %14 [
    i32 128, label %9
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MTRC_DATAMAP, align 4
  %12 = call i8* @get_hash(i32 %10, i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i64, i64* @STRING, align 8
  store i64 %13, i64* %5, align 8
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @MTRC_HITS, align 4
  %17 = call i8* @get_hash(i32 %15, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i64, i64* @INTEGER, align 8
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %14, %9
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %55

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @ht_get_size(i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_7__* @init_new_raw_data(i32 %26, i32 %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @data_iter_generic, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = call i32 @tc_db_foreach(i8* %32, i32 %33, %struct.TYPE_7__* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @STRING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %23
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sort_raw_str_data(%struct.TYPE_7__* %42, i32 %45)
  br label %53

47:                                               ; preds = %23
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @sort_raw_num_data(%struct.TYPE_7__* %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %2, align 8
  br label %55

55:                                               ; preds = %53, %22
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %56
}

declare dso_local i8* @get_hash(i32, i32) #1

declare dso_local i32 @ht_get_size(i8*) #1

declare dso_local %struct.TYPE_7__* @init_new_raw_data(i32, i32) #1

declare dso_local i32 @tc_db_foreach(i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @sort_raw_str_data(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sort_raw_num_data(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
