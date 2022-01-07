; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_tag.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_tag.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i8*, i32, i32, i8*, i8* }

@ARGS_INFO_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@action_list_tags = common dso_local global i32 0, align 4
@action_create_tag = common dso_local global i32 0, align 4
@action_create_lighweight_tag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@action_delete_tag = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.TYPE_7__*, i32, i8**)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options(i32** %0, %struct.TYPE_7__* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i8*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %11 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_8__* @ARGS_INFO_INIT to i8*), i64 4, i1 false)
  %12 = load i32**, i32*** %5, align 8
  store i32* @action_list_tags, i32** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 1, i32* %13, align 4
  br label %14

14:                                               ; preds = %116, %4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %120

19:                                               ; preds = %14
  %20 = load i8**, i8*** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 45
  br i1 %30, label %31, label %59

31:                                               ; preds = %19
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %52

40:                                               ; preds = %31
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  br label %51

49:                                               ; preds = %40
  %50 = call i32 (...) @print_usage()
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, @action_create_tag
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32**, i32*** %5, align 8
  store i32* @action_create_lighweight_tag, i32** %57, align 8
  br label %58

58:                                               ; preds = %56, %52
  br label %115

59:                                               ; preds = %19
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = load i32**, i32*** %5, align 8
  store i32* @action_list_tags, i32** %66, align 8
  br label %114

67:                                               ; preds = %59
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = load i32**, i32*** %5, align 8
  store i32* @action_create_tag, i32** %72, align 8
  br label %113

73:                                               ; preds = %67
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  store i32 1, i32* %79, align 4
  br label %112

80:                                               ; preds = %73
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = call i64 @match_int_arg(i32* %82, %struct.TYPE_8__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32**, i32*** %5, align 8
  store i32* @action_list_tags, i32** %86, align 8
  br label %111

87:                                               ; preds = %80
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  %90 = call i64 @match_str_arg(i8** %89, %struct.TYPE_8__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32**, i32*** %5, align 8
  store i32* @action_list_tags, i32** %93, align 8
  br label %110

94:                                               ; preds = %87
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = call i64 @match_str_arg(i8** %96, %struct.TYPE_8__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32**, i32*** %5, align 8
  store i32* @action_delete_tag, i32** %100, align 8
  br label %109

101:                                              ; preds = %94
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 5
  %104 = call i64 @match_str_arg(i8** %103, %struct.TYPE_8__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32**, i32*** %5, align 8
  store i32* @action_create_tag, i32** %107, align 8
  br label %108

108:                                              ; preds = %106, %101
  br label %109

109:                                              ; preds = %108, %99
  br label %110

110:                                              ; preds = %109, %92
  br label %111

111:                                              ; preds = %110, %85
  br label %112

112:                                              ; preds = %111, %77
  br label %113

113:                                              ; preds = %112, %71
  br label %114

114:                                              ; preds = %113, %63
  br label %115

115:                                              ; preds = %114, %58
  br label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %14

120:                                              ; preds = %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @print_usage(...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @match_int_arg(i32*, %struct.TYPE_8__*, i8*, i32) #2

declare dso_local i64 @match_str_arg(i8**, %struct.TYPE_8__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
