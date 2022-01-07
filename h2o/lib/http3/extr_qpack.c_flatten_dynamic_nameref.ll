; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_flatten_dynamic_nameref.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_flatten_dynamic_nameref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_qpack_flatten_context_t = type { i64, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@H2O_HPACK_ENCODE_INT_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_qpack_flatten_context_t*, i64, i64, i32)* @flatten_dynamic_nameref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flatten_dynamic_nameref(%struct.st_h2o_qpack_flatten_context_t* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.st_h2o_qpack_flatten_context_t*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_6__* %5 to i64*
  store i64 %2, i64* %9, align 4
  store %struct.st_h2o_qpack_flatten_context_t* %0, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %12 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %18 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %4
  %20 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %21 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %24 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %27 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @H2O_HPACK_ENCODE_INT_MAX_LENGTH, align 4
  %32 = mul nsw i32 %31, 2
  %33 = add nsw i32 %30, %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %33, %35
  %37 = call i32 @h2o_vector_reserve(i32 %22, %struct.TYPE_7__* %25, i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %40 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %38, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %19
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 32, i32 0
  %48 = or i32 64, %47
  %49 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %50 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %55 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %53, i64 %59
  store i32 %48, i32* %60, align 4
  %61 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %62 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %65 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub nsw i64 %66, %67
  %69 = call i32 @flatten_int(%struct.TYPE_7__* %63, i64 %68, i32 4)
  br label %97

70:                                               ; preds = %19
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 8, i32 0
  %75 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %76 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %81 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  store i32 %74, i32* %86, align 4
  %87 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %88 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %87, i32 0, i32 2
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %92 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = sub nsw i64 %94, 1
  %96 = call i32 @flatten_int(%struct.TYPE_7__* %89, i64 %95, i32 3)
  br label %97

97:                                               ; preds = %70, %43
  %98 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %99 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @flatten_string(%struct.TYPE_7__* %100, i32 %102, i32 %104, i32 7, i32 %105)
  ret void
}

declare dso_local i32 @h2o_vector_reserve(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @flatten_int(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @flatten_string(%struct.TYPE_7__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
