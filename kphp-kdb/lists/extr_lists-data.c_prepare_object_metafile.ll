; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_prepare_object_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_prepare_object_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@tot_revlist_metafiles = common dso_local global i64 0, align 8
@tot_metafiles_memory = common dso_local global i64 0, align 8
@memory_for_metafiles = common dso_local global i64 0, align 8
@Header = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [53 x i8] c"prepare_object_metafile: x = %d, head_metafile = %d\0A\00", align 1
@head_metafile = common dso_local global i32 0, align 4
@metafiles = common dso_local global %struct.TYPE_4__** null, align 8
@tot_lost_aio_bytes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"skipping pending aio query. Total lost memory %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_object_metafile(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @choose_revlist_metafile(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @tot_revlist_metafiles, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %161

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = icmp sge i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  br label %19

19:                                               ; preds = %28, %14
  %20 = load i64, i64* @tot_metafiles_memory, align 8
  %21 = load i64, i64* @memory_for_metafiles, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = call i64 (...) @unload_LRU()
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i1 [ false, %19 ], [ %25, %23 ]
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %19

29:                                               ; preds = %26
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Header, i32 0, i32 0), align 8
  %32 = add nsw i64 %30, %31
  %33 = add nsw i64 %32, 1
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @head_metafile, align 4
  %37 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %97

40:                                               ; preds = %29
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %97

47:                                               ; preds = %40
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %47
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Header, i32 0, i32 0), align 8
  %68 = sub nsw i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = call i64 @get_revlist_metafile_offset(i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @Header, i32 0, i32 0), align 8
  %74 = sub nsw i64 %72, %73
  %75 = sub nsw i64 %74, 1
  %76 = trunc i64 %75 to i32
  %77 = call i64 @get_revlist_metafile_offset(i32 %76)
  %78 = sub nsw i64 %70, %77
  %79 = load i32, i32* @tot_lost_aio_bytes, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* @tot_lost_aio_bytes, align 4
  %83 = load i32, i32* @tot_lost_aio_bytes, align 4
  %84 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %85, i64 %87
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  %91 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %91, i64 %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %56, %47, %40, %29
  %98 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %98, i64 %100
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = icmp ne %struct.TYPE_4__* %102, null
  br i1 %103, label %122, label %104

104:                                              ; preds = %97
  %105 = call %struct.TYPE_4__* @zmalloc0(i32 4)
  %106 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %106, i64 %108
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %109, align 8
  %110 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %110, i64 %112
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i32 -1, i32* %115, align 4
  %116 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %116, i64 %118
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  store i32 -1, i32* %121, align 8
  br label %144

122:                                              ; preds = %97
  %123 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %123, i64 %125
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %122
  %132 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %132, i64 %134
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @update_use(i32 %141)
  store i32 1, i32* %3, align 4
  br label %161

143:                                              ; preds = %131, %122
  br label %144

144:                                              ; preds = %143, %104
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %144
  %149 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @metafiles, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %149, i64 %151
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %148, %144
  %158 = phi i1 [ true, %144 ], [ %156, %148 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @load_metafile_aio(i32 %145, i32 %159)
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %157, %140, %13
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i64 @choose_revlist_metafile(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @unload_LRU(...) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @get_revlist_metafile_offset(i32) #1

declare dso_local %struct.TYPE_4__* @zmalloc0(i32) #1

declare dso_local i32 @update_use(i32) #1

declare dso_local i32 @load_metafile_aio(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
