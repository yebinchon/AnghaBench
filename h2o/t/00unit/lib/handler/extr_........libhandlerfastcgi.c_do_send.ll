; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_do_send.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_do_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_fcgi_generator_t = type { i64, %struct.TYPE_12__*, %struct.TYPE_10__, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@SIZE_MAX = common dso_local global i64 0, align 8
@H2O_SEND_STATE_FINAL = common dso_local global i32 0, align 4
@H2O_SEND_STATE_ERROR = common dso_local global i32 0, align 4
@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_fcgi_generator_t*)* @do_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_send(%struct.st_fcgi_generator_t* %0) #0 {
  %2 = alloca %struct.st_fcgi_generator_t*, align 8
  %3 = alloca [1 x %struct.TYPE_11__], align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 8
  store %struct.st_fcgi_generator_t* %0, %struct.st_fcgi_generator_t** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %3, i64 0, i64 0
  %8 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %9 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %12 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %15 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @h2o_doublebuffer_prepare(%struct.TYPE_13__* %10, %struct.TYPE_14__** %13, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = bitcast %struct.TYPE_11__* %7 to i8*
  %22 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %3, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %4, align 8
  %30 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %31 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %70

34:                                               ; preds = %1
  %35 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %3, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %39 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %37, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %34
  %47 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %48 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %56 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %61 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SIZE_MAX, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59, %54
  %66 = load i32, i32* @H2O_SEND_STATE_FINAL, align 4
  store i32 %66, i32* %5, align 4
  br label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @H2O_SEND_STATE_ERROR, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %65
  br label %76

70:                                               ; preds = %46, %34, %1
  %71 = load i64, i64* %4, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %84

74:                                               ; preds = %70
  %75 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %69
  %77 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %2, align 8
  %78 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %3, i64 0, i64 0
  %81 = load i64, i64* %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @h2o_send(%struct.TYPE_12__* %79, %struct.TYPE_11__* %80, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %73
  ret void
}

declare dso_local i64 @h2o_doublebuffer_prepare(%struct.TYPE_13__*, %struct.TYPE_14__**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @h2o_send(%struct.TYPE_12__*, %struct.TYPE_11__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
