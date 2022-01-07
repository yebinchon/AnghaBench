; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils-lite.c_get_pid_info.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils-lite.c_get_pid_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@get_pid_info.mem = internal global [10000 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"/proc/%lu/stat\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unexpected end of proc file\00", align 1
@TMEM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_pid_info(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @snprintf(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @get_pid_info.mem, i64 0, i64 0), i32 10000, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @O_RDONLY, align 4
  %13 = call i32 @open(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @get_pid_info.mem, i64 0, i64 0), i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %105

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @read(i32 %18, i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @get_pid_info.mem, i64 0, i64 0), i32 9999)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @close(i32 %24)
  store i32 0, i32* %3, align 4
  br label %105

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [10000 x i8], [10000 x i8]* @get_pid_info.mem, i64 0, i64 %28
  store i8 0, i8* %29, align 1
  store i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @get_pid_info.mem, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %101, %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 22
  br i1 %32, label %33, label %102

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 12
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 13
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = call i32 @sscanf(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 14
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = call i32 @sscanf(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %55)
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 15
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = call i32 @sscanf(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %63)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 21
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @sscanf(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %71)
  br label %73

73:                                               ; preds = %68, %65
  br label %74

74:                                               ; preds = %86, %73
  %75 = load i8*, i8** %8, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 32
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ false, %74 ], [ %83, %79 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  br label %74

89:                                               ; preds = %84
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 32
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %101

99:                                               ; preds = %89
  %100 = call i32 @dl_assert(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %102

101:                                              ; preds = %94
  br label %30

102:                                              ; preds = %99, %30
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @close(i32 %103)
  store i32 1, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %23, %16
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @dl_assert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
