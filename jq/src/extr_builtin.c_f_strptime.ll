; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_strptime.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_strptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i64, i32 }

@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"strptime/1 requires string inputs and arguments\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%Y-%m-%dT%H:%M:%SZ\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"strptime/1 only supports ISO 8601 on this platform\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"date \22%s\22 does not match format \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @f_strptime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_strptime(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @jv_get_kind(i32 %13)
  %15 = load i64, i64* @JV_KIND_STRING, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @jv_get_kind(i32 %18)
  %20 = load i64, i64* @JV_KIND_STRING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @jv_string(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @ret_error2(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %119

27:                                               ; preds = %17
  %28 = call i32 @memset(%struct.tm* %8, i32 0, i32 24)
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  store i32 8, i32* %29, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  store i32 367, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i8* @jv_string_value(i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @jv_string_value(i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @jv_string(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @ret_error2(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %119

43:                                               ; preds = %27
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @strptime(i8* %44, i8* %45, %struct.tm* %8)
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %11, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @isspace(i8 signext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54, %43
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %62, i8* %63)
  %65 = call i32 @ret_error2(i32 %60, i32 %61, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %119

66:                                               ; preds = %54, %49
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @jv_free(i32 %67)
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp sle i32 %82, 11
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = call i32 @set_tm_wday(%struct.tm* %8)
  br label %86

86:                                               ; preds = %84, %80, %76, %72, %66
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 367
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = icmp sle i32 %100, 11
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 @set_tm_yday(%struct.tm* %8)
  br label %104

104:                                              ; preds = %102, %98, %94, %90, %86
  %105 = call i32 @tm2jv(%struct.tm* %8)
  store i32 %105, i32* %12, align 4
  %106 = load i8*, i8** %11, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i32, i32* %12, align 4
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @jv_string(i8* %112)
  %114 = call i32 @jv_array_append(i32 %111, i32 %113)
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %110, %104
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @jv_free(i32 %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %115, %59, %38, %22
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @ret_error2(i32, i32, i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strptime(i8*, i8*, %struct.tm*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @jv_string_fmt(i8*, i8*, i8*) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @set_tm_wday(%struct.tm*) #1

declare dso_local i32 @set_tm_yday(%struct.tm*) #1

declare dso_local i32 @tm2jv(%struct.tm*) #1

declare dso_local i32 @jv_array_append(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
