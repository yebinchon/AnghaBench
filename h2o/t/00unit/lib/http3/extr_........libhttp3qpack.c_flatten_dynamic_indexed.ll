; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_flatten_dynamic_indexed.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_flatten_dynamic_indexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_qpack_flatten_context_t = type { i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32* }

@H2O_HPACK_ENCODE_INT_MAX_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_qpack_flatten_context_t*, i64)* @flatten_dynamic_indexed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flatten_dynamic_indexed(%struct.st_h2o_qpack_flatten_context_t* %0, i64 %1) #0 {
  %3 = alloca %struct.st_h2o_qpack_flatten_context_t*, align 8
  %4 = alloca i64, align 8
  store %struct.st_h2o_qpack_flatten_context_t* %0, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %6 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %9 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %12 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @H2O_HPACK_ENCODE_INT_MAX_LENGTH, align 8
  %17 = add i64 %15, %16
  %18 = call i32 @h2o_vector_reserve(i32 %7, %struct.TYPE_3__* %10, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %21 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %27 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %31 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %36 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %41 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  store i32 128, i32* %45, align 4
  %46 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %47 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %50 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = sub nsw i64 %51, %52
  %54 = call i32 @flatten_int(%struct.TYPE_3__* %48, i64 %53, i32 6)
  br label %77

55:                                               ; preds = %28
  %56 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %57 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %62 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  store i32 16, i32* %66, align 4
  %67 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %68 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %3, align 8
  %72 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = sub nsw i64 %74, 1
  %76 = call i32 @flatten_int(%struct.TYPE_3__* %69, i64 %75, i32 4)
  br label %77

77:                                               ; preds = %55, %34
  ret void
}

declare dso_local i32 @h2o_vector_reserve(i32, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @flatten_int(%struct.TYPE_3__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
