; ModuleID = '/home/carl/AnghaBench/git/extr_credential-store.c_cmd_main.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-store.c_cmd_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32 }
%struct.string_list = type { i32 }
%struct.option = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"git credential-store [<options>] <action>\00", align 1
@__const.cmd_main.usage = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@CREDENTIAL_INIT = common dso_local global %struct.credential zeroinitializer, align 4
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"fetch and store credentials in <path>\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"~/.git-credentials\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"credentials\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"unable to set up default path; use --file\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"unable to read credential\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"erase\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"store\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i8*, align 8
  %7 = alloca %struct.credential, align 4
  %8 = alloca %struct.string_list, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [2 x %struct.option], align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([2 x i8*]* @__const.cmd_main.usage to i8*), i64 16, i1 false)
  %12 = bitcast %struct.credential* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.credential* @CREDENTIAL_INIT to i8*), i64 4, i1 false)
  %13 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  store i8* null, i8** %9, align 8
  %14 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %10, i64 0, i64 0
  %15 = call i32 @OPT_STRING(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %18 = call i32 (...) @OPT_END()
  %19 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = call i32 @umask(i32 63)
  %21 = load i32, i32* %3, align 4
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %10, i64 0, i64 0
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %25 = call i32 @parse_options(i32 %21, i8** %22, i32* null, %struct.option* %23, i8** %24, i32 0)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %30 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %10, i64 0, i64 0
  %31 = call i32 @usage_with_options(i8** %29, %struct.option* %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load i8**, i8*** %4, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @string_list_append(%struct.string_list* %8, i8* %39)
  br label %55

41:                                               ; preds = %32
  %42 = call i8* @expand_user_path(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i8* %42, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @string_list_append_nodup(%struct.string_list* %8, i8* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = call i8* @xdg_config_home(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @string_list_append_nodup(%struct.string_list* %8, i8* %52)
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %38
  %56 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = call i32 @die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %55
  %62 = load i32, i32* @stdin, align 4
  %63 = call i64 @credential_read(%struct.credential* %7, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call i32 @lookup_credential(%struct.string_list* %8, %struct.credential* %7)
  br label %88

73:                                               ; preds = %67
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = call i32 @remove_credential(%struct.string_list* %8, %struct.credential* %7)
  br label %87

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = call i32 @store_credential(%struct.string_list* %8, %struct.credential* %7)
  br label %86

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %83
  br label %87

87:                                               ; preds = %86, %77
  br label %88

88:                                               ; preds = %87, %71
  %89 = call i32 @string_list_clear(%struct.string_list* %8, i32 0)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_STRING(i32, i8*, i8**, i8*, i8*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @umask(i32) #2

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i8**, i32) #2

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #2

declare dso_local i8* @expand_user_path(i8*, i32) #2

declare dso_local i32 @string_list_append_nodup(%struct.string_list*, i8*) #2

declare dso_local i8* @xdg_config_home(i8*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i64 @credential_read(%struct.credential*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @lookup_credential(%struct.string_list*, %struct.credential*) #2

declare dso_local i32 @remove_credential(%struct.string_list*, %struct.credential*) #2

declare dso_local i32 @store_credential(%struct.string_list*, %struct.credential*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
