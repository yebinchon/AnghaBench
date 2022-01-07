; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_header_table_evict.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_header_table_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_qpack_header_table_t = type { i64, i64, i32, %struct.TYPE_4__**, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@HEADER_ENTRY_SIZE_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_qpack_header_table_t*, i64)* @header_table_evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @header_table_evict(%struct.st_h2o_qpack_header_table_t* %0, i64 %1) #0 {
  %3 = alloca %struct.st_h2o_qpack_header_table_t*, align 8
  %4 = alloca i64, align 8
  store %struct.st_h2o_qpack_header_table_t* %0, %struct.st_h2o_qpack_header_table_t** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %24, %2
  %6 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %3, align 8
  %7 = getelementptr inbounds %struct.st_h2o_qpack_header_table_t, %struct.st_h2o_qpack_header_table_t* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %9 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %3, align 8
  %10 = getelementptr inbounds %struct.st_h2o_qpack_header_table_t, %struct.st_h2o_qpack_header_table_t* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %12 = icmp ne %struct.TYPE_4__** %8, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %5
  %14 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %3, align 8
  %15 = getelementptr inbounds %struct.st_h2o_qpack_header_table_t, %struct.st_h2o_qpack_header_table_t* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %16, %17
  %19 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %3, align 8
  %20 = getelementptr inbounds %struct.st_h2o_qpack_header_table_t, %struct.st_h2o_qpack_header_table_t* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ule i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %66

24:                                               ; preds = %13
  %25 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %3, align 8
  %26 = getelementptr inbounds %struct.st_h2o_qpack_header_table_t, %struct.st_h2o_qpack_header_table_t* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %26, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %3, align 8
  %34 = getelementptr inbounds %struct.st_h2o_qpack_header_table_t, %struct.st_h2o_qpack_header_table_t* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %32, %38
  %40 = load i64, i64* @HEADER_ENTRY_SIZE_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %3, align 8
  %43 = getelementptr inbounds %struct.st_h2o_qpack_header_table_t, %struct.st_h2o_qpack_header_table_t* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %3, align 8
  %47 = getelementptr inbounds %struct.st_h2o_qpack_header_table_t, %struct.st_h2o_qpack_header_table_t* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @h2o_mem_release_shared(%struct.TYPE_4__* %49)
  %51 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %3, align 8
  %52 = getelementptr inbounds %struct.st_h2o_qpack_header_table_t, %struct.st_h2o_qpack_header_table_t* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i32 1
  store %struct.TYPE_4__** %54, %struct.TYPE_4__*** %52, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %3, align 8
  %56 = getelementptr inbounds %struct.st_h2o_qpack_header_table_t, %struct.st_h2o_qpack_header_table_t* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %5

59:                                               ; preds = %5
  %60 = load %struct.st_h2o_qpack_header_table_t*, %struct.st_h2o_qpack_header_table_t** %3, align 8
  %61 = getelementptr inbounds %struct.st_h2o_qpack_header_table_t, %struct.st_h2o_qpack_header_table_t* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  br label %66

66:                                               ; preds = %59, %23
  ret void
}

declare dso_local i32 @h2o_mem_release_shared(%struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
