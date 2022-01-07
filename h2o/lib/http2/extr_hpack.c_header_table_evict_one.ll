; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_header_table_evict_one.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_header_table_evict_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.st_h2o_hpack_header_table_entry_t = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@HEADER_TABLE_ENTRY_SIZE_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @header_table_evict_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @header_table_evict_one(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.st_h2o_hpack_header_table_entry_t*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = call %struct.st_h2o_hpack_header_table_entry_t* @h2o_hpack_header_table_get(%struct.TYPE_7__* %10, i64 %14)
  store %struct.st_h2o_hpack_header_table_entry_t* %15, %struct.st_h2o_hpack_header_table_entry_t** %3, align 8
  %16 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %3, align 8
  %17 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %3, align 8
  %22 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %20, %25
  %27 = load i64, i64* @HEADER_TABLE_ENTRY_SIZE_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %3, align 8
  %36 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i32 @h2o_iovec_is_token(%struct.TYPE_8__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %1
  %41 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %3, align 8
  %42 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i32 @h2o_mem_release_shared(%struct.TYPE_8__* %43)
  br label %45

45:                                               ; preds = %40, %1
  %46 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %3, align 8
  %47 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 @value_is_part_of_static_table(%struct.TYPE_8__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %3, align 8
  %53 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = call i32 @h2o_mem_release_shared(%struct.TYPE_8__* %54)
  br label %56

56:                                               ; preds = %51, %45
  %57 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %3, align 8
  %58 = call i32 @memset(%struct.st_h2o_hpack_header_table_entry_t* %57, i32 0, i32 16)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.st_h2o_hpack_header_table_entry_t* @h2o_hpack_header_table_get(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @h2o_iovec_is_token(%struct.TYPE_8__*) #1

declare dso_local i32 @h2o_mem_release_shared(%struct.TYPE_8__*) #1

declare dso_local i32 @value_is_part_of_static_table(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.st_h2o_hpack_header_table_entry_t*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
