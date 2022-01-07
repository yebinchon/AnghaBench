; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_write_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_write_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.stat = type { i32 }

@GIT_CHECKOUT_USE_OURS = common dso_local global i32 0, align 4
@GIT_CHECKOUT_USE_THEIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ours\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"theirs\00", align 1
@GIT_CHECKOUT_UPDATE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_15__*)* @checkout_write_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_write_entry(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = icmp eq %struct.TYPE_15__* %13, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = icmp eq %struct.TYPE_15__* %19, %22
  br label %24

24:                                               ; preds = %18, %3
  %25 = phi i1 [ true, %3 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @checkout_target_fullpath(%struct.TYPE_16__** %10, %struct.TYPE_17__* %28, i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %141

35:                                               ; preds = %24
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %103

45:                                               ; preds = %40, %35
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GIT_CHECKOUT_USE_OURS, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %45
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GIT_CHECKOUT_USE_THEIRS, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %52
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = icmp eq %struct.TYPE_15__* %60, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  br label %77

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %71
  %78 = phi i8* [ %75, %71 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %76 ]
  store i8* %78, i8** %9, align 8
  br label %93

79:                                               ; preds = %59
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  br label %91

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %85
  %92 = phi i8* [ %89, %85 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %90 ]
  store i8* %92, i8** %9, align 8
  br label %93

93:                                               ; preds = %91, %77
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i64 @checkout_path_suffixed(%struct.TYPE_16__* %94, i8* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 -1, i32* %4, align 4
  br label %141

99:                                               ; preds = %93
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %8, align 8
  br label %103

103:                                              ; preds = %99, %52, %45, %40
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @GIT_CHECKOUT_UPDATE_ONLY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %103
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @checkout_safe_for_update_only(%struct.TYPE_17__* %111, i32 %114, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = icmp sle i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %4, align 4
  br label %141

122:                                              ; preds = %110, %103
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @S_ISGITLINK(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %8, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @checkout_write_content(%struct.TYPE_17__* %129, i32* %131, i32 %134, i8* %135, i32 %138, %struct.stat* %11)
  store i32 %139, i32* %4, align 4
  br label %141

140:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %128, %120, %98, %34
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @checkout_target_fullpath(%struct.TYPE_16__**, %struct.TYPE_17__*, i8*) #1

declare dso_local i64 @checkout_path_suffixed(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @checkout_safe_for_update_only(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @S_ISGITLINK(i32) #1

declare dso_local i32 @checkout_write_content(%struct.TYPE_17__*, i32*, i32, i8*, i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
