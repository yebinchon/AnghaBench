; ModuleID = '/home/carl/AnghaBench/git/extr_git.c_list_cmds.c'
source_filename = "/home/carl/AnghaBench/git/extr_git.c_list_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"others\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"nohelpers\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"list-\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"unsupported command listing type '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @list_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_cmds(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.string_list, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %2, align 8
  %9 = bitcast %struct.string_list* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 16, i1 false)
  %10 = call i32 @setup_git_directory_gently(i32* %5)
  br label %11

11:                                               ; preds = %105, %1
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %106

15:                                               ; preds = %11
  %16 = load i8*, i8** %2, align 8
  %17 = call i8* @strchrnul(i8* %16, i8 signext 44)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @match_token(i8* %24, i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = call i32 @list_builtins(%struct.string_list* %3, i32 0)
  br label %93

30:                                               ; preds = %15
  %31 = load i8*, i8** %2, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @match_token(i8* %31, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @list_all_main_cmds(%struct.string_list* %3)
  br label %92

37:                                               ; preds = %30
  %38 = load i8*, i8** %2, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @match_token(i8* %38, i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @list_all_other_cmds(%struct.string_list* %3)
  br label %91

44:                                               ; preds = %37
  %45 = load i8*, i8** %2, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @match_token(i8* %45, i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @exclude_helpers_from_list(%struct.string_list* %3)
  br label %90

51:                                               ; preds = %44
  %52 = load i8*, i8** %2, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @match_token(i8* %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @list_aliases(%struct.string_list* %3)
  br label %89

58:                                               ; preds = %51
  %59 = load i8*, i8** %2, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @match_token(i8* %59, i32 %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 @list_cmds_by_config(%struct.string_list* %3)
  br label %88

65:                                               ; preds = %58
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %66, 5
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i8*, i8** %2, align 8
  %70 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %68
  %73 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %74 = load i8*, i8** %2, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 5
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %76, 5
  %78 = call i32 @strbuf_add(%struct.strbuf* %8, i8* %75, i32 %77)
  %79 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @list_cmds_by_category(%struct.string_list* %3, i32 %80)
  %82 = call i32 @strbuf_release(%struct.strbuf* %8)
  br label %87

83:                                               ; preds = %68, %65
  %84 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 @die(i32 %84, i8* %85)
  br label %87

87:                                               ; preds = %83, %72
  br label %88

88:                                               ; preds = %87, %63
  br label %89

89:                                               ; preds = %88, %56
  br label %90

90:                                               ; preds = %89, %49
  br label %91

91:                                               ; preds = %90, %42
  br label %92

92:                                               ; preds = %91, %35
  br label %93

93:                                               ; preds = %92, %28
  %94 = load i32, i32* %7, align 4
  %95 = load i8*, i8** %2, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %2, align 8
  %98 = load i8*, i8** %2, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 44
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i8*, i8** %2, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %2, align 8
  br label %105

105:                                              ; preds = %102, %93
  br label %11

106:                                              ; preds = %11
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %121, %106
  %108 = load i32, i32* %4, align 4
  %109 = getelementptr inbounds %struct.string_list, %struct.string_list* %3, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.string_list, %struct.string_list* %3, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @puts(i32 %119)
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %107

124:                                              ; preds = %107
  %125 = call i32 @string_list_clear(%struct.string_list* %3, i32 0)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_git_directory_gently(i32*) #2

declare dso_local i8* @strchrnul(i8*, i8 signext) #2

declare dso_local i64 @match_token(i8*, i32, i8*) #2

declare dso_local i32 @list_builtins(%struct.string_list*, i32) #2

declare dso_local i32 @list_all_main_cmds(%struct.string_list*) #2

declare dso_local i32 @list_all_other_cmds(%struct.string_list*) #2

declare dso_local i32 @exclude_helpers_from_list(%struct.string_list*) #2

declare dso_local i32 @list_aliases(%struct.string_list*) #2

declare dso_local i32 @list_cmds_by_config(%struct.string_list*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @list_cmds_by_category(%struct.string_list*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @die(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @puts(i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
