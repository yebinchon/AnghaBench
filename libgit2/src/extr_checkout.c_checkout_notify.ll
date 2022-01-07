; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_notify.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (i32, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32)*, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i8*, i32, i32, i32 }

@GIT_DIFF_FLAG_VALID_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"git_checkout notification\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, %struct.TYPE_16__*, %struct.TYPE_14__*)* @checkout_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_notify(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_16__* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %13, align 8
  store i8* null, i8** %14, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32 (i32, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32)*, i32 (i32, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32)** %18, align 8
  %20 = icmp ne i32 (i32, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %22, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %97

30:                                               ; preds = %21
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = call i32 @memset(%struct.TYPE_15__* %10, i32 0, i32 24)
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = call i32 @git_oid_cpy(i32* %35, i32* %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* @GIT_DIFF_FLAG_VALID_ID, align 4
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %13, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %14, align 8
  br label %56

56:                                               ; preds = %33, %30
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = icmp ne %struct.TYPE_16__* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %56
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %64 [
    i32 130, label %63
    i32 132, label %63
    i32 131, label %63
    i32 135, label %69
    i32 133, label %69
    i32 128, label %69
    i32 129, label %69
    i32 134, label %72
  ]

63:                                               ; preds = %59, %59, %59
  br label %64

64:                                               ; preds = %59, %63
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %11, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %12, align 8
  br label %75

69:                                               ; preds = %59, %59, %59, %59
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %12, align 8
  br label %75

72:                                               ; preds = %59
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %11, align 8
  br label %75

75:                                               ; preds = %72, %69, %64
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %14, align 8
  br label %80

80:                                               ; preds = %75, %56
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32 (i32, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32)*, i32 (i32, i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32)** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i8*, i8** %14, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %84(i32 %85, i8* %86, %struct.TYPE_15__* %87, %struct.TYPE_15__* %88, %struct.TYPE_15__* %89, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @git_error_set_after_callback_function(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %80, %29
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

declare dso_local i32 @git_error_set_after_callback_function(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
