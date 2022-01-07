; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_init.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_init.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_info = type { i32 }
%struct.opts = type { i8*, i32, i32, i32, i8*, i8*, i32, i64 }

@ARGS_INFO_INIT = common dso_local global %struct.args_info zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"extra argument\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"--bare\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"--shared\00", align 1
@GIT_REPOSITORY_INIT_SHARED_GROUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"--initial-commit\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"--template\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"--separate-git-dir\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"must specify directory to init\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opts*, i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(%struct.opts* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.args_info, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = bitcast %struct.args_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.args_info* @ARGS_INFO_INIT to i8*), i64 4, i1 false)
  %11 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  store i32 1, i32* %11, align 4
  br label %12

12:                                               ; preds = %111, %3
  %13 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %115

17:                                               ; preds = %12
  %18 = load i8**, i8*** %6, align 8
  %19 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.opts*, %struct.opts** %4, align 8
  %31 = getelementptr inbounds %struct.opts, %struct.opts* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %17
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 45
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.opts*, %struct.opts** %4, align 8
  %40 = getelementptr inbounds %struct.opts, %struct.opts* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @usage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.opts*, %struct.opts** %4, align 8
  %49 = getelementptr inbounds %struct.opts, %struct.opts* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %110

50:                                               ; preds = %32
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.opts*, %struct.opts** %4, align 8
  %60 = getelementptr inbounds %struct.opts, %struct.opts* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  br label %109

61:                                               ; preds = %54
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load %struct.opts*, %struct.opts** %4, align 8
  %67 = getelementptr inbounds %struct.opts, %struct.opts* %66, i32 0, i32 2
  store i32 1, i32* %67, align 4
  br label %108

68:                                               ; preds = %61
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @GIT_REPOSITORY_INIT_SHARED_GROUP, align 4
  %74 = load %struct.opts*, %struct.opts** %4, align 8
  %75 = getelementptr inbounds %struct.opts, %struct.opts* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  br label %107

76:                                               ; preds = %68
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load %struct.opts*, %struct.opts** %4, align 8
  %82 = getelementptr inbounds %struct.opts, %struct.opts* %81, i32 0, i32 3
  store i32 1, i32* %82, align 8
  br label %106

83:                                               ; preds = %76
  %84 = call i64 @match_str_arg(i8** %8, %struct.args_info* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @parse_shared(i8* %87)
  %89 = load %struct.opts*, %struct.opts** %4, align 8
  %90 = getelementptr inbounds %struct.opts, %struct.opts* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  br label %105

91:                                               ; preds = %83
  %92 = load %struct.opts*, %struct.opts** %4, align 8
  %93 = getelementptr inbounds %struct.opts, %struct.opts* %92, i32 0, i32 4
  %94 = call i64 @match_str_arg(i8** %93, %struct.args_info* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.opts*, %struct.opts** %4, align 8
  %98 = getelementptr inbounds %struct.opts, %struct.opts* %97, i32 0, i32 5
  %99 = call i64 @match_str_arg(i8** %98, %struct.args_info* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96, %91
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @usage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104, %86
  br label %106

106:                                              ; preds = %105, %80
  br label %107

107:                                              ; preds = %106, %72
  br label %108

108:                                              ; preds = %107, %65
  br label %109

109:                                              ; preds = %108, %58
  br label %110

110:                                              ; preds = %109, %46
  br label %111

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %12

115:                                              ; preds = %12
  %116 = load %struct.opts*, %struct.opts** %4, align 8
  %117 = getelementptr inbounds %struct.opts, %struct.opts* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %115
  %121 = call i32 @usage(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %115
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usage(i8*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @match_str_arg(i8**, %struct.args_info*, i8*) #2

declare dso_local i32 @parse_shared(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
