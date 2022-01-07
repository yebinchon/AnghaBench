; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_restore.c_write_restore.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_restore.c_write_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i32, i8*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i32* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"setvbuf file '%s': %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @write_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_restore(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_24__, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %4, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %5, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %6, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %7, align 8
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

29:                                               ; preds = %1
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %8, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @hc_fopen(%struct.TYPE_24__* %10, i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %29
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 @event_log_error(%struct.TYPE_23__* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %56, i32 %58)
  store i32 -1, i32* %2, align 4
  br label %105

60:                                               ; preds = %29
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @_IONBF, align 4
  %64 = call i64 @setvbuf(i32 %62, i32* null, i32 %63, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 @strerror(i32 %69)
  %71 = call i32 @event_log_error(%struct.TYPE_23__* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %70)
  %72 = call i32 @hc_fclose(%struct.TYPE_24__* %10)
  store i32 -1, i32* %2, align 4
  br label %105

73:                                               ; preds = %60
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %75 = call i32 @hc_fwrite(%struct.TYPE_20__* %74, i32 40, i32 1, %struct.TYPE_24__* %10)
  store i64 0, i64* %11, align 8
  br label %76

76:                                               ; preds = %91, %73
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @hc_fprintf(%struct.TYPE_24__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = call i32 @hc_fputc(i8 signext 10, %struct.TYPE_24__* %10)
  br label %91

91:                                               ; preds = %82
  %92 = load i64, i64* %11, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %11, align 8
  br label %76

94:                                               ; preds = %76
  %95 = call i32 @hc_fflush(%struct.TYPE_24__* %10)
  %96 = call i32 @hc_fileno(%struct.TYPE_24__* %10)
  %97 = call i32 @fsync(i32 %96)
  %98 = call i32 @hc_fclose(%struct.TYPE_24__* %10)
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %94, %66, %54, %28
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @hc_fopen(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @event_log_error(%struct.TYPE_23__*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @hc_fclose(%struct.TYPE_24__*) #1

declare dso_local i32 @hc_fwrite(%struct.TYPE_20__*, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @hc_fprintf(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @hc_fputc(i8 signext, %struct.TYPE_24__*) #1

declare dso_local i32 @hc_fflush(%struct.TYPE_24__*) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @hc_fileno(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
