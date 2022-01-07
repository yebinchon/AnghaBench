; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_transform_to_combine_type.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_transform_to_combine_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_objects_filter_options = type { i64, i32, i32, i32, %struct.list_objects_filter_options* }

@LOFC_COMBINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"combine:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_objects_filter_options*)* @transform_to_combine_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_to_combine_type(%struct.list_objects_filter_options* %0) #0 {
  %2 = alloca %struct.list_objects_filter_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_objects_filter_options*, align 8
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %2, align 8
  %5 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %6 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @assert(i64 %7)
  %9 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %10 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LOFC_COMBINE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %51

15:                                               ; preds = %1
  store i32 2, i32* %3, align 4
  %16 = call %struct.list_objects_filter_options* @xcalloc(i32 2, i32 32)
  store %struct.list_objects_filter_options* %16, %struct.list_objects_filter_options** %4, align 8
  %17 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %18 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %17, i64 0
  %19 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %20 = bitcast %struct.list_objects_filter_options* %18 to i8*
  %21 = bitcast %struct.list_objects_filter_options* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 32, i1 false)
  %22 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %23 = call i32 @memset(%struct.list_objects_filter_options* %22, i32 0, i32 32)
  %24 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %25 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %26 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %25, i32 0, i32 4
  store %struct.list_objects_filter_options* %24, %struct.list_objects_filter_options** %26, align 8
  %27 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %28 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %27, i32 0, i32 1
  store i32 2, i32* %28, align 8
  %29 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %30 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %29, i32 0, i32 2
  store i32 1, i32* %30, align 4
  %31 = load i64, i64* @LOFC_COMBINE, align 8
  %32 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %33 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %35 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %34, i32 0, i32 3
  %36 = call i32 @xstrdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @string_list_append(i32* %35, i32 %36)
  %38 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %39 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %40 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %39, i32 0, i32 4
  %41 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %40, align 8
  %42 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %41, i64 0
  %43 = call i32 @list_objects_filter_spec(%struct.list_objects_filter_options* %42)
  %44 = call i32 @filter_spec_append_urlencode(%struct.list_objects_filter_options* %38, i32 %43)
  %45 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %2, align 8
  %46 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %45, i32 0, i32 4
  %47 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %46, align 8
  %48 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %47, i64 0
  %49 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %48, i32 0, i32 3
  %50 = call i32 @string_list_clear(i32* %49, i32 0)
  br label %51

51:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @assert(i64) #1

declare dso_local %struct.list_objects_filter_options* @xcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.list_objects_filter_options*, i32, i32) #1

declare dso_local i32 @string_list_append(i32*, i32) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @filter_spec_append_urlencode(%struct.list_objects_filter_options*, i32) #1

declare dso_local i32 @list_objects_filter_spec(%struct.list_objects_filter_options*) #1

declare dso_local i32 @string_list_clear(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
