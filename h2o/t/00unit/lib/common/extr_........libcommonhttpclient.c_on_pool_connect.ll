; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonhttpclient.c_on_pool_connect.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonhttpclient.c_on_pool_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_17__ = type { %struct.TYPE_14__*, i32*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"h2\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"http/1.1\00", align 1
@h2o_httpclient_error_unknown_alpn_protocol = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i8*, i8*, i32*)* @on_pool_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_pool_connect(%struct.TYPE_15__* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %9, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  %17 = call i32 @h2o_timer_unlink(i32* %16)
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @on_connect_error(%struct.TYPE_17__* %27, i8* %28)
  br label %93

30:                                               ; preds = %4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = call { i64, i32 } @h2o_socket_ssl_get_selected_protocol(%struct.TYPE_15__* %36)
  %38 = bitcast %struct.TYPE_16__* %12 to { i64, i32 }*
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 0
  %40 = extractvalue { i64, i32 } %37, 0
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %38, i32 0, i32 1
  %42 = extractvalue { i64, i32 } %37, 1
  store i32 %42, i32* %41, align 8
  %43 = bitcast %struct.TYPE_16__* %10 to i8*
  %44 = bitcast %struct.TYPE_16__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 16, i1 false)
  %45 = bitcast %struct.TYPE_16__* %11 to i8*
  %46 = bitcast %struct.TYPE_16__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %35, %30
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @h2o_httpclient__h1_on_connect(%struct.TYPE_17__* %51, %struct.TYPE_15__* %52, i32* %53)
  br label %93

55:                                               ; preds = %35
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %61 = call i64 @h2o_memis(i32 %57, i64 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %55
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = call i32 @h2o_socketpool_detach(i32 %68, %struct.TYPE_15__* %69)
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @h2o_httpclient__h2_on_connect(%struct.TYPE_17__* %71, %struct.TYPE_15__* %72, i32* %73)
  br label %92

75:                                               ; preds = %55
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @memcmp(i32 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @h2o_httpclient__h1_on_connect(%struct.TYPE_17__* %83, %struct.TYPE_15__* %84, i32* %85)
  br label %91

87:                                               ; preds = %75
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %89 = load i8*, i8** @h2o_httpclient_error_unknown_alpn_protocol, align 8
  %90 = call i32 @on_connect_error(%struct.TYPE_17__* %88, i8* %89)
  br label %91

91:                                               ; preds = %87, %82
  br label %92

92:                                               ; preds = %91, %63
  br label %93

93:                                               ; preds = %22, %92, %50
  ret void
}

declare dso_local i32 @h2o_timer_unlink(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @on_connect_error(%struct.TYPE_17__*, i8*) #1

declare dso_local { i64, i32 } @h2o_socket_ssl_get_selected_protocol(%struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @h2o_httpclient__h1_on_connect(%struct.TYPE_17__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @h2o_memis(i32, i64, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_socketpool_detach(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @h2o_httpclient__h2_on_connect(%struct.TYPE_17__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
