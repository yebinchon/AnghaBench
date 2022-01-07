; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects.c_process_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects.c_process_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.traversal_context = type { i32, i32 (%struct.object*, i32*, i32)*, i32, %struct.TYPE_2__* }
%struct.object = type opaque
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.blob = type { %struct.object.0 }
%struct.object.0 = type { i32, i32 }
%struct.strbuf = type { i64, i32* }

@.str = private unnamed_addr constant [16 x i8] c"bad blob object\00", align 1
@UNINTERESTING = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@LOFS_BLOB = common dso_local global i32 0, align 4
@LOFR_MARK_SEEN = common dso_local global i32 0, align 4
@LOFR_DO_SHOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.traversal_context*, %struct.blob*, %struct.strbuf*, i8*)* @process_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_blob(%struct.traversal_context* %0, %struct.blob* %1, %struct.strbuf* %2, i8* %3) #0 {
  %5 = alloca %struct.traversal_context*, align 8
  %6 = alloca %struct.blob*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object.0*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.traversal_context* %0, %struct.traversal_context** %5, align 8
  store %struct.blob* %1, %struct.blob** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.blob*, %struct.blob** %6, align 8
  %13 = getelementptr inbounds %struct.blob, %struct.blob* %12, i32 0, i32 0
  store %struct.object.0* %13, %struct.object.0** %9, align 8
  %14 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %15 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %112

21:                                               ; preds = %4
  %22 = load %struct.object.0*, %struct.object.0** %9, align 8
  %23 = icmp ne %struct.object.0* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @die(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.object.0*, %struct.object.0** %9, align 8
  %28 = getelementptr inbounds %struct.object.0, %struct.object.0* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UNINTERESTING, align 4
  %31 = load i32, i32* @SEEN, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %112

36:                                               ; preds = %26
  %37 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %38 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.object.0*, %struct.object.0** %9, align 8
  %45 = getelementptr inbounds %struct.object.0, %struct.object.0* %44, i32 0, i32 1
  %46 = call i32 @has_object_file(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.object.0*, %struct.object.0** %9, align 8
  %50 = getelementptr inbounds %struct.object.0, %struct.object.0* %49, i32 0, i32 1
  %51 = call i64 @is_promisor_object(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %112

54:                                               ; preds = %48, %43, %36
  %55 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strbuf_addstr(%struct.strbuf* %58, i8* %59)
  %61 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %62 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @LOFS_BLOB, align 4
  %67 = load %struct.object.0*, %struct.object.0** %9, align 8
  %68 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %72 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %77 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @list_objects_filter__filter_object(i32 %65, i32 %66, %struct.object.0* %67, i32* %70, i32* %75, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @LOFR_MARK_SEEN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %54
  %85 = load i32, i32* @SEEN, align 4
  %86 = load %struct.object.0*, %struct.object.0** %9, align 8
  %87 = getelementptr inbounds %struct.object.0, %struct.object.0* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %54
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @LOFR_DO_SHOW, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %97 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %96, i32 0, i32 1
  %98 = load i32 (%struct.object*, i32*, i32)*, i32 (%struct.object*, i32*, i32)** %97, align 8
  %99 = load %struct.object.0*, %struct.object.0** %9, align 8
  %100 = bitcast %struct.object.0* %99 to %struct.object*
  %101 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %102 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.traversal_context*, %struct.traversal_context** %5, align 8
  %105 = getelementptr inbounds %struct.traversal_context, %struct.traversal_context* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 %98(%struct.object* %100, i32* %103, i32 %106)
  br label %108

108:                                              ; preds = %95, %90
  %109 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i32 @strbuf_setlen(%struct.strbuf* %109, i64 %110)
  br label %112

112:                                              ; preds = %108, %53, %35, %20
  ret void
}

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @has_object_file(i32*) #1

declare dso_local i64 @is_promisor_object(i32*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @list_objects_filter__filter_object(i32, i32, %struct.object.0*, i32*, i32*, i32) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
