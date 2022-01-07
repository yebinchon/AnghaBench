; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_bayes_set.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_bayes_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }

@verbosity = common dso_local global i32 0, align 4
@binlog_readed = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"bayes_set %d : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\01out \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\01uid \00", align 1
@teach_messages = common dso_local global i32 0, align 4
@words = common dso_local global i64* null, align 8
@global_bayes = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bayes_set(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @verbosity, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i64, i64* @binlog_readed, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24)
  br label %26

26:                                               ; preds = %21, %18, %3
  store i32 0, i32* %9, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strstr(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 5
  %34 = call i32 @sscanf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  br label %35

35:                                               ; preds = %31, %26
  store i32 0, i32* %11, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @strstr(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  %43 = call i32 @sscanf(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %11)
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.TYPE_5__* @conv_uid(i32 %45)
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %13, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49, %44
  %53 = load i32, i32* @teach_messages, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @teach_messages, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @get_words(i8* %55)
  br label %58

57:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %135

58:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %59 = load i32, i32* %7, align 4
  switch i32 %59, label %66 [
    i32 129, label %60
    i32 128, label %61
    i32 131, label %62
    i32 130, label %63
    i32 133, label %64
    i32 132, label %65
  ]

60:                                               ; preds = %58
  store i32 1, i32* %14, align 4
  br label %66

61:                                               ; preds = %58
  store i32 1, i32* %15, align 4
  br label %66

62:                                               ; preds = %58
  store i32 -1, i32* %14, align 4
  br label %66

63:                                               ; preds = %58
  store i32 -1, i32* %15, align 4
  br label %66

64:                                               ; preds = %58
  store i32 1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  br label %66

65:                                               ; preds = %58
  store i32 -1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %66

66:                                               ; preds = %58, %65, %64, %63, %62, %61, %60
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %86, %69
  %71 = load i64*, i64** @words, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load i64*, i64** @words, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @bayes_add_word(%struct.TYPE_6__* @global_bayes, i64 %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %70

89:                                               ; preds = %70
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_bayes, i32 0, i32 0), align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_bayes, i32 0, i32 0), align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_bayes, i32 0, i32 1), align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @global_bayes, i32 0, i32 1), align 4
  br label %96

96:                                               ; preds = %89, %66
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %98 = icmp ne %struct.TYPE_5__* %97, null
  br i1 %98, label %99, label %134

99:                                               ; preds = %96
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %118, %99
  %101 = load i64*, i64** @words, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64*, i64** @words, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @bayes_add_word(%struct.TYPE_6__* %109, i64 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %100

121:                                              ; preds = %100
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %122
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, %128
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %121, %96
  store i32 1, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %57
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_5__* @conv_uid(i32) #1

declare dso_local i32 @get_words(i8*) #1

declare dso_local i32 @bayes_add_word(%struct.TYPE_6__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
