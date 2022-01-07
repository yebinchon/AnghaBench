; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_get_exe_path.c_get_exe_path.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_get_exe_path.c_get_exe_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@_CS_PATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@X_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"/usr/bin/i3-nagbar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_exe_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 1024, i64* %4, align 8
  store i64 1024, i64* %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i8* @smalloc(i64 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i8* @smalloc(i64 %16)
  store i8* %17, i8** %7, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %18

18:                                               ; preds = %26, %1
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @readlink(i8* %19, i8* %20, i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %4, align 8
  %24 = trunc i64 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i64, i64* %4, align 8
  %28 = mul i64 %27, 2
  store i64 %28, i64* %4, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i8* @srealloc(i8* %29, i64 %30)
  store i8* %31, i8** %6, align 8
  br label %18

32:                                               ; preds = %18
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** %2, align 8
  br label %147

43:                                               ; preds = %32
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @free(i8* %50)
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i8*, i8** %3, align 8
  %55 = call i8* @sstrdup(i8* %54)
  store i8* %55, i8** %2, align 8
  br label %147

56:                                               ; preds = %43
  %57 = load i8*, i8** %3, align 8
  %58 = call i32* @strchr(i8* %57, i8 signext 47)
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %72, %60
  %62 = load i8*, i8** %7, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i8* @getcwd(i8* %62, i64 %63)
  store i8* %64, i8** %10, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @ERANGE, align 8
  %69 = icmp eq i64 %67, %68
  br label %70

70:                                               ; preds = %66, %61
  %71 = phi i1 [ false, %61 ], [ %69, %66 ]
  br i1 %71, label %72, label %78

72:                                               ; preds = %70
  %73 = load i64, i64* %5, align 8
  %74 = mul i64 %73, 2
  store i64 %74, i64* %5, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i8* @srealloc(i8* %75, i64 %76)
  store i8* %77, i8** %7, align 8
  br label %61

78:                                               ; preds = %70
  %79 = load i8*, i8** %10, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @free(i8* %82)
  %84 = load i8*, i8** %7, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 (i8**, i8*, i8*, ...) @sasprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %85)
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i8*, i8** %6, align 8
  store i8* %89, i8** %2, align 8
  br label %147

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %56
  %92 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %11, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %103, %95
  %97 = load i32, i32* @_CS_PATH, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @confstr(i32 %97, i8* %98, i64 %99)
  %101 = load i64, i64* %5, align 8
  %102 = icmp ugt i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i64, i64* %5, align 8
  %105 = mul i64 %104, 2
  store i64 %105, i64* %5, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load i64, i64* %5, align 8
  %108 = call i8* @srealloc(i8* %106, i64 %107)
  store i8* %108, i8** %7, align 8
  br label %96

109:                                              ; preds = %96
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 (i8**, i8*, i8*, ...) @sasprintf(i8** %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %110)
  br label %115

112:                                              ; preds = %91
  %113 = load i8*, i8** %11, align 8
  %114 = call i8* @sstrdup(i8* %113)
  store i8* %114, i8** %11, align 8
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i8*, i8** %11, align 8
  store i8* %116, i8** %13, align 8
  br label %117

117:                                              ; preds = %115, %138
  %118 = load i8*, i8** %13, align 8
  %119 = call i8* @strtok(i8* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i8* %119, i8** %12, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  br label %139

122:                                              ; preds = %117
  store i8* null, i8** %13, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i8*, i8** %12, align 8
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 (i8**, i8*, i8*, ...) @sasprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %125, i8* %126)
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* @X_OK, align 4
  %130 = call i64 @access(i8* %128, i32 %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %122
  %133 = load i8*, i8** %11, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @free(i8* %135)
  %137 = load i8*, i8** %6, align 8
  store i8* %137, i8** %2, align 8
  br label %147

138:                                              ; preds = %122
  br label %117

139:                                              ; preds = %121
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @free(i8* %140)
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @free(i8* %142)
  %144 = load i8*, i8** %7, align 8
  %145 = call i32 @free(i8* %144)
  %146 = call i8* @sstrdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i8* %146, i8** %2, align 8
  br label %147

147:                                              ; preds = %139, %132, %81, %49, %35
  %148 = load i8*, i8** %2, align 8
  ret i8* %148
}

declare dso_local i8* @smalloc(i64) #1

declare dso_local i32 @readlink(i8*, i8*, i64) #1

declare dso_local i8* @srealloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @getcwd(i8*, i64) #1

declare dso_local i32 @sasprintf(i8**, i8*, i8*, ...) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @confstr(i32, i8*, i64) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
