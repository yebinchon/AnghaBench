; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_add_exception_string.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_add_exception_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32, i64 }
%struct.lev_magus_add_exception_string = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@LEV_MAGUS_ADD_EXCEPTION_STRING = common dso_local global i32 0, align 4
@types = common dso_local global i64* null, align 8
@sim_header = common dso_local global %struct.TYPE_5__* null, align 8
@index_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_exception_string(%struct.lev_magus_add_exception_string* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_magus_add_exception_string*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.lev_magus_add_exception_string* %0, %struct.lev_magus_add_exception_string** %3, align 8
  %8 = load %struct.lev_magus_add_exception_string*, %struct.lev_magus_add_exception_string** %3, align 8
  %9 = getelementptr inbounds %struct.lev_magus_add_exception_string, %struct.lev_magus_add_exception_string* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_4__* @conv_uid(i32 %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %146

15:                                               ; preds = %1
  %16 = load %struct.lev_magus_add_exception_string*, %struct.lev_magus_add_exception_string** %3, align 8
  %17 = getelementptr inbounds %struct.lev_magus_add_exception_string, %struct.lev_magus_add_exception_string* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LEV_MAGUS_ADD_EXCEPTION_STRING, align 4
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
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sim_header, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %36, %26
  %45 = phi i1 [ false, %26 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sim_header, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load %struct.lev_magus_add_exception_string*, %struct.lev_magus_add_exception_string** %3, align 8
  %54 = getelementptr inbounds %struct.lev_magus_add_exception_string, %struct.lev_magus_add_exception_string* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @map_string_int_get(i32* %52, i32 %55)
  store i32* %56, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %122

59:                                               ; preds = %44
  %60 = load i32, i32* @index_mode, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %122

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sim_header, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sim_header, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 2
  %77 = load i32, i32* @index_mode, align 4
  %78 = mul nsw i32 1024000, %77
  %79 = add nsw i32 %76, %78
  %80 = add nsw i32 %79, 1
  %81 = icmp slt i32 %69, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.lev_magus_add_exception_string*, %struct.lev_magus_add_exception_string** %3, align 8
  %85 = getelementptr inbounds %struct.lev_magus_add_exception_string, %struct.lev_magus_add_exception_string* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dl_strdup(i32 %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sim_header, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %87, i32* %97, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sim_header, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sim_header, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32* @map_string_int_add(i32* %102, i32 %113)
  store i32* %114, i32** %6, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %6, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %62, %59, %44
  %123 = load i32*, i32** %6, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %146

126:                                              ; preds = %122
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp sle i32 0, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 8388608
  br label %134

134:                                              ; preds = %130, %126
  %135 = phi i1 [ false, %126 ], [ %133, %130 ]
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %5, align 4
  %141 = shl i32 %140, 23
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %141, %143
  %145 = call i32 @hset_int_add(i32* %139, i32 %144)
  store i32 1, i32* %2, align 4
  br label %146

146:                                              ; preds = %134, %125, %14
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.TYPE_4__* @conv_uid(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @map_string_int_get(i32*, i32) #1

declare dso_local i32 @dl_strdup(i32) #1

declare dso_local i32* @map_string_int_add(i32*, i32) #1

declare dso_local i32 @hset_int_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
