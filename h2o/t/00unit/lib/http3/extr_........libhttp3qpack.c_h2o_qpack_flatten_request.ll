; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_h2o_qpack_flatten_request.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_........libhttp3qpack.c_h2o_qpack_flatten_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.st_h2o_qpack_flatten_context_t = type { i32 }

@h2o_qpack_lookup_method = common dso_local global i32 0, align 4
@H2O_TOKEN_METHOD = common dso_local global i32 0, align 4
@H2O_URL_SCHEME_HTTP = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@H2O_URL_SCHEME_HTTPS = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@h2o_qpack_lookup_scheme = common dso_local global i32 0, align 4
@H2O_TOKEN_SCHEME = common dso_local global i32 0, align 4
@h2o_qpack_lookup_authority = common dso_local global i32 0, align 4
@H2O_TOKEN_AUTHORITY = common dso_local global i32 0, align 4
@h2o_qpack_lookup_path = common dso_local global i32 0, align 4
@H2O_TOKEN_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_qpack_flatten_request(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5, %struct.TYPE_5__* %6, i32 %7, i32 %8, i32* %9, i64 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.st_h2o_qpack_flatten_context_t, align 4
  %24 = alloca i64, align 8
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  store i64 %10, i64* %22, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32*, i32** %15, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = call i32 @prepare_flatten(%struct.st_h2o_qpack_flatten_context_t* %23, i32* %25, i32* %26, i32 %27, i32* %28, i32* %29)
  %31 = load i32, i32* @h2o_qpack_lookup_method, align 4
  %32 = load i32, i32* @H2O_TOKEN_METHOD, align 4
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @flatten_known_header_with_static_lookup(%struct.st_h2o_qpack_flatten_context_t* %23, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %36 = icmp eq %struct.TYPE_5__* %35, @H2O_URL_SCHEME_HTTP
  br i1 %36, label %37, label %39

37:                                               ; preds = %11
  %38 = call i32 @flatten_static_indexed(%struct.st_h2o_qpack_flatten_context_t* %23, i32 22)
  br label %52

39:                                               ; preds = %11
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %41 = icmp eq %struct.TYPE_5__* %40, @H2O_URL_SCHEME_HTTPS
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 @flatten_static_indexed(%struct.st_h2o_qpack_flatten_context_t* %23, i32 23)
  br label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @h2o_qpack_lookup_scheme, align 4
  %46 = load i32, i32* @H2O_TOKEN_SCHEME, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @flatten_known_header_with_static_lookup(%struct.st_h2o_qpack_flatten_context_t* %23, i32 %45, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %44, %42
  br label %52

52:                                               ; preds = %51, %37
  %53 = load i32, i32* @h2o_qpack_lookup_authority, align 4
  %54 = load i32, i32* @H2O_TOKEN_AUTHORITY, align 4
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @flatten_known_header_with_static_lookup(%struct.st_h2o_qpack_flatten_context_t* %23, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @h2o_qpack_lookup_path, align 4
  %58 = load i32, i32* @H2O_TOKEN_PATH, align 4
  %59 = load i32, i32* %20, align 4
  %60 = call i32 @flatten_known_header_with_static_lookup(%struct.st_h2o_qpack_flatten_context_t* %23, i32 %57, i32 %58, i32 %59)
  store i64 0, i64* %24, align 8
  br label %61

61:                                               ; preds = %70, %52
  %62 = load i64, i64* %24, align 8
  %63 = load i64, i64* %22, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32*, i32** %21, align 8
  %67 = load i64, i64* %24, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = call i32 @flatten_header(%struct.st_h2o_qpack_flatten_context_t* %23, i32* %68)
  br label %70

70:                                               ; preds = %65
  %71 = load i64, i64* %24, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %24, align 8
  br label %61

73:                                               ; preds = %61
  %74 = call i32 @commit_flatten(%struct.st_h2o_qpack_flatten_context_t* %23)
  ret void
}

declare dso_local i32 @prepare_flatten(%struct.st_h2o_qpack_flatten_context_t*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @flatten_known_header_with_static_lookup(%struct.st_h2o_qpack_flatten_context_t*, i32, i32, i32) #1

declare dso_local i32 @flatten_static_indexed(%struct.st_h2o_qpack_flatten_context_t*, i32) #1

declare dso_local i32 @flatten_header(%struct.st_h2o_qpack_flatten_context_t*, i32*) #1

declare dso_local i32 @commit_flatten(%struct.st_h2o_qpack_flatten_context_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
