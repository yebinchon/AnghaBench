; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_cat-file.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_cat-file.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_info = type { i32 }
%struct.opts = type { i8*, i32, i32, i32 }

@ARGS_INFO_INIT = common dso_local global %struct.args_info zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"Only one rev should be provided\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@SHOW_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@SHOW_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@SHOW_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@SHOW_PRETTY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"--git-dir\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Unknown option\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opts*, i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(%struct.opts* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.opts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.args_info, align 4
  %8 = alloca i8*, align 8
  store %struct.opts* %0, %struct.opts** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %9 = bitcast %struct.args_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.args_info* @ARGS_INFO_INIT to i8*), i64 4, i1 false)
  %10 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %113, %3
  %12 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %117

16:                                               ; preds = %11
  %17 = load i8**, i8*** %6, align 8
  %18 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %28, label %40

28:                                               ; preds = %16
  %29 = load %struct.opts*, %struct.opts** %4, align 8
  %30 = getelementptr inbounds %struct.opts, %struct.opts* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @usage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* null)
  br label %39

35:                                               ; preds = %28
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.opts*, %struct.opts** %4, align 8
  %38 = getelementptr inbounds %struct.opts, %struct.opts* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %39

39:                                               ; preds = %35, %33
  br label %112

40:                                               ; preds = %16
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @SHOW_TYPE, align 4
  %46 = load %struct.opts*, %struct.opts** %4, align 8
  %47 = getelementptr inbounds %struct.opts, %struct.opts* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %111

48:                                               ; preds = %40
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @SHOW_SIZE, align 4
  %54 = load %struct.opts*, %struct.opts** %4, align 8
  %55 = getelementptr inbounds %struct.opts, %struct.opts* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %110

56:                                               ; preds = %48
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @SHOW_NONE, align 4
  %62 = load %struct.opts*, %struct.opts** %4, align 8
  %63 = getelementptr inbounds %struct.opts, %struct.opts* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %109

64:                                               ; preds = %56
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @SHOW_PRETTY, align 4
  %70 = load %struct.opts*, %struct.opts** %4, align 8
  %71 = getelementptr inbounds %struct.opts, %struct.opts* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %108

72:                                               ; preds = %64
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  %77 = load %struct.opts*, %struct.opts** %4, align 8
  %78 = getelementptr inbounds %struct.opts, %struct.opts* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  br label %107

79:                                               ; preds = %72
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load %struct.opts*, %struct.opts** %4, align 8
  %85 = getelementptr inbounds %struct.opts, %struct.opts* %84, i32 0, i32 1
  store i32 1, i32* %85, align 8
  br label %106

86:                                               ; preds = %79
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90, %86
  %95 = call i32 @usage(i8* null, i8* null)
  br label %105

96:                                               ; preds = %90
  %97 = load %struct.opts*, %struct.opts** %4, align 8
  %98 = getelementptr inbounds %struct.opts, %struct.opts* %97, i32 0, i32 3
  %99 = call i32 @match_str_arg(i32* %98, %struct.args_info* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @usage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104, %94
  br label %106

106:                                              ; preds = %105, %83
  br label %107

107:                                              ; preds = %106, %76
  br label %108

108:                                              ; preds = %107, %68
  br label %109

109:                                              ; preds = %108, %60
  br label %110

110:                                              ; preds = %109, %52
  br label %111

111:                                              ; preds = %110, %44
  br label %112

112:                                              ; preds = %111, %39
  br label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.args_info, %struct.args_info* %7, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %11

117:                                              ; preds = %11
  %118 = load %struct.opts*, %struct.opts** %4, align 8
  %119 = getelementptr inbounds %struct.opts, %struct.opts* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.opts*, %struct.opts** %4, align 8
  %124 = getelementptr inbounds %struct.opts, %struct.opts* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %122, %117
  %128 = call i32 @usage(i8* null, i8* null)
  br label %129

129:                                              ; preds = %127, %122
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usage(i8*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @match_str_arg(i32*, %struct.args_info*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
