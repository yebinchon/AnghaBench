; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filebuf.c_lock_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filebuf.c_lock_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i64 }

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to lock file '%s' for writing\00", align 1
@GIT_ELOCKED = common dso_local global i32 0, align 4
@GIT_FILEBUF_CREATE_LEADING_DIRS = common dso_local global i32 0, align 4
@GIT_FILEBUF_APPEND = common dso_local global i32 0, align 4
@FILEIO_BUFSIZE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to open file '%s' for reading\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to read file '%s'\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to write file '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @lock_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_file(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @git_path_exists(i32 %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = call i32 (...) @git_error_clear()
  %21 = load i32, i32* @GIT_ERROR_OS, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @git_error_set(i32 %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @GIT_ELOCKED, align 4
  store i32 %26, i32* %4, align 4
  br label %142

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @GIT_FILEBUF_CREATE_LEADING_DIRS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @git_futils_creat_locked_withpath(i32 %35, i32 511, i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %48

40:                                               ; preds = %27
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @git_futils_creat_locked(i32 %43, i32 %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %40, %32
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %142

58:                                               ; preds = %48
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @GIT_FILEBUF_APPEND, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %141

65:                                               ; preds = %58
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @git_path_exists(i32 %68)
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %141

71:                                               ; preds = %65
  %72 = load i32, i32* @FILEIO_BUFSIZE, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %9, align 8
  %75 = alloca i8, i64 %73, align 16
  store i64 %73, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @O_RDONLY, align 4
  %80 = call i64 @p_open(i32 %78, i32 %79)
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %71
  %84 = load i32, i32* @GIT_ERROR_OS, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @git_error_set(i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %137

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %114, %89
  %91 = load i64, i64* %8, align 8
  %92 = trunc i64 %73 to i32
  %93 = call i64 @p_read(i64 %91, i8* %75, i32 %92)
  store i64 %93, i64* %11, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @p_write(i32 %99, i8* %75, i64 %100)
  store i32 %101, i32* %12, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %115

104:                                              ; preds = %95
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @git_hash_update(i32* %111, i8* %75, i64 %112)
  br label %114

114:                                              ; preds = %109, %104
  br label %90

115:                                              ; preds = %103, %90
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @p_close(i64 %116)
  %118 = load i64, i64* %11, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* @GIT_ERROR_OS, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @git_error_set(i32 %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %137

126:                                              ; preds = %115
  %127 = load i32, i32* %12, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i32, i32* @GIT_ERROR_OS, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @git_error_set(i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %137

135:                                              ; preds = %126
  br label %136

136:                                              ; preds = %135
  store i32 0, i32* %13, align 4
  br label %137

137:                                              ; preds = %136, %129, %120, %83
  %138 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %13, align 4
  switch i32 %139, label %144 [
    i32 0, label %140
    i32 1, label %142
  ]

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %140, %65, %58
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %137, %53, %19
  %143 = load i32, i32* %4, align 4
  ret i32 %143

144:                                              ; preds = %137
  unreachable
}

declare dso_local i32 @git_path_exists(i32) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local i64 @git_futils_creat_locked_withpath(i32, i32, i32) #1

declare dso_local i64 @git_futils_creat_locked(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @p_open(i32, i32) #1

declare dso_local i64 @p_read(i64, i8*, i32) #1

declare dso_local i32 @p_write(i32, i8*, i64) #1

declare dso_local i32 @git_hash_update(i32*, i8*, i64) #1

declare dso_local i32 @p_close(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
