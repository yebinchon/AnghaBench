; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_test-reader.c_check_boms.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_test-reader.c_check_boms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [18 x i8] c"checking boms...\0A\00", align 1
@boms = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"\09%s: \00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"- (reader error: %s at %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"- (length=%d while expected length=%d)\0A\00", align 1
@bom_original = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [58 x i8] c"- (value '%s' does not equal to the original value '%s')\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"+\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"checking boms: %d fail(s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_boms() #0 {
  %1 = alloca %struct.TYPE_9__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %109, %0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @boms, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %112

18:                                               ; preds = %10
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @boms, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @boms, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @boms, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %43, %18
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 33
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  br label %38

46:                                               ; preds = %38
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = call i32 @yaml_parser_initialize(%struct.TYPE_9__* %1)
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @yaml_parser_set_input_string(%struct.TYPE_9__* %1, i8* %50, i32 %56)
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @yaml_parser_update_buffer(%struct.TYPE_9__* %1, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %46
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %69, i32 %71)
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %107

75:                                               ; preds = %46
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %2, align 4
  br label %106

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8*, i8** @bom_original, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @memcmp(i8* %90, i8* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** @bom_original, align 8
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* %98, i8* %99)
  %101 = load i32, i32* %2, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %2, align 4
  br label %105

103:                                              ; preds = %87
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %95
  br label %106

106:                                              ; preds = %105, %80
  br label %107

107:                                              ; preds = %106, %67
  %108 = call i32 @yaml_parser_delete(%struct.TYPE_9__* %1)
  br label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %10

112:                                              ; preds = %10
  %113 = load i32, i32* %2, align 4
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @yaml_parser_initialize(%struct.TYPE_9__*) #1

declare dso_local i32 @yaml_parser_set_input_string(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @yaml_parser_update_buffer(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @yaml_parser_delete(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
