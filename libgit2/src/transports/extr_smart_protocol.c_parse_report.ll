; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_parse_report.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_parse_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_16__ = type { i32 (i32, i32, i32)*, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@GIT_EBUFS = common dso_local global i32 0, align 4
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"early EOF\00", align 1
@GIT_EEOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"report-status: Error reported: %s\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"oversized progress message\00", align 1
@GIT_ERROR = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Incomplete pack data pkt-line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*)* @parse_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_report(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 2
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %7, align 8
  %14 = bitcast %struct.TYPE_21__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.TYPE_21__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  br label %15

15:                                               ; preds = %131, %55, %2
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @git_pkt_parse_line(%struct.TYPE_20__** %5, i8** %6, i32 %23, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %30

28:                                               ; preds = %15
  %29 = load i32, i32* @GIT_EBUFS, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %20
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @GIT_EBUFS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %8, align 4
  br label %132

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @GIT_EBUFS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = call i32 @gitno_recv(%struct.TYPE_17__* %43)
  store i32 %44, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %8, align 4
  br label %132

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @GIT_ERROR_NET, align 4
  %53 = call i32 (i32, i8*, ...) @git_error_set(i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @GIT_EEOF, align 4
  store i32 %54, i32* %8, align 4
  br label %132

55:                                               ; preds = %48
  br label %15

56:                                               ; preds = %38
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @gitno_consume(%struct.TYPE_17__* %57, i8* %58)
  store i32 0, i32* %8, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %108 [
    i32 130, label %63
    i32 129, label %68
    i32 128, label %75
  ]

63:                                               ; preds = %56
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = bitcast %struct.TYPE_20__* %65 to i32*
  %67 = call i32 @add_push_report_sideband_pkt(i32* %64, i32* %66, %struct.TYPE_21__* %10)
  store i32 %67, i32* %8, align 4
  br label %112

68:                                               ; preds = %56
  %69 = load i32, i32* @GIT_ERROR_NET, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = bitcast %struct.TYPE_20__* %70 to %struct.TYPE_19__*
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @git_error_set(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  store i32 -1, i32* %8, align 4
  br label %112

75:                                               ; preds = %56
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %77, align 8
  %79 = icmp ne i32 (i32, i32, i32)* %78, null
  br i1 %79, label %80, label %107

80:                                               ; preds = %75
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = bitcast %struct.TYPE_20__* %81 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %82, %struct.TYPE_18__** %11, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @INT_MAX, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load i32, i32* @GIT_ERROR_NET, align 4
  %90 = call i32 (i32, i8*, ...) @git_error_set(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @GIT_ERROR, align 4
  store i32 %91, i32* %8, align 4
  br label %132

92:                                               ; preds = %80
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %94, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 %95(i32 %98, i32 %102, i32 %105)
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %92, %75
  br label %112

108:                                              ; preds = %56
  %109 = load i32*, i32** %4, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %111 = call i32 @add_push_report_pkt(i32* %109, %struct.TYPE_20__* %110)
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %108, %107, %68, %63
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = call i32 @git_pkt_free(%struct.TYPE_20__* %113)
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @GIT_ITEROVER, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %112
  store i32 0, i32* %8, align 4
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @GIT_ERROR_NET, align 4
  %124 = call i32 (i32, i8*, ...) @git_error_set(i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @GIT_ERROR, align 4
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %122, %118
  br label %132

127:                                              ; preds = %112
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %132

131:                                              ; preds = %127
  br label %15

132:                                              ; preds = %130, %126, %88, %51, %46, %37
  %133 = call i32 @git_buf_dispose(%struct.TYPE_21__* %10)
  %134 = load i32, i32* %8, align 4
  ret i32 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_pkt_parse_line(%struct.TYPE_20__**, i8**, i32, i32) #2

declare dso_local i32 @gitno_recv(%struct.TYPE_17__*) #2

declare dso_local i32 @git_error_set(i32, i8*, ...) #2

declare dso_local i32 @gitno_consume(%struct.TYPE_17__*, i8*) #2

declare dso_local i32 @add_push_report_sideband_pkt(i32*, i32*, %struct.TYPE_21__*) #2

declare dso_local i32 @add_push_report_pkt(i32*, %struct.TYPE_20__*) #2

declare dso_local i32 @git_pkt_free(%struct.TYPE_20__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
