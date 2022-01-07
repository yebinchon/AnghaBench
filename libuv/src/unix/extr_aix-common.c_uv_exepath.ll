; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_aix-common.c_uv_exepath.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_aix-common.c_uv_exepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.procsinfo = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@UV_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@X_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_exepath(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.procsinfo, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load i64*, i64** %5, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64*, i64** %5, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %27, %2
  %35 = load i32, i32* @UV_EINVAL, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %141

36:                                               ; preds = %30
  %37 = call i32 (...) @getpid()
  %38 = getelementptr inbounds %struct.procsinfo, %struct.procsinfo* %11, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = trunc i64 %19 to i32
  %40 = call i32 @getargs(%struct.procsinfo* %11, i32 4, i8* %21, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @UV_EINVAL, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %141

45:                                               ; preds = %36
  %46 = call i32* @strchr(i8* %21, i8 signext 47)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %75

48:                                               ; preds = %45
  %49 = call i8* @realpath(i8* %21, i8* %24)
  %50 = icmp ne i8* %49, %24
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @UV__ERR(i32 %52)
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %141

54:                                               ; preds = %48
  %55 = call i64 @strlen(i8* %24)
  store i64 %55, i64* %10, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i64, i64* %10, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %54
  %67 = load i8*, i8** %4, align 8
  %68 = load i64*, i64** %5, align 8
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @memcpy(i8* %67, i8* %24, i64 %69)
  %71 = load i8*, i8** %4, align 8
  %72 = load i64*, i64** %5, align 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8 0, i8* %74, align 1
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %141

75:                                               ; preds = %45
  %76 = load i32, i32* @PATH_MAX, align 4
  %77 = zext i32 %76 to i64
  %78 = call i8* @llvm.stacksave()
  store i8* %78, i8** %13, align 8
  %79 = alloca i8, i64 %77, align 16
  store i64 %77, i64* %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %80 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %80, i8** %17, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @UV_EINVAL, align 4
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %139

85:                                               ; preds = %75
  %86 = load i8*, i8** %17, align 8
  %87 = call i8* @uv__strdup(i8* %86)
  store i8* %87, i8** %15, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %139

92:                                               ; preds = %85
  %93 = load i8*, i8** %15, align 8
  %94 = call i8* @strtok(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %94, i8** %16, align 8
  br label %95

95:                                               ; preds = %133, %92
  %96 = load i8*, i8** %16, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %135

98:                                               ; preds = %95
  %99 = sub i64 %77, 1
  %100 = trunc i64 %99 to i32
  %101 = load i8*, i8** %16, align 8
  %102 = call i32 @snprintf(i8* %79, i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %101, i8* %21)
  %103 = call i8* @realpath(i8* %79, i8* %24)
  %104 = icmp eq i8* %103, %24
  br i1 %104, label %105, label %133

105:                                              ; preds = %98
  %106 = load i32, i32* @X_OK, align 4
  %107 = call i64 @access(i8* %24, i32 %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %105
  %110 = call i64 @strlen(i8* %24)
  store i64 %110, i64* %10, align 8
  %111 = load i64*, i64** %5, align 8
  %112 = load i64, i64* %111, align 8
  %113 = sub i64 %112, 1
  store i64 %113, i64* %111, align 8
  %114 = load i64*, i64** %5, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load i64, i64* %10, align 8
  %120 = load i64*, i64** %5, align 8
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %118, %109
  %122 = load i8*, i8** %4, align 8
  %123 = load i64*, i64** %5, align 8
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @memcpy(i8* %122, i8* %24, i64 %124)
  %126 = load i8*, i8** %4, align 8
  %127 = load i64*, i64** %5, align 8
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %15, align 8
  %131 = call i32 @uv__free(i8* %130)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %139

132:                                              ; preds = %105
  br label %133

133:                                              ; preds = %132, %98
  %134 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %134, i8** %16, align 8
  br label %95

135:                                              ; preds = %95
  %136 = load i8*, i8** %15, align 8
  %137 = call i32 @uv__free(i8* %136)
  %138 = load i32, i32* @UV_EINVAL, align 4
  store i32 %138, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %139

139:                                              ; preds = %135, %121, %90, %83
  %140 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %140)
  br label %141

141:                                              ; preds = %139, %66, %51, %43, %34
  %142 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getpid(...) #2

declare dso_local i32 @getargs(%struct.procsinfo*, i32, i8*, i32) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i8* @realpath(i8*, i8*) #2

declare dso_local i32 @UV__ERR(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @uv__strdup(i8*) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @uv__free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
