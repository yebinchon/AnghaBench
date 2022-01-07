; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_dl.c_uv__dlerror.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_dl.c_uv__dlerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@ERROR_MUI_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@ERROR_RESOURCE_TYPE_NOT_FOUND = common dso_local global i64 0, align 8
@ERROR_BAD_EXE_FORMAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%1\00", align 1
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i64)* @uv__dlerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__dlerror(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @LocalFree(i8* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i8* null, i8** %21, align 8
  br label %22

22:                                               ; preds = %15, %3
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %103

26:                                               ; preds = %22
  %27 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %28 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %31 = or i32 %29, %30
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @LANG_ENGLISH, align 4
  %34 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %35 = call i32 @MAKELANGID(i32 %33, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = ptrtoint i8** %37 to i32
  %39 = call i64 @FormatMessageA(i32 %31, i8* null, i64 %32, i32 %35, i32 %38, i32 0, i32* null)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %26
  %43 = call i64 (...) @GetLastError()
  %44 = load i64, i64* @ERROR_MUI_FILE_NOT_FOUND, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = call i64 (...) @GetLastError()
  %48 = load i64, i64* @ERROR_RESOURCE_TYPE_NOT_FOUND, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %52 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %55 = or i32 %53, %54
  %56 = load i64, i64* %7, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = ptrtoint i8** %58 to i32
  %60 = call i64 @FormatMessageA(i32 %55, i8* null, i64 %56, i32 0, i32 %59, i32 0, i32* null)
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %50, %46, %26
  %62 = load i64, i64* %9, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %61
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @ERROR_BAD_EXE_FORMAT, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @strstr(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %10, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i8* null, i8** %79, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %8, align 8
  %82 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %83 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @FORMAT_MESSAGE_FROM_STRING, align 4
  %86 = or i32 %84, %85
  %87 = load i8*, i8** %10, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = ptrtoint i8** %89 to i32
  %91 = bitcast i64* %8 to i32*
  %92 = call i64 @FormatMessageA(i32 %86, i8* %87, i64 0, i32 0, i32 %90, i32 0, i32* %91)
  store i64 %92, i64* %9, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @LocalFree(i8* %93)
  br label %95

95:                                               ; preds = %74, %68, %64, %61
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @uv__format_fallback_error(%struct.TYPE_4__* %99, i64 %100)
  br label %102

102:                                              ; preds = %98, %95
  store i32 -1, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %25
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @LocalFree(i8*) #1

declare dso_local i64 @FormatMessageA(i32, i8*, i64, i32, i32, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @uv__format_fallback_error(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
