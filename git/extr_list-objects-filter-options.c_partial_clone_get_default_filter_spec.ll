; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_partial_clone_get_default_filter_spec.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_partial_clone_get_default_filter_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.list_objects_filter_options = type { i32 }
%struct.promisor_remote = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @partial_clone_get_default_filter_spec(%struct.list_objects_filter_options* %0, i8* %1) #0 {
  %3 = alloca %struct.list_objects_filter_options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.promisor_remote*, align 8
  %6 = alloca %struct.strbuf, align 4
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.promisor_remote* @promisor_remote_find(i8* %7)
  store %struct.promisor_remote* %8, %struct.promisor_remote** %5, align 8
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %10 = load %struct.promisor_remote*, %struct.promisor_remote** %5, align 8
  %11 = icmp ne %struct.promisor_remote* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %15 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %14, i32 0, i32 0
  %16 = load %struct.promisor_remote*, %struct.promisor_remote** %5, align 8
  %17 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @string_list_append(i32* %15, i32 %18)
  %20 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %21 = load %struct.promisor_remote*, %struct.promisor_remote** %5, align 8
  %22 = getelementptr inbounds %struct.promisor_remote, %struct.promisor_remote* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gently_parse_list_objects_filter(%struct.list_objects_filter_options* %20, i32 %23, %struct.strbuf* %6)
  %25 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %26

26:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.promisor_remote* @promisor_remote_find(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @string_list_append(i32*, i32) #1

declare dso_local i32 @gently_parse_list_objects_filter(%struct.list_objects_filter_options*, i32, %struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
