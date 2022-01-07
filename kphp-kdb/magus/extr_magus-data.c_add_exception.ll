; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_add_exception.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_add_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.lev_magus_add_exception = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@LEV_MAGUS_ADD_EXCEPTION = common dso_local global i32 0, align 4
@types = common dso_local global i64* null, align 8
@sim_header = common dso_local global %struct.TYPE_5__* null, align 8
@index_mode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_exception(%struct.lev_magus_add_exception* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_magus_add_exception*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.lev_magus_add_exception* %0, %struct.lev_magus_add_exception** %3, align 8
  %8 = load %struct.lev_magus_add_exception*, %struct.lev_magus_add_exception** %3, align 8
  %9 = getelementptr inbounds %struct.lev_magus_add_exception, %struct.lev_magus_add_exception* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_4__* @conv_uid(i32 %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %109

15:                                               ; preds = %1
  %16 = load %struct.lev_magus_add_exception*, %struct.lev_magus_add_exception** %3, align 8
  %17 = getelementptr inbounds %struct.lev_magus_add_exception, %struct.lev_magus_add_exception* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LEV_MAGUS_ADD_EXCEPTION, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 0, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 256
  br label %26

26:                                               ; preds = %23, %15
  %27 = phi i1 [ false, %15 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i64*, i64** @types, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sim_header, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %36, %26
  %46 = phi i1 [ false, %26 ], [ %44, %36 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sim_header, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %struct.lev_magus_add_exception*, %struct.lev_magus_add_exception** %3, align 8
  %55 = getelementptr inbounds %struct.lev_magus_add_exception, %struct.lev_magus_add_exception* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32* @map_int_int_get(i32* %53, i32 %56)
  store i32* %57, i32** %6, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %85

60:                                               ; preds = %45
  %61 = load i64, i64* @index_mode, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %60
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sim_header, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32* %68, i32** %7, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sim_header, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.lev_magus_add_exception*, %struct.lev_magus_add_exception** %3, align 8
  %75 = getelementptr inbounds %struct.lev_magus_add_exception, %struct.lev_magus_add_exception* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @map_int_int_add(i32* %73, i32 %76)
  store i32* %77, i32** %6, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %63, %60, %45
  %86 = load i32*, i32** %6, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %109

89:                                               ; preds = %85
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 0, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 8388608
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i1 [ false, %89 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %5, align 4
  %104 = shl i32 %103, 23
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %104, %106
  %108 = call i32 @hset_int_add(i32* %102, i32 %107)
  store i32 1, i32* %2, align 4
  br label %109

109:                                              ; preds = %97, %88, %14
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_4__* @conv_uid(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @map_int_int_get(i32*, i32) #1

declare dso_local i32* @map_int_int_add(i32*, i32) #1

declare dso_local i32 @hset_int_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
