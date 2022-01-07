; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_create_binary.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_create_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GIT_EBUFS = common dso_local global i32 0, align 4
@GIT_DIFF_BINARY_DELTA = common dso_local global i32 0, align 4
@GIT_DIFF_BINARY_LITERAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i64*, i64*, i8*, i64, i8*, i64)* @create_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_binary(i32* %0, i8** %1, i64* %2, i64* %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_6__, align 8
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  %23 = bitcast %struct.TYPE_6__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %24 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  store i64 0, i64* %20, align 8
  %25 = load i64, i64* %15, align 8
  %26 = call i32 @git__is_ulong(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %8
  %29 = load i64, i64* %17, align 8
  %30 = call i32 @git__is_ulong(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28, %8
  %33 = load i32, i32* @GIT_EBUFS, align 4
  store i32 %33, i32* %9, align 4
  br label %115

34:                                               ; preds = %28
  %35 = load i8*, i8** %16, align 8
  %36 = load i64, i64* %17, align 8
  %37 = call i32 @git_zstream_deflatebuf(%struct.TYPE_6__* %18, i8* %35, i64 %36)
  store i32 %37, i32* %21, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %111

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @git__is_ulong(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @GIT_EBUFS, align 4
  store i32 %46, i32* %21, align 4
  br label %111

47:                                               ; preds = %40
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %47
  %51 = load i64, i64* %17, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load i8*, i8** %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = load i64, i64* %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @git_delta(i8** %22, i64* %20, i8* %54, i64 %55, i8* %56, i64 %57, i64 %59)
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %21, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load i8*, i8** %22, align 8
  %65 = load i64, i64* %20, align 8
  %66 = call i32 @git_zstream_deflatebuf(%struct.TYPE_6__* %19, i8* %64, i64 %65)
  store i32 %66, i32* %21, align 4
  %67 = load i8*, i8** %22, align 8
  %68 = call i32 @git__free(i8* %67)
  br label %75

69:                                               ; preds = %53
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* @GIT_EBUFS, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %21, align 4
  br label %74

74:                                               ; preds = %73, %69
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i32, i32* %21, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %111

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %50, %47
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %86, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load i32, i32* @GIT_DIFF_BINARY_DELTA, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %12, align 8
  store i64 %94, i64* %95, align 8
  %96 = call i8* @git_buf_detach(%struct.TYPE_6__* %19)
  %97 = load i8**, i8*** %11, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i64*, i64** %13, align 8
  store i64 %98, i64* %99, align 8
  br label %110

100:                                              ; preds = %84, %80
  %101 = load i32, i32* @GIT_DIFF_BINARY_LITERAL, align 4
  %102 = load i32*, i32** %10, align 8
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %12, align 8
  store i64 %104, i64* %105, align 8
  %106 = call i8* @git_buf_detach(%struct.TYPE_6__* %18)
  %107 = load i8**, i8*** %11, align 8
  store i8* %106, i8** %107, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64*, i64** %13, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %100, %90
  br label %111

111:                                              ; preds = %110, %78, %45, %39
  %112 = call i32 @git_buf_dispose(%struct.TYPE_6__* %18)
  %113 = call i32 @git_buf_dispose(%struct.TYPE_6__* %19)
  %114 = load i32, i32* %21, align 4
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %111, %32
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git__is_ulong(i64) #2

declare dso_local i32 @git_zstream_deflatebuf(%struct.TYPE_6__*, i8*, i64) #2

declare dso_local i32 @git_delta(i8**, i64*, i8*, i64, i8*, i64, i64) #2

declare dso_local i32 @git__free(i8*) #2

declare dso_local i8* @git_buf_detach(%struct.TYPE_6__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
