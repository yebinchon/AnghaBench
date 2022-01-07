; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_handle_hello_retry_request.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_handle_hello_retry_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_19__**, i32* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_21__**, i32, i32*, i32)* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.st_ptls_server_hello_t = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@UINT16_MAX = common dso_local global i64 0, align 8
@PTLS_ALERT_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32*, %struct.st_ptls_server_hello_t*, i64, i32*)* @handle_hello_retry_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_hello_retry_request(%struct.TYPE_18__* %0, i32* %1, %struct.st_ptls_server_hello_t* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_20__, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.st_ptls_server_hello_t*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__**, align 8
  %13 = bitcast %struct.TYPE_20__* %6 to i64*
  store i64 %3, i64* %13, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.st_ptls_server_hello_t* %2, %struct.st_ptls_server_hello_t** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = icmp ne %struct.TYPE_21__* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %5
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_21__**, i32, i32*, i32)*, i32 (%struct.TYPE_21__**, i32, i32*, i32)** %24, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %30 = call i32 %25(%struct.TYPE_21__** %28, i32 1, i32* null, i32 %29)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %33, align 8
  br label %34

34:                                               ; preds = %19, %5
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %34
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %40
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ptls_aead_free(i32* %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %47, %40
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %34
  %71 = load %struct.st_ptls_server_hello_t*, %struct.st_ptls_server_hello_t** %9, align 8
  %72 = getelementptr inbounds %struct.st_ptls_server_hello_t, %struct.st_ptls_server_hello_t* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @UINT16_MAX, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %70
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %81, align 8
  store %struct.TYPE_19__** %82, %struct.TYPE_19__*** %12, align 8
  br label %83

83:                                               ; preds = %99, %77
  %84 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = icmp ne %struct.TYPE_19__* %85, null
  br i1 %86, label %87, label %102

87:                                               ; preds = %83
  %88 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.st_ptls_server_hello_t*, %struct.st_ptls_server_hello_t** %9, align 8
  %93 = getelementptr inbounds %struct.st_ptls_server_hello_t, %struct.st_ptls_server_hello_t* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %91, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %102

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %100, i32 1
  store %struct.TYPE_19__** %101, %struct.TYPE_19__*** %12, align 8
  br label %83

102:                                              ; preds = %97, %83
  %103 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = icmp eq %struct.TYPE_19__* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @PTLS_ALERT_ILLEGAL_PARAMETER, align 4
  store i32 %107, i32* %11, align 4
  br label %142

108:                                              ; preds = %102
  %109 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %109, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 1
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %112, align 8
  br label %122

113:                                              ; preds = %70
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = icmp ne %struct.TYPE_19__* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @PTLS_ALERT_ILLEGAL_PARAMETER, align 4
  store i32 %120, i32* %11, align 4
  br label %142

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %121, %108
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @key_schedule_transform_post_ch1hash(i32 %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @ptls__key_schedule_update_hash(i32 %129, i32 %131, i32 %133)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load %struct.st_ptls_server_hello_t*, %struct.st_ptls_server_hello_t** %9, align 8
  %139 = getelementptr inbounds %struct.st_ptls_server_hello_t, %struct.st_ptls_server_hello_t* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = call i32 @send_client_hello(%struct.TYPE_18__* %135, i32* %136, i32* %137, i32* %140)
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %122, %119, %106
  %143 = load i32, i32* %11, align 4
  ret i32 %143
}

declare dso_local i32 @ptls_iovec_init(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ptls_aead_free(i32*) #1

declare dso_local i32 @key_schedule_transform_post_ch1hash(i32) #1

declare dso_local i32 @ptls__key_schedule_update_hash(i32, i32, i32) #1

declare dso_local i32 @send_client_hello(%struct.TYPE_18__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
