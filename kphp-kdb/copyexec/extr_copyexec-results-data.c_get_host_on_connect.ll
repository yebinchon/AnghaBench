; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_host_on_connect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_host_on_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i64 }
%struct.connection = type { i64, i32, i32 }

@COPYEXEC_ERR_INVAL = common dso_local global i32 0, align 4
@CONN_FD_HOST = common dso_local global %struct.TYPE_5__** null, align 8
@COPYEXEC_RESULT_NEW_HOST = common dso_local global i32 0, align 4
@COPYEXEC_ERR_VOLUME_ID_MISMATCHED = common dso_local global i32 0, align 4
@COPYEXEC_ERR_HOSTNAME_MISMATCHED = common dso_local global i32 0, align 4
@COPYEXEC_RESULT_IP_CHANGED = common dso_local global i32 0, align 4
@COPYEXEC_RESULT_PID_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_host_on_connect(%struct.connection* %0, i64 %1, i64 %2, i8* %3, i32 %4, %struct.TYPE_5__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.connection*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  store %struct.connection* %0, %struct.connection** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_5__** %5, %struct.TYPE_5__*** %13, align 8
  %16 = load %struct.connection*, %struct.connection** %8, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @COPYEXEC_ERR_INVAL, align 4
  store i32 %21, i32* %7, align 4
  br label %119

22:                                               ; preds = %6
  %23 = load %struct.connection*, %struct.connection** %8, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %14, align 4
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %26, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call %struct.TYPE_5__* @get_host_by_random_tag(i64 %27, i32 1)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %15, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %22
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 @zstrdup(i8* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.connection*, %struct.connection** %8, align 8
  %50 = getelementptr inbounds %struct.connection, %struct.connection* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @CONN_FD_HOST, align 8
  %56 = load %struct.connection*, %struct.connection** %8, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %58
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %61, align 8
  %62 = load i32, i32* @COPYEXEC_RESULT_NEW_HOST, align 4
  store i32 %62, i32* %7, align 4
  br label %119

63:                                               ; preds = %22
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @COPYEXEC_ERR_VOLUME_ID_MISMATCHED, align 4
  store i32 %70, i32* %7, align 4
  br label %119

71:                                               ; preds = %63
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i64 @strcmp(i32 %74, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @COPYEXEC_ERR_HOSTNAME_MISMATCHED, align 4
  store i32 %79, i32* %7, align 4
  br label %119

80:                                               ; preds = %71
  %81 = load %struct.connection*, %struct.connection** %8, align 8
  %82 = getelementptr inbounds %struct.connection, %struct.connection* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @CONN_FD_HOST, align 8
  %88 = load %struct.connection*, %struct.connection** %8, align 8
  %89 = getelementptr inbounds %struct.connection, %struct.connection* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %87, i64 %90
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %91, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %93, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %80
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @COPYEXEC_RESULT_IP_CHANGED, align 4
  store i32 %106, i32* %7, align 4
  br label %119

107:                                              ; preds = %80
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @COPYEXEC_RESULT_PID_CHANGED, align 4
  store i32 %117, i32* %7, align 4
  br label %119

118:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %113, %99, %78, %69, %33, %20
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_5__* @get_host_by_random_tag(i64, i32) #1

declare dso_local i32 @zstrdup(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
