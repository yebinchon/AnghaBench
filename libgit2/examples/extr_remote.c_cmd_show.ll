; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_remote.c_cmd_show.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_remote.c_cmd_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opts = type { i32, i8** }
%struct.TYPE_6__ = type { i8**, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"could not retrieve remotes\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"could not look up remote\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%s\09%s (fetch)\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"%s\09%s (push)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.opts*)* @cmd_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_show(i32* %0, %struct.opts* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.opts* %1, %struct.opts** %4, align 8
  store i32 0, i32* %10, align 4
  %13 = bitcast %struct.TYPE_6__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 24, i1 false)
  store i32* null, i32** %12, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %37, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.opts*, %struct.opts** %4, align 8
  %17 = getelementptr inbounds %struct.opts, %struct.opts* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.opts*, %struct.opts** %4, align 8
  %22 = getelementptr inbounds %struct.opts, %struct.opts* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %20
  store i32 1, i32* %10, align 4
  br label %36

36:                                               ; preds = %35, %31
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @git_remote_list(%struct.TYPE_6__* %11, i32* %41)
  %43 = call i32 @check_lg2(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %96, %40
  %45 = load i32, i32* %5, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %99

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @puts(i8* %60)
  br label %96

62:                                               ; preds = %50
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @git_remote_lookup(i32** %12, i32* %63, i8* %64)
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @check_lg2(i32 %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %12, align 8
  %69 = call i8* @git_remote_url(i32* %68)
  store i8* %69, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %62
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %72, %62
  %77 = load i32*, i32** %12, align 8
  %78 = call i8* @git_remote_pushurl(i32* %77)
  store i8* %78, i8** %9, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i8*, i8** %9, align 8
  br label %85

83:                                               ; preds = %76
  %84 = load i8*, i8** %8, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i8* [ %82, %81 ], [ %84, %83 ]
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %90, i8* %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @git_remote_free(i32* %94)
  br label %96

96:                                               ; preds = %93, %59
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %44

99:                                               ; preds = %44
  %100 = call i32 @git_strarray_free(%struct.TYPE_6__* %11)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @check_lg2(i32, i8*, i8*) #2

declare dso_local i32 @git_remote_list(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @puts(i8*) #2

declare dso_local i32 @git_remote_lookup(i32**, i32*, i8*) #2

declare dso_local i8* @git_remote_url(i32*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i8* @git_remote_pushurl(i32*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_strarray_free(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
