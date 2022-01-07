; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_h2o_hpack_dispose_header_table.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_h2o_hpack_dispose_header_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, %struct.st_h2o_hpack_header_table_entry_t* }
%struct.st_h2o_hpack_header_table_entry_t = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_hpack_dispose_header_table(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.st_h2o_hpack_header_table_entry_t*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %47, %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %16, i64 %17
  store %struct.st_h2o_hpack_header_table_entry_t* %18, %struct.st_h2o_hpack_header_table_entry_t** %4, align 8
  %19 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %4, align 8
  %20 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @h2o_iovec_is_token(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %13
  %25 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %4, align 8
  %26 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @h2o_mem_release_shared(i32 %27)
  br label %29

29:                                               ; preds = %24, %13
  %30 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %4, align 8
  %31 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @value_is_part_of_static_table(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %4, align 8
  %37 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @h2o_mem_release_shared(i32 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = urem i64 %42, %45
  store i64 %46, i64* %3, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %13, label %53

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %56, align 8
  %58 = call i32 @free(%struct.st_h2o_hpack_header_table_entry_t* %57)
  ret void
}

declare dso_local i32 @h2o_iovec_is_token(i32) #1

declare dso_local i32 @h2o_mem_release_shared(i32) #1

declare dso_local i32 @value_is_part_of_static_table(i32) #1

declare dso_local i32 @free(%struct.st_h2o_hpack_header_table_entry_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
