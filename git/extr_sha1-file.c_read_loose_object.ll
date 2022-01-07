; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_read_loose_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_read_loose_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@MAX_HEADER_LEN = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unable to mmap %s\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to unpack header of %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to parse header of %s\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@big_file_threshold = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"unable to unpack contents of %s\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"hash mismatch for %s (expected %s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_loose_object(i8* %0, %struct.object_id* %1, i32* %2, i64* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i32 -1, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %17 = load i32, i32* @MAX_HEADER_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %15, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %16, align 8
  %21 = load i8**, i8*** %10, align 8
  store i8* null, i8** %21, align 8
  %22 = load i32, i32* @the_repository, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @map_loose_object_1(i32 %22, i8* %23, i32* null, i64* %13)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %5
  %28 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @error_errno(i32 %28, i8* %29)
  br label %108

31:                                               ; preds = %5
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = trunc i64 %18 to i32
  %35 = call i64 @unpack_loose_header(i32* %14, i8* %32, i64 %33, i8* %20, i32 %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 (i32, i8*, ...) @error(i32 %38, i8* %39)
  br label %108

41:                                               ; preds = %31
  %42 = load i64*, i64** %9, align 8
  %43 = call i32 @parse_loose_header(i8* %20, i64* %42)
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 (i32, i8*, ...) @error(i32 %49, i8* %50)
  %52 = call i32 @git_inflate_end(i32* %14)
  br label %108

53:                                               ; preds = %41
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @OBJ_BLOB, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @big_file_threshold, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i64*, i64** %9, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.object_id*, %struct.object_id** %7, align 8
  %68 = call i64 @check_stream_oid(i32* %14, i8* %20, i64 %65, i8* %66, %struct.object_id* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %108

71:                                               ; preds = %63
  br label %107

72:                                               ; preds = %58, %53
  %73 = load i64*, i64** %9, align 8
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.object_id*, %struct.object_id** %7, align 8
  %76 = call i8* @unpack_loose_rest(i32* %14, i8* %20, i64 %74, %struct.object_id* %75)
  %77 = load i8**, i8*** %10, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i8**, i8*** %10, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %72
  %82 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 (i32, i8*, ...) @error(i32 %82, i8* %83)
  %85 = call i32 @git_inflate_end(i32* %14)
  br label %108

86:                                               ; preds = %72
  %87 = load %struct.object_id*, %struct.object_id** %7, align 8
  %88 = load i8**, i8*** %10, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @type_name(i32 %93)
  %95 = call i64 @check_object_signature(%struct.object_id* %87, i8* %89, i64 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %86
  %98 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.object_id*, %struct.object_id** %7, align 8
  %101 = call i8* @oid_to_hex(%struct.object_id* %100)
  %102 = call i32 (i32, i8*, ...) @error(i32 %98, i8* %99, i8* %101)
  %103 = load i8**, i8*** %10, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @free(i8* %104)
  br label %108

106:                                              ; preds = %86
  br label %107

107:                                              ; preds = %106, %71
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %107, %97, %81, %70, %48, %37, %27
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i8*, i8** %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = call i32 @munmap(i8* %112, i64 %113)
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i32, i32* %11, align 4
  %117 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %117)
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @map_loose_object_1(i32, i8*, i32*, i64*) #2

declare dso_local i32 @error_errno(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i64 @unpack_loose_header(i32*, i8*, i64, i8*, i32) #2

declare dso_local i32 @error(i32, i8*, ...) #2

declare dso_local i32 @parse_loose_header(i8*, i64*) #2

declare dso_local i32 @git_inflate_end(i32*) #2

declare dso_local i64 @check_stream_oid(i32*, i8*, i64, i8*, %struct.object_id*) #2

declare dso_local i8* @unpack_loose_rest(i32*, i8*, i64, %struct.object_id*) #2

declare dso_local i64 @check_object_signature(%struct.object_id*, i8*, i64, i32) #2

declare dso_local i32 @type_name(i32) #2

declare dso_local i8* @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @munmap(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
