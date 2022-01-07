; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_read_loose_standard.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_read_loose_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@GIT_ZSTREAM_INIT = common dso_local global i32 0, align 4
@MAX_HEADER_LEN = common dso_local global i32 0, align 4
@GIT_ZSTREAM_INFLATE = common dso_local global i32 0, align 4
@GIT_ERROR_ODB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to inflate disk object\00", align 1
@GIT_ERROR_ZLIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"failed to finish zlib inflation: stream aborted prematurely\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @read_loose_standard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_loose_standard(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32, i32* @GIT_ZSTREAM_INIT, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @MAX_HEADER_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  store i8* null, i8** %8, align 8
  %20 = load i32, i32* @GIT_ZSTREAM_INFLATE, align 4
  %21 = call i32 @git_zstream_init(i32* %5, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @git_buf_cstr(i32* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @git_buf_len(i32* %26)
  %28 = call i32 @git_zstream_set_input(i32* %5, i32 %25, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %2
  br label %107

31:                                               ; preds = %23
  store i64 %17, i64* %9, align 8
  %32 = call i32 @git_zstream_get_output(i8* %19, i64* %9, i32* %5)
  store i32 %32, i32* %14, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @parse_header(%struct.TYPE_5__* %13, i64* %10, i8* %19, i64 %35)
  store i32 %36, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %31
  br label %107

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @git_object_typeisloose(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @GIT_ERROR_ODB, align 4
  %46 = call i32 @git_error_set(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %107

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %12, i64 %49, i32 1)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %12, align 8
  %54 = call i8* @git__malloc(i64 %53)
  store i8* %54, i8** %8, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %47
  store i32 -1, i32* %14, align 4
  br label %107

57:                                               ; preds = %52
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp uge i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub i64 %63, %64
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i8, i8* %19, i64 %70
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @memcpy(i8* %69, i8* %71, i64 %72)
  br label %74

74:                                               ; preds = %68, %57
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = sub i64 %76, %77
  store i64 %78, i64* %9, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = call i32 @git_zstream_get_output(i8* %81, i64* %9, i32* %5)
  store i32 %82, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %107

85:                                               ; preds = %74
  %86 = call i32 @git_zstream_done(i32* %5)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @GIT_ERROR_ZLIB, align 4
  %90 = call i32 @git_error_set(i32 %89, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %107

91:                                               ; preds = %85
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %91, %88, %84, %56, %44, %38, %30
  %108 = load i32, i32* %14, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @git__free(i8* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = call i32 @git_zstream_free(i32* %5)
  %115 = load i32, i32* %14, align 4
  %116 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %116)
  ret i32 %115
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_zstream_init(i32*, i32) #2

declare dso_local i32 @git_zstream_set_input(i32*, i32, i32) #2

declare dso_local i32 @git_buf_cstr(i32*) #2

declare dso_local i32 @git_buf_len(i32*) #2

declare dso_local i32 @git_zstream_get_output(i8*, i64*, i32*) #2

declare dso_local i32 @parse_header(%struct.TYPE_5__*, i64*, i8*, i64) #2

declare dso_local i32 @git_object_typeisloose(i32) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i64 @GIT_ADD_SIZET_OVERFLOW(i64*, i64, i32) #2

declare dso_local i8* @git__malloc(i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @git_zstream_done(i32*) #2

declare dso_local i32 @git__free(i8*) #2

declare dso_local i32 @git_zstream_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
