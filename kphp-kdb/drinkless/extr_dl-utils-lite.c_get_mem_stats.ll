; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils-lite.c_get_mem_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-utils-lite.c_get_mem_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@get_mem_stats.mem = internal global [10000 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"/proc/%lu/status\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"VmPeak\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"VmSize\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"VmHWM\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"VmRSS\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@TMEM_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mem_stats(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @snprintf(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @get_mem_stats.mem, i64 0, i64 0), i32 10000, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @get_mem_stats.mem, i64 0, i64 0), i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %120

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @read(i32 %19, i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @get_mem_stats.mem, i64 0, i64 0), i32 9999)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @close(i32 %25)
  store i32 0, i32* %3, align 4
  br label %120

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10000 x i8], [10000 x i8]* @get_mem_stats.mem, i64 0, i64 %29
  store i8 0, i8* %30, align 1
  store i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @get_mem_stats.mem, i64 0, i64 0), i8** %8, align 8
  br label %31

31:                                               ; preds = %114, %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %117

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  store i8* %36, i8** %9, align 8
  br label %37

37:                                               ; preds = %49, %35
  %38 = load i8*, i8** %8, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 10
  br label %47

47:                                               ; preds = %42, %37
  %48 = phi i1 [ false, %37 ], [ %46, %42 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %37

52:                                               ; preds = %47
  store i64* null, i64** %10, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i64 @strncmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i64* %58, i64** %10, align 8
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i8*, i8** %9, align 8
  %61 = call i64 @strncmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i64* %65, i64** %10, align 8
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @strncmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i64* %72, i64** %10, align 8
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i8*, i8** %9, align 8
  %75 = call i64 @strncmp(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  store i64* %79, i64** %10, align 8
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i64*, i64** %10, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  br label %84

84:                                               ; preds = %95, %83
  %85 = load i8*, i8** %9, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = icmp ult i8* %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i8*, i8** %9, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 32
  br label %93

93:                                               ; preds = %88, %84
  %94 = phi i1 [ false, %84 ], [ %92, %88 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  br label %84

98:                                               ; preds = %93
  %99 = load i64*, i64** %10, align 8
  store i64 -1, i64* %99, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = icmp ult i8* %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i8*, i8** %9, align 8
  %105 = load i64*, i64** %10, align 8
  %106 = call i32 @sscanf(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64* %105)
  br label %107

107:                                              ; preds = %103, %98
  br label %108

108:                                              ; preds = %107, %80
  %109 = load i8*, i8** %8, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %117

114:                                              ; preds = %108
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %8, align 8
  br label %31

117:                                              ; preds = %113, %31
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @close(i32 %118)
  store i32 1, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %24, %17
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
