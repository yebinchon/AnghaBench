; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_compute_alternate_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_compute_alternate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"path '%s' does not exist\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s/.git/objects\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s/objects\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [69 x i8] c"reference repository '%s' as a linked checkout is not supported yet.\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"reference repository '%s' is not a local repository.\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s/shallow\00", align 1
@F_OK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"reference repository '%s' is shallow\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"%s/info/grafts\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"reference repository '%s' is grafted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @compute_alternate_path(i8* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @real_path_if_valid(i8* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  %16 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %17 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strbuf_addf(%struct.strbuf* %16, i32 %17, i8* %18)
  br label %98

20:                                               ; preds = %2
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @xstrdup(i8* %21)
  store i8* %22, i8** %5, align 8
  br label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @read_gitfile(i8* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @mkpath(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = call i8* @read_gitfile(i8* %30)
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i8* @xstrdup(i8* %38)
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %35, %32
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @mkpath(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  %46 = call i64 @is_directory(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = call i8* @mkpathdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i8*, i8** %9, align 8
  store i8* %53, i8** %5, align 8
  br label %75

54:                                               ; preds = %43, %40
  %55 = load i8*, i8** %5, align 8
  %56 = call i8* @mkpath(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = call i64 @is_directory(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %54
  %60 = bitcast %struct.strbuf* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 1, i32* %8, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @get_common_dir(%struct.strbuf* %10, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %66 = call i32 @_(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @strbuf_addf(%struct.strbuf* %65, i32 %66, i8* %67)
  br label %98

69:                                               ; preds = %59
  %70 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %71 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @strbuf_addf(%struct.strbuf* %70, i32 %71, i8* %72)
  br label %98

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %48
  %76 = load i8*, i8** %5, align 8
  %77 = call i8* @mkpath(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @F_OK, align 4
  %79 = call i32 @access(i8* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %83 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @strbuf_addf(%struct.strbuf* %82, i32 %83, i8* %84)
  store i32 1, i32* %8, align 4
  br label %98

86:                                               ; preds = %75
  %87 = load i8*, i8** %5, align 8
  %88 = call i8* @mkpath(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %87)
  %89 = load i32, i32* @F_OK, align 4
  %90 = call i32 @access(i8* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %94 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %95 = load i8*, i8** %3, align 8
  %96 = call i32 @strbuf_addf(%struct.strbuf* %93, i32 %94, i8* %95)
  store i32 1, i32* %8, align 4
  br label %98

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %92, %81, %69, %64, %15
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @FREE_AND_NULL(i8* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i8*, i8** %5, align 8
  ret i8* %105
}

declare dso_local i8* @real_path_if_valid(i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @read_gitfile(i8*) #1

declare dso_local i8* @mkpath(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @is_directory(i8*) #1

declare dso_local i8* @mkpathdup(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @get_common_dir(%struct.strbuf*, i8*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @FREE_AND_NULL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
