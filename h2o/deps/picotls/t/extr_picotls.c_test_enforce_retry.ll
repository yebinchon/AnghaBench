; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_enforce_retry.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_enforce_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_20__ = type { i64, i32* }

@.str = private unnamed_addr constant [49 x i8] c"0123456789abcdef0123456789abcdef0123456789abcdef\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"1.2.3.4:1234\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ctx = common dso_local global i32 0, align 4
@PTLS_ERROR_IN_PROGRESS = common dso_local global i32 0, align 4
@PTLS_ERROR_STATELESS_RETRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_enforce_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_enforce_retry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = bitcast %struct.TYPE_19__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = call i32 @ptls_iovec_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 12)
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* %2, align 4
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = call i32 @ptls_buffer_init(%struct.TYPE_20__* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %25 = call i32 @ptls_buffer_init(%struct.TYPE_20__* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %26 = call i32 @ptls_buffer_init(%struct.TYPE_20__* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %27 = load i32, i32* @ctx, align 4
  %28 = call i32* @ptls_new(i32 %27, i32 0)
  store i32* %28, i32** %3, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @ptls_handshake(i32* %29, %struct.TYPE_20__* %6, i32* null, i64* null, %struct.TYPE_19__* null)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39)
  %41 = load i32, i32* @ctx, align 4
  %42 = call i32* @ptls_new(i32 %41, i32 1)
  store i32* %42, i32** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ptls_handshake(i32* %45, %struct.TYPE_20__* %7, i32* %47, i64* %9, %struct.TYPE_19__* %5)
  store i32 %48, i32* %10, align 4
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %2, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %1
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PTLS_ERROR_STATELESS_RETRY, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @ptls_free(i32* %58)
  %60 = load i32, i32* @ctx, align 4
  %61 = call i32* @ptls_new(i32 %60, i32 1)
  store i32* %61, i32** %4, align 8
  br label %68

62:                                               ; preds = %1
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66)
  br label %68

68:                                               ; preds = %62, %52
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %9, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ptls_handshake(i32* %71, %struct.TYPE_20__* %6, i32* %73, i64* %9, %struct.TYPE_19__* null)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ok(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @ok(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %9, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @ptls_handshake(i32* %89, %struct.TYPE_20__* %7, i32* %91, i64* %9, %struct.TYPE_19__* %5)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @ok(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %9, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ok(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %9, align 8
  %106 = load i32*, i32** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @ptls_handshake(i32* %106, %struct.TYPE_20__* %6, i32* %108, i64* %9, %struct.TYPE_19__* null)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @ok(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @ok(i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @ptls_send(i32* %121, %struct.TYPE_20__* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @ok(i32 %125)
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %9, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @ptls_receive(i32* %129, %struct.TYPE_20__* %8, i32* %131, i64* %9)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @ok(i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @ok(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i64 0, i64* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 11
  %147 = zext i1 %146 to i32
  %148 = call i32 @ok(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = call i64 @memcmp(i32* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 11)
  %152 = icmp eq i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @ok(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store i64 0, i64* %155, align 8
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @ptls_free(i32* %156)
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @ptls_free(i32* %158)
  %160 = call i32 @ptls_buffer_dispose(%struct.TYPE_20__* %6)
  %161 = call i32 @ptls_buffer_dispose(%struct.TYPE_20__* %7)
  %162 = call i32 @ptls_buffer_dispose(%struct.TYPE_20__* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ptls_iovec_init(i8*, i32) #2

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_20__*, i8*, i32) #2

declare dso_local i32* @ptls_new(i32, i32) #2

declare dso_local i32 @ptls_handshake(i32*, %struct.TYPE_20__*, i32*, i64*, %struct.TYPE_19__*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @ptls_free(i32*) #2

declare dso_local i32 @ptls_send(i32*, %struct.TYPE_20__*, i8*, i32) #2

declare dso_local i32 @ptls_receive(i32*, %struct.TYPE_20__*, i32*, i64*) #2

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_20__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
