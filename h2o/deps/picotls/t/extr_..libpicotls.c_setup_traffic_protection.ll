; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_setup_traffic_protection.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_setup_traffic_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_16__*, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_16__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i64, i64*)* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t }
%struct.st_ptls_traffic_protection_t = type { i64, %struct.TYPE_15__*, i64*, i64 }
%struct.TYPE_15__ = type { i64* }

@setup_traffic_protection.log_labels = internal global [2 x [4 x i8*]] [[4 x i8*] [i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0)], [4 x i8*] [i8* null, i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0)]], align 16
@.str = private unnamed_addr constant [28 x i8] c"CLIENT_EARLY_TRAFFIC_SECRET\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"CLIENT_HANDSHAKE_TRAFFIC_SECRET\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"CLIENT_TRAFFIC_SECRET_0\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"SERVER_HANDSHAKE_TRAFFIC_SECRET\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"SERVER_TRAFFIC_SECRET_0\00", align 1
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"[%s] %02x%02x,%02x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32, i8*, i64, i32)* @setup_traffic_protection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_traffic_protection(%struct.TYPE_22__* %0, i32 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.st_ptls_traffic_protection_t*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  br label %24

20:                                               ; preds = %5
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi %struct.st_ptls_traffic_protection_t* [ %19, %16 ], [ %23, %20 ]
  store %struct.st_ptls_traffic_protection_t* %25, %struct.st_ptls_traffic_protection_t** %12, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %33 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @derive_secret(%struct.TYPE_16__* %31, i64* %34, i8* %35)
  store i32 %36, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %176

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %44 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = icmp ne %struct.TYPE_23__* %49, null
  br i1 %50, label %51, label %75

51:                                               ; preds = %41
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %176

55:                                               ; preds = %51
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i64, i64*)*, i32 (%struct.TYPE_23__*, %struct.TYPE_22__*, i32, i64, i64*)** %61, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %66, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %72 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = call i32 %62(%struct.TYPE_23__* %67, %struct.TYPE_22__* %68, i32 %69, i64 %70, i64* %73)
  store i32 %74, i32* %6, align 4
  br label %176

75:                                               ; preds = %41
  %76 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %77 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %76, i32 0, i32 1
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = icmp ne %struct.TYPE_15__* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %82 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %81, i32 0, i32 1
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = call i32 @ptls_aead_free(%struct.TYPE_15__* %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %98 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %97, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call %struct.TYPE_15__* @ptls_aead_new(i32 %90, i32 %95, i32 %96, i64* %99, i32 %104)
  %106 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %107 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %106, i32 0, i32 1
  store %struct.TYPE_15__* %105, %struct.TYPE_15__** %107, align 8
  %108 = icmp eq %struct.TYPE_15__* %105, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %85
  %110 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %110, i32* %6, align 4
  br label %176

111:                                              ; preds = %85
  %112 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %113 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %116 = call i64 @ptls_is_server(%struct.TYPE_22__* %115)
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = icmp eq i64 %116, %118
  %120 = zext i1 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x [4 x i8*]], [2 x [4 x i8*]]* @setup_traffic_protection.log_labels, i64 0, i64 %121
  %123 = load i64, i64* %10, align 8
  %124 = getelementptr inbounds [4 x i8*], [4 x i8*]* %122, i64 0, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %127 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ptls_iovec_init(i64* %128, i32 %138)
  %140 = call i32 @log_secret(%struct.TYPE_22__* %114, i8* %125, i32 %139)
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %142 = call i64 @ptls_is_server(%struct.TYPE_22__* %141)
  %143 = getelementptr inbounds [2 x [4 x i8*]], [2 x [4 x i8*]]* @setup_traffic_protection.log_labels, i64 0, i64 %142
  %144 = load i64, i64* %10, align 8
  %145 = getelementptr inbounds [4 x i8*], [4 x i8*]* %143, i64 0, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %148 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %147, i32 0, i32 2
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %154 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %153, i32 0, i32 2
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 1
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %160 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %159, i32 0, i32 1
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = load %struct.st_ptls_traffic_protection_t*, %struct.st_ptls_traffic_protection_t** %12, align 8
  %168 = getelementptr inbounds %struct.st_ptls_traffic_protection_t, %struct.st_ptls_traffic_protection_t* %167, i32 0, i32 1
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 1
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @PTLS_DEBUGF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %146, i32 %152, i32 %158, i32 %166, i32 %174)
  store i32 0, i32* %6, align 4
  br label %176

176:                                              ; preds = %111, %109, %55, %54, %38
  %177 = load i32, i32* %6, align 4
  ret i32 %177
}

declare dso_local i32 @derive_secret(%struct.TYPE_16__*, i64*, i8*) #1

declare dso_local i32 @ptls_aead_free(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ptls_aead_new(i32, i32, i32, i64*, i32) #1

declare dso_local i32 @log_secret(%struct.TYPE_22__*, i8*, i32) #1

declare dso_local i64 @ptls_is_server(%struct.TYPE_22__*) #1

declare dso_local i32 @ptls_iovec_init(i64*, i32) #1

declare dso_local i32 @PTLS_DEBUGF(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
