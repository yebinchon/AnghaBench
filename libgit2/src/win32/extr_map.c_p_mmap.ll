; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_map.c_p_mmap.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_map.c_p_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32* }

@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to mmap. Invalid handle value\00", align 1
@GIT_PROT_WRITE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@GIT_PROT_READ = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_WRITE = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"failed to mmap. Offset must be multiple of allocation granularity\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to mmap. No data written\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p_mmap(%struct.TYPE_4__* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @_get_osfhandle(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %14, align 8
  %26 = call i32 (...) @get_allocation_granularity()
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @GIT_MMAP_VALIDATE(%struct.TYPE_4__* %27, i64 %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %40 = icmp eq i32* %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %6
  %42 = load i32, i32* @EBADF, align 4
  store i32 %42, i32* @errno, align 4
  %43 = load i32, i32* @GIT_ERROR_OS, align 4
  %44 = call i32 @git_error_set(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %150

45:                                               ; preds = %6
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @GIT_PROT_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @PAGE_READWRITE, align 4
  %52 = load i32, i32* %16, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %16, align 4
  br label %64

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @GIT_PROT_READ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @PAGE_READONLY, align 4
  %61 = load i32, i32* %16, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %50
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @GIT_PROT_WRITE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @FILE_MAP_WRITE, align 4
  %71 = load i32, i32* %17, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @GIT_PROT_READ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @FILE_MAP_READ, align 4
  %80 = load i32, i32* %17, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %15, align 4
  %85 = sdiv i32 %83, %84
  %86 = load i32, i32* %15, align 4
  %87 = mul nsw i32 %85, %86
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %20, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %21, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* @errno, align 4
  %95 = load i32, i32* @GIT_ERROR_OS, align 4
  %96 = call i32 @git_error_set(i32 %95, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %150

97:                                               ; preds = %82
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %16, align 4
  %100 = call i32* @CreateFileMapping(i32* %98, i32* null, i32 %99, i32 0, i32 0, i32* null)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32* %100, i32** %102, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %112 = icmp eq i32* %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107, %97
  %114 = load i32, i32* @GIT_ERROR_OS, align 4
  %115 = call i32 @git_error_set(i32 %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  store i32 -1, i32* %7, align 4
  br label %150

118:                                              ; preds = %107
  %119 = call i32 @assert(i32 0)
  %120 = load i32, i32* %20, align 4
  store i32 %120, i32* %18, align 4
  %121 = load i32, i32* %20, align 4
  %122 = ashr i32 %121, 32
  store i32 %122, i32* %19, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i64, i64* %9, align 8
  %130 = call i32* @MapViewOfFile(i32* %125, i32 %126, i32 %127, i32 %128, i64 %129)
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %146, label %137

137:                                              ; preds = %118
  %138 = load i32, i32* @GIT_ERROR_OS, align 4
  %139 = call i32 @git_error_set(i32 %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @CloseHandle(i32* %142)
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i32* null, i32** %145, align 8
  store i32 -1, i32* %7, align 4
  br label %150

146:                                              ; preds = %118
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %146, %137, %113, %93, %41
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @_get_osfhandle(i32) #1

declare dso_local i32 @get_allocation_granularity(...) #1

declare dso_local i32 @GIT_MMAP_VALIDATE(%struct.TYPE_4__*, i64, i32, i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32* @CreateFileMapping(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @MapViewOfFile(i32*, i32, i32, i32, i64) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
