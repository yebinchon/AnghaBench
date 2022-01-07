; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_buffer_encrypt_record.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_buffer_encrypt_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64* }
%struct.st_ptls_traffic_protection_t = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@PTLS_MAX_PLAINTEXT_RECORD_SIZE = common dso_local global i64 0, align 8
@PTLS_CONTENT_TYPE_APPDATA = common dso_local global i64 0, align 8
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, %struct.st_ptls_traffic_protection_t*)* @buffer_encrypt_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_encrypt_record(%struct.TYPE_9__* %0, i64 %1, %struct.st_ptls_traffic_protection_t* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.st_ptls_traffic_protection_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.st_ptls_traffic_protection_t* %2, %struct.st_ptls_traffic_protection_t** %7, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub i64 %16, %17
  %19 = sub i64 %18, 5
  store i64 %19, i64* %8, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @PTLS_MAX_PLAINTEXT_RECORD_SIZE, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %97

29:                                               ; preds = %3
  %30 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %7, align 8
  %31 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 1, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @ptls_buffer_reserve(%struct.TYPE_9__* %39, i64 %40)
  store i32 %41, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %141

45:                                               ; preds = %29
  %46 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %7, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = getelementptr inbounds i64, i64* %51, i64 5
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = getelementptr inbounds i64, i64* %57, i64 5
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @aead_encrypt(%struct.st_ptls_traffic_protection_t* %46, i64* %52, i64* %58, i64 %59, i64 %60)
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %63, %64
  %66 = icmp eq i64 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* @PTLS_CONTENT_TYPE_APPDATA, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %74, i64* %79, align 8
  %80 = load i64, i64* %13, align 8
  %81 = lshr i64 %80, 8
  %82 = and i64 %81, 255
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 3
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  store i64 %82, i64* %88, align 8
  %89 = load i64, i64* %13, align 8
  %90 = and i64 %89, 255
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, 4
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %90, i64* %96, align 8
  store i32 0, i32* %4, align 4
  br label %141

97:                                               ; preds = %3
  %98 = load i64, i64* %8, align 8
  %99 = call i64* @malloc(i64 %98)
  store i64* %99, i64** %9, align 8
  %100 = icmp eq i64* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %102, i32* %11, align 4
  br label %130

103:                                              ; preds = %97
  %104 = load i64*, i64** %9, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = getelementptr inbounds i64, i64* %109, i64 5
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @memcpy(i64* %104, i64* %110, i64 %111)
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, 5
  %120 = call i32 @ptls_clear_memory(i64* %117, i64 %119)
  %121 = load i64, i64* %6, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64*, i64** %9, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %7, align 8
  %129 = call i32 @buffer_push_encrypted_records(%struct.TYPE_9__* %124, i64 %125, i64* %126, i64 %127, %struct.st_ptls_traffic_protection_t* %128)
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %103, %101
  %131 = load i64*, i64** %9, align 8
  %132 = icmp ne i64* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i64*, i64** %9, align 8
  %135 = load i64, i64* %8, align 8
  %136 = call i32 @ptls_clear_memory(i64* %134, i64 %135)
  %137 = load i64*, i64** %9, align 8
  %138 = call i32 @free(i64* %137)
  br label %139

139:                                              ; preds = %133, %130
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %45, %43
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @ptls_buffer_reserve(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @aead_encrypt(%struct.st_ptls_traffic_protection_t*, i64*, i64*, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @ptls_clear_memory(i64*, i64) #1

declare dso_local i32 @buffer_push_encrypted_records(%struct.TYPE_9__*, i64, i64*, i64, %struct.st_ptls_traffic_protection_t*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
