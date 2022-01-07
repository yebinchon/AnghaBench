; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_encode_chunked.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_encode_chunked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%zx\0D\0A\00", align 1
@H2O_SEND_STATE_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"\0D\0A0\0D\0A\0D\0A\00", align 1
@H2O_SEND_STATE_FINAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"0\0D\0A\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0D\0A1\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_5__*, i64, i64, i32, i8*)* @encode_chunked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_chunked(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i64 %2, i64 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = call { i8*, i32 } @h2o_iovec_init(i32* null, i32 0)
  %17 = bitcast %struct.TYPE_5__* %13 to { i8*, i32 }*
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %17, i32 0, i32 0
  %19 = extractvalue { i8*, i32 } %16, 0
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %17, i32 0, i32 1
  %21 = extractvalue { i8*, i32 } %16, 1
  store i32 %21, i32* %20, align 8
  %22 = bitcast %struct.TYPE_5__* %15 to i8*
  %23 = bitcast %struct.TYPE_5__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = call { i8*, i32 } @h2o_iovec_init(i32* null, i32 0)
  %26 = bitcast %struct.TYPE_5__* %14 to { i8*, i32 }*
  %27 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %26, i32 0, i32 0
  %28 = extractvalue { i8*, i32 } %25, 0
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %26, i32 0, i32 1
  %30 = extractvalue { i8*, i32 } %25, 1
  store i32 %30, i32* %29, align 8
  %31 = bitcast %struct.TYPE_5__* %24 to i8*
  %32 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %6
  %36 = load i8*, i8** %12, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @H2O_SEND_STATE_ERROR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %35
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %49, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @H2O_SEND_STATE_FINAL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 5, i32 7
  br label %59

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %53
  %60 = phi i32 [ %57, %53 ], [ 2, %58 ]
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %35
  br label %78

64:                                               ; preds = %6
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @H2O_SEND_STATE_FINAL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 3, i32 5
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %68, %64
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @H2O_SEND_STATE_ERROR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 5, i32* %86, align 8
  br label %87

87:                                               ; preds = %82, %78
  ret void
}

declare dso_local { i8*, i32 } @h2o_iovec_init(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
