; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_unload_history_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_unload_history_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unload_history_metafile(%lld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot unload history metafile (%lld)\0A\00", align 1
@allocated_history_metafile_bytes = common dso_local global i32 0, align 4
@cur_history_metafile_bytes = common dso_local global i32 0, align 4
@cur_history_metafiles = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unload_history_metafile(%lld) END\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unload_history_metafile(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call %struct.TYPE_6__* @get_user(i64 %6)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = load i32, i32* @verbosity, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22, %17, %14
  %30 = load i32, i32* @verbosity, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %32, %29
  store i32 0, i32* %2, align 4
  br label %90

37:                                               ; preds = %22
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %5, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i32 @assert(%struct.TYPE_8__* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %51, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %60, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @allocated_history_metafile_bytes, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* @allocated_history_metafile_bytes, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @cur_history_metafile_bytes, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* @cur_history_metafile_bytes, align 4
  %77 = load i32, i32* @cur_history_metafiles, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* @cur_history_metafiles, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = call i32 @free(%struct.TYPE_7__* %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %82, align 8
  %83 = load i32, i32* @verbosity, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %37
  %86 = load i32, i32* @stderr, align 4
  %87 = load i64, i64* %3, align 8
  %88 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %85, %37
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %36
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_6__* @get_user(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
