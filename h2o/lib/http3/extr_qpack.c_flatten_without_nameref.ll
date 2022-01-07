; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_flatten_without_nameref.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_flatten_without_nameref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_qpack_flatten_context_t = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@H2O_HPACK_ENCODE_INT_MAX_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_qpack_flatten_context_t*, %struct.TYPE_6__*, i64, i32)* @flatten_without_nameref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flatten_without_nameref(%struct.st_h2o_qpack_flatten_context_t* %0, %struct.TYPE_6__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.st_h2o_qpack_flatten_context_t*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_6__* %5 to i64*
  store i64 %2, i64* %9, align 4
  store %struct.st_h2o_qpack_flatten_context_t* %0, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %11 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %14 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %17 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @H2O_HPACK_ENCODE_INT_MAX_LENGTH, align 4
  %22 = mul nsw i32 %21, 2
  %23 = add nsw i32 %20, %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %27, %29
  %31 = call i32 @h2o_vector_reserve(i32 %12, %struct.TYPE_7__* %15, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 16, i32 0
  %36 = or i32 32, %35
  %37 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %38 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %43 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  store i32 %36, i32* %48, align 4
  %49 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %50 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @flatten_string(%struct.TYPE_7__* %51, i32 %54, i32 %57, i32 3, i32 0)
  %59 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %6, align 8
  %60 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @flatten_string(%struct.TYPE_7__* %61, i32 %63, i32 %65, i32 7, i32 %66)
  ret void
}

declare dso_local i32 @h2o_vector_reserve(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @flatten_string(%struct.TYPE_7__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
