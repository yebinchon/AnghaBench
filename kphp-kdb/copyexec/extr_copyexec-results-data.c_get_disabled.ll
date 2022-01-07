; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_disabled.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"get_disabled (volume_id: %llu)\0A\00", align 1
@hosts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HOSTS = common dso_local global %struct.TYPE_3__** null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"%s,0x%llx,%d,%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"get_disabled: l = %d, m = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_disabled(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @hosts, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %2, align 8
  br label %133

18:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %61, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @hosts, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @HOSTS, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %8, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %23
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %33
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @snprintf(i8* %40, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %46, i32 %49, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %39, %33, %23
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %19

64:                                               ; preds = %19
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %68, i8** %2, align 8
  br label %133

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i8* @malloc(i32 %74)
  store i8* %75, i8** %9, align 8
  %76 = load i8*, i8** %9, align 8
  store i8* %76, i8** %10, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i8* null, i8** %2, align 8
  br label %133

80:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  br label %81

81:                                               ; preds = %120, %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @hosts, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %123

85:                                               ; preds = %81
  %86 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @HOSTS, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %86, i64 %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %8, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %85
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %3, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @sprintf(i8* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %105, i32 %108, i32 %111, i32 %114)
  %116 = load i8*, i8** %10, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %10, align 8
  br label %119

119:                                              ; preds = %101, %95, %85
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  br label %81

123:                                              ; preds = %81
  %124 = load i8*, i8** %10, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = icmp eq i8* %124, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i8*, i8** %9, align 8
  store i8* %132, i8** %2, align 8
  br label %133

133:                                              ; preds = %123, %79, %67, %16
  %134 = load i8*, i8** %2, align 8
  ret i8* %134
}

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
