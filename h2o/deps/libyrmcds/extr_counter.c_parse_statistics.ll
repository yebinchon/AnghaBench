; ModuleID = '/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_parse_statistics.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/libyrmcds/extr_counter.c_parse_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i32 }

@YRMCDS_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@YRMCDS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @parse_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_statistics(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %6, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %73, %2
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load i8*, i8** %8, align 8
  %35 = icmp ugt i8* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %37, i64* %3, align 8
  br label %83

38:                                               ; preds = %31
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @ntoh16(i8* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = call i32 @ntoh16(i8* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8*, i8** %8, align 8
  %53 = icmp ugt i8* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = load i64, i64* @YRMCDS_PROTOCOL_ERROR, align 8
  store i64 %55, i64* %3, align 8
  br label %83

56:                                               ; preds = %38
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = call i64 @append_stat(%struct.TYPE_7__* %57, i32 %58, i32 %59, i8* %61, i8* %66)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @YRMCDS_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %56
  %72 = load i64, i64* %11, align 8
  store i64 %72, i64* %3, align 8
  br label %83

73:                                               ; preds = %56
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 4, %74
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i8*, i8** %7, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %7, align 8
  br label %27

81:                                               ; preds = %27
  %82 = load i64, i64* @YRMCDS_OK, align 8
  store i64 %82, i64* %3, align 8
  br label %83

83:                                               ; preds = %81, %71, %54, %36
  %84 = load i64, i64* %3, align 8
  ret i64 %84
}

declare dso_local i32 @ntoh16(i8*) #1

declare dso_local i64 @append_stat(%struct.TYPE_7__*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
