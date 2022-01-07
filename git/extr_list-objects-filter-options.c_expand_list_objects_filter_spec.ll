; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_expand_list_objects_filter_spec.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_expand_list_objects_filter_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.list_objects_filter_options = type { i64, i32, i32 }

@LOFC_BLOB_LIMIT = common dso_local global i64 0, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"blob:limit=%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @expand_list_objects_filter_spec(%struct.list_objects_filter_options* %0) #0 {
  %2 = alloca %struct.list_objects_filter_options*, align 8
  %3 = alloca %struct.strbuf, align 4
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %2, align 8
  %4 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %5 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LOFC_BLOB_LIMIT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %11 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %12 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %16 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %15, i32 0, i32 1
  %17 = call i32 @string_list_clear(i32* %16, i32 0)
  %18 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %19 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %18, i32 0, i32 1
  %20 = call i32 @strbuf_detach(%struct.strbuf* %3, i32* null)
  %21 = call i32 @string_list_append(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %9, %1
  %23 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %24 = call i8* @list_objects_filter_spec(%struct.list_objects_filter_options* %23)
  ret i8* %24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @string_list_clear(i32*, i32) #2

declare dso_local i32 @string_list_append(i32*, i32) #2

declare dso_local i32 @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i8* @list_objects_filter_spec(%struct.list_objects_filter_options*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
