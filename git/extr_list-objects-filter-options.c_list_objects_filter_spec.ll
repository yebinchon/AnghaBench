; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_list_objects_filter_spec.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_list_objects_filter_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.list_objects_filter_options = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [41 x i8] c"no filter_spec available for this filter\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @list_objects_filter_spec(%struct.list_objects_filter_options* %0) #0 {
  %2 = alloca %struct.list_objects_filter_options*, align 8
  %3 = alloca %struct.strbuf, align 4
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %2, align 8
  %4 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %5 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @BUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %13 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %19 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %20 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %19, i32 0, i32 0
  %21 = call i32 @strbuf_add_separated_string_list(%struct.strbuf* %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %20)
  %22 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %23 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %22, i32 0, i32 0
  %24 = call i32 @string_list_clear(%struct.TYPE_6__* %23, i32 0)
  %25 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %26 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %25, i32 0, i32 0
  %27 = call i32 @strbuf_detach(%struct.strbuf* %3, i32* null)
  %28 = call i32 @string_list_append(%struct.TYPE_6__* %26, i32 %27)
  br label %29

29:                                               ; preds = %17, %11
  %30 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %31 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  ret i8* %36
}

declare dso_local i32 @BUG(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_add_separated_string_list(%struct.strbuf*, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @string_list_clear(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @string_list_append(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
