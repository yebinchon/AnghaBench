; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_read_header_loose.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_read_header_loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_9__ = type { i32 }

@GIT_ERROR_ZLIB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to read loose object header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @read_header_loose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header_loose(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = call i64 @git_buf_oom(%struct.TYPE_9__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %76

23:                                               ; preds = %15
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @git_futils_open_ro(i32 %28)
  store i32 %29, i32* %8, align 4
  store i32 %29, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %68

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %35 = call i64 @p_read(i32 %33, i8* %34, i32 1024)
  store i64 %35, i64* %7, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  br label %68

40:                                               ; preds = %32
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @is_zlib_compressed_data(i8* %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @read_header_loose_packlike(%struct.TYPE_8__* %46, i8* %47, i64 %48)
  store i32 %49, i32* %9, align 4
  br label %55

50:                                               ; preds = %40
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @read_header_loose_standard(%struct.TYPE_8__* %51, i8* %52, i64 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @git_object_typeisloose(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @GIT_ERROR_ZLIB, align 4
  %66 = call i32 @git_error_set(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %68

67:                                               ; preds = %58, %55
  br label %68

68:                                               ; preds = %67, %64, %37, %31
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @p_close(i32 %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %22
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_buf_oom(%struct.TYPE_9__*) #1

declare dso_local i32 @git_futils_open_ro(i32) #1

declare dso_local i64 @p_read(i32, i8*, i32) #1

declare dso_local i32 @is_zlib_compressed_data(i8*, i64) #1

declare dso_local i32 @read_header_loose_packlike(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @read_header_loose_standard(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @git_object_typeisloose(i32) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @p_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
