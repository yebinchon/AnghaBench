; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_handle_content_length_entity_read.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_handle_content_length_entity_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http1_conn_t = type { %struct.TYPE_4__, %struct.TYPE_5__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.st_h2o_http1_content_length_entity_reader = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_http1_conn_t*)* @handle_content_length_entity_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_content_length_entity_read(%struct.st_h2o_http1_conn_t* %0) #0 {
  %2 = alloca %struct.st_h2o_http1_conn_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_h2o_http1_content_length_entity_reader*, align 8
  %5 = alloca i64, align 8
  store %struct.st_h2o_http1_conn_t* %0, %struct.st_h2o_http1_conn_t** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %7 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.st_h2o_http1_content_length_entity_reader*
  store %struct.st_h2o_http1_content_length_entity_reader* %10, %struct.st_h2o_http1_content_length_entity_reader** %4, align 8
  %11 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %12 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %19 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %23 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %21, %28
  %30 = load %struct.st_h2o_http1_content_length_entity_reader*, %struct.st_h2o_http1_content_length_entity_reader** %4, align 8
  %31 = getelementptr inbounds %struct.st_h2o_http1_content_length_entity_reader, %struct.st_h2o_http1_content_length_entity_reader* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %35 = load %struct.st_h2o_http1_content_length_entity_reader*, %struct.st_h2o_http1_content_length_entity_reader** %4, align 8
  %36 = getelementptr inbounds %struct.st_h2o_http1_content_length_entity_reader, %struct.st_h2o_http1_content_length_entity_reader* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %39 = getelementptr inbounds %struct.st_h2o_http1_conn_t, %struct.st_h2o_http1_conn_t* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %37, %41
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %34, %1
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %55

50:                                               ; preds = %46, %43
  %51 = load %struct.st_h2o_http1_conn_t*, %struct.st_h2o_http1_conn_t** %2, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @handle_one_body_fragment(%struct.st_h2o_http1_conn_t* %51, i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %49
  ret void
}

declare dso_local i32 @handle_one_body_fragment(%struct.st_h2o_http1_conn_t*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
