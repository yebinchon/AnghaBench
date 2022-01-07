; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_prepare_list_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_prepare_list_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"preparing metafile...\0A\00", align 1
@tot_metafiles_memory = common dso_local global i64 0, align 8
@memory_for_metafiles = common dso_local global i64 0, align 8
@Header = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"preparing metafile #%d of %d\0A\00", align 1
@metafiles = common dso_local global %struct.TYPE_4__** null, align 8
@tot_lost_aio_bytes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"skipping pending aio query. Total lost memory %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_list_metafile(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %17, %2
  %9 = load i64, i64* @tot_metafiles_memory, align 8
  %10 = load i64, i64* @memory_for_metafiles, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = call i64 (...) @unload_LRU()
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i1 [ false, %8 ], [ %14, %12 ]
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %8

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @get_list_metafile(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %148

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Header, i32 0, i32 0), align 4
  %27 = icmp slt i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Header, i32 0, i32 0), align 4
  %32 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %24
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %84

42:                                               ; preds = %35
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %42
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @assert(i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i64 @get_metafile_offset(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @get_metafile_offset(i32 %63)
  %65 = sub nsw i64 %62, %64
  %66 = load i32, i32* @tot_lost_aio_bytes, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* @tot_lost_aio_bytes, align 4
  %70 = load i32, i32* @tot_lost_aio_bytes, align 4
  %71 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 %80
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %51, %42, %35, %24
  %85 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %85, i64 %87
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %84
  %92 = call %struct.TYPE_4__* @zmalloc0(i32 4)
  %93 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %93, i64 %95
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %96, align 8
  %97 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %97, i64 %99
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 -1, i32* %102, align 4
  %103 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %103, i64 %105
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store i32 -1, i32* %108, align 8
  br label %131

109:                                              ; preds = %84
  %110 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %110, i64 %112
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %109
  %119 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %119, i64 %121
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @update_use(i32 %128)
  store i32 1, i32* %3, align 4
  br label %148

130:                                              ; preds = %118, %109
  br label %131

131:                                              ; preds = %130, %91
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %131
  %136 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %136, i64 %138
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br label %144

144:                                              ; preds = %135, %131
  %145 = phi i1 [ true, %131 ], [ %143, %135 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @load_metafile_aio(i32 %132, i32 %146)
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %127, %23
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i64 @unload_LRU(...) #1

declare dso_local i32 @get_list_metafile(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_metafile_offset(i32) #1

declare dso_local %struct.TYPE_4__* @zmalloc0(i32) #1

declare dso_local i32 @update_use(i32) #1

declare dso_local i32 @load_metafile_aio(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
