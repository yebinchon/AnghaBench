; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_find_longest_prefixes.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_find_longest_prefixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32, i32 }
%struct.strbuf = type { i32 }
%struct.string_list = type { i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@qsort_strcmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, i8**)* @find_longest_prefixes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_longest_prefixes(%struct.string_list* %0, i8** %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.argv_array, align 4
  %6 = alloca %struct.strbuf, align 4
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = bitcast %struct.argv_array* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 8, i1 false)
  %8 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load i8**, i8*** %4, align 8
  %10 = call i32 @argv_array_pushv(%struct.argv_array* %5, i8** %9)
  %11 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %5, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @qsort_strcmp, align 4
  %16 = call i32 @QSORT(i32 %12, i32 %14, i32 %15)
  %17 = load %struct.string_list*, %struct.string_list** %3, align 8
  %18 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @find_longest_prefixes_1(%struct.string_list* %17, %struct.strbuf* %6, i32 %19, i32 %21)
  %23 = call i32 @argv_array_clear(%struct.argv_array* %5)
  %24 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_pushv(%struct.argv_array*, i8**) #2

declare dso_local i32 @QSORT(i32, i32, i32) #2

declare dso_local i32 @find_longest_prefixes_1(%struct.string_list*, %struct.strbuf*, i32, i32) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
