; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_entry_exists.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_entry_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32*, i64, i32** }
%struct.TYPE_7__ = type { i64, i64 }

@metafile_mode = common dso_local global i64 0, align 8
@NILL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @entry_exists(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i64, i64* @metafile_mode, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @prepare_list_metafile(i32 %16, i32 -1)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @assert(i32 0)
  store i32 0, i32* %3, align 4
  br label %67

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.TYPE_9__* @__get_list_f(i32 %22, i32 -1)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %6, align 8
  store i32 -1, i32* %7, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @find_metafile(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %67

32:                                               ; preds = %26
  %33 = load i32*, i32** @NILL, align 8
  store i32* %33, i32** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32** %9, i32*** %34, align 8
  br label %42

35:                                               ; preds = %21
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %7, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32** %40, i32*** %41, align 8
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.TYPE_7__* @get_metafile_ptr(i32 %46)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %10, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i64 %50, i64* %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32* %55, i32** %56, align 8
  br label %60

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %57, %45
  %61 = load i32, i32* %5, align 4
  %62 = call i32* @listree_lookup_large(%struct.TYPE_8__* %8, i32 %61, i32* %11)
  store i32* %62, i32** %12, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = icmp ne i32* %63, null
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %31, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @prepare_list_metafile(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @__get_list_f(i32, i32) #1

declare dso_local i32 @find_metafile(i32) #1

declare dso_local %struct.TYPE_7__* @get_metafile_ptr(i32) #1

declare dso_local i32* @listree_lookup_large(%struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
