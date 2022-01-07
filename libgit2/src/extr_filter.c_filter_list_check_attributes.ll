; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_filter_list_check_attributes.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_filter_list_check_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8**, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GIT_FILTER_NO_SYSTEM_ATTRIBUTES = common dso_local global i32 0, align 4
@GIT_ATTR_CHECK_NO_SYSTEM = common dso_local global i32 0, align 4
@GIT_FILTER_ATTRIBUTES_FROM_HEAD = common dso_local global i32 0, align 4
@GIT_ATTR_CHECK_INCLUDE_HEAD = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ATTR_VALUE_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8***, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_5__*)* @filter_list_check_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_list_check_attributes(i8*** %0, i32* %1, i32* %2, %struct.TYPE_6__* %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8***, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8*** %0, i8**** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i8** @git__calloc(i64 %21, i32 8)
  store i8** %22, i8*** %12, align 8
  store i32 0, i32* %13, align 4
  %23 = load i8**, i8*** %12, align 8
  %24 = call i32 @GIT_ERROR_CHECK_ALLOC(i8** %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GIT_FILTER_NO_SYSTEM_ATTRIBUTES, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %31, %5
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @GIT_FILTER_ATTRIBUTES_FROM_HEAD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @GIT_ATTR_CHECK_INCLUDE_HEAD, align 4
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %42, %35
  %47 = load i8**, i8*** %12, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = call i32 @git_attr_get_many_with_session(i8** %47, i32* %48, i32* %49, i32 %50, i32 %53, i64 %56, i8** %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @GIT_ENOTFOUND, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %46
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = call i32 (...) @git_error_clear()
  %71 = load i8**, i8*** %12, align 8
  %72 = bitcast i8** %71 to i8*
  %73 = call i32 @git__free(i8* %72)
  store i32 0, i32* %6, align 4
  br label %148

74:                                               ; preds = %64, %46
  store i64 0, i64* %14, align 8
  br label %75

75:                                               ; preds = %133, %74
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %14, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %79, %82
  br label %84

84:                                               ; preds = %78, %75
  %85 = phi i1 [ false, %75 ], [ %83, %78 ]
  br i1 %85, label %86, label %136

86:                                               ; preds = %84
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %14, align 8
  %94 = add i64 %92, %93
  %95 = getelementptr inbounds i8*, i8** %89, i64 %94
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %16, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %86
  br label %133

100:                                              ; preds = %86
  %101 = load i8*, i8** %16, align 8
  %102 = call i64 @git_attr_value(i8* %101)
  store i64 %102, i64* %17, align 8
  %103 = load i8**, i8*** %12, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @git_attr_value(i8* %106)
  store i64 %107, i64* %18, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %18, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %112, i32* %15, align 4
  br label %132

113:                                              ; preds = %100
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* @GIT_ATTR_VALUE_STRING, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i8*, i8** %16, align 8
  %119 = load i8**, i8*** %12, align 8
  %120 = load i64, i64* %14, align 8
  %121 = getelementptr inbounds i8*, i8** %119, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @strcmp(i8* %118, i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load i8*, i8** %16, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %130, i32* %15, align 4
  br label %131

131:                                              ; preds = %129, %125, %117, %113
  br label %132

132:                                              ; preds = %131, %111
  br label %133

133:                                              ; preds = %132, %99
  %134 = load i64, i64* %14, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %14, align 8
  br label %75

136:                                              ; preds = %84
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i8**, i8*** %12, align 8
  %141 = bitcast i8** %140 to i8*
  %142 = call i32 @git__free(i8* %141)
  br label %146

143:                                              ; preds = %136
  %144 = load i8**, i8*** %12, align 8
  %145 = load i8***, i8**** %7, align 8
  store i8** %144, i8*** %145, align 8
  br label %146

146:                                              ; preds = %143, %139
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %146, %69
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i8** @git__calloc(i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8**) #1

declare dso_local i32 @git_attr_get_many_with_session(i8**, i32*, i32*, i32, i32, i64, i8**) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i64 @git_attr_value(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
