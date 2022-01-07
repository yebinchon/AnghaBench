; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_add_push_report_pkt.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_protocol.c_add_push_report_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_13__ = type { i32*, i8* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }

@GIT_ITEROVER = common dso_local global i32 0, align 4
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"report-status: protocol error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_18__*)* @add_push_report_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_push_report_pkt(%struct.TYPE_14__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %84 [
    i32 129, label %10
    i32 130, label %37
    i32 128, label %75
    i32 131, label %82
  ]

10:                                               ; preds = %2
  %11 = call %struct.TYPE_13__* @git__calloc(i32 1, i32 16)
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__* %12)
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = bitcast %struct.TYPE_18__* %16 to %struct.TYPE_16__*
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @git__strdup(i32 %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %10
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = call i32 @git_vector_insert(i32* %29, %struct.TYPE_13__* %30)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %10
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = call i32 @git_push_status_free(%struct.TYPE_13__* %34)
  store i32 -1, i32* %3, align 4
  br label %88

36:                                               ; preds = %27
  br label %87

37:                                               ; preds = %2
  %38 = call %struct.TYPE_13__* @git__calloc(i32 1, i32 16)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %6, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__* %39)
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = bitcast %struct.TYPE_18__* %41 to %struct.TYPE_17__*
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @git__strdup(i32 %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = bitcast %struct.TYPE_18__* %48 to %struct.TYPE_17__*
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @git__strdup(i32 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %37
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = call i32 @git_vector_insert(i32* %67, %struct.TYPE_13__* %68)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65, %60, %37
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %73 = call i32 @git_push_status_free(%struct.TYPE_13__* %72)
  store i32 -1, i32* %3, align 4
  br label %88

74:                                               ; preds = %65
  br label %87

75:                                               ; preds = %2
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = bitcast %struct.TYPE_18__* %76 to %struct.TYPE_15__*
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %87

82:                                               ; preds = %2
  %83 = load i32, i32* @GIT_ITEROVER, align 4
  store i32 %83, i32* %3, align 4
  br label %88

84:                                               ; preds = %2
  %85 = load i32, i32* @GIT_ERROR_NET, align 4
  %86 = call i32 @git_error_set(i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %88

87:                                               ; preds = %75, %74, %36
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %84, %82, %71, %33
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_13__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__*) #1

declare dso_local i8* @git__strdup(i32) #1

declare dso_local i32 @git_vector_insert(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @git_push_status_free(%struct.TYPE_13__*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
