; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreproxy.c_do_send.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreproxy.c_do_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp_generator_t = type { %struct.TYPE_12__*, i64, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_14__** }
%struct.TYPE_11__ = type { i64 }

@H2O_SEND_STATE_FINAL = common dso_local global i32 0, align 4
@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i32 0, align 4
@H2O_SEND_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rp_generator_t*)* @do_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_send(%struct.rp_generator_t* %0) #0 {
  %2 = alloca %struct.rp_generator_t*, align 8
  %3 = alloca [1 x %struct.TYPE_11__], align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 8
  store %struct.rp_generator_t* %0, %struct.rp_generator_t** %2, align 8
  %7 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %3, i64 0, i64 0
  %8 = load %struct.rp_generator_t*, %struct.rp_generator_t** %2, align 8
  %9 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %8, i32 0, i32 3
  %10 = load %struct.rp_generator_t*, %struct.rp_generator_t** %2, align 8
  %11 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %10, i32 0, i32 2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.rp_generator_t*, %struct.rp_generator_t** %2, align 8
  %16 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %15, i32 0, i32 2
  br label %23

17:                                               ; preds = %1
  %18 = load %struct.rp_generator_t*, %struct.rp_generator_t** %2, align 8
  %19 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %18, i32 0, i32 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  br label %23

23:                                               ; preds = %17, %14
  %24 = phi %struct.TYPE_14__** [ %16, %14 ], [ %22, %17 ]
  %25 = load %struct.rp_generator_t*, %struct.rp_generator_t** %2, align 8
  %26 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @h2o_doublebuffer_prepare(%struct.TYPE_13__* %9, %struct.TYPE_14__** %24, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = bitcast %struct.TYPE_11__* %7 to i8*
  %33 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 8, i1 false)
  %34 = load %struct.rp_generator_t*, %struct.rp_generator_t** %2, align 8
  %35 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %34, i32 0, i32 2
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %23
  %39 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %3, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rp_generator_t*, %struct.rp_generator_t** %2, align 8
  %43 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %41, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %38
  %50 = load %struct.rp_generator_t*, %struct.rp_generator_t** %2, align 8
  %51 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %50, i32 0, i32 2
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %3, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %4, align 8
  %64 = load i32, i32* @H2O_SEND_STATE_FINAL, align 4
  store i32 %64, i32* %5, align 4
  br label %73

65:                                               ; preds = %49, %38, %23
  %66 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %3, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %88

71:                                               ; preds = %65
  store i64 1, i64* %4, align 8
  %72 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %56
  %74 = load %struct.rp_generator_t*, %struct.rp_generator_t** %2, align 8
  %75 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @H2O_SEND_STATE_ERROR, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %73
  %81 = load %struct.rp_generator_t*, %struct.rp_generator_t** %2, align 8
  %82 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %3, i64 0, i64 0
  %85 = load i64, i64* %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @h2o_send(%struct.TYPE_12__* %83, %struct.TYPE_11__* %84, i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %80, %70
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
