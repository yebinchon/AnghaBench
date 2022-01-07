; ModuleID = '/home/carl/AnghaBench/git/extr_credential.c_credential_config_callback.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential.c_credential_config_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"credential.\00", align 1
@CREDENTIAL_INIT = common dso_local global %struct.credential zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"helper\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"usehttppath\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @credential_config_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @credential_config_callback(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.credential*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.credential, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.credential*
  store %struct.credential* %15, %struct.credential** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @skip_prefix(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %9)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %100

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @config_error_nonbool(i8* %24)
  store i32 %25, i32* %4, align 4
  br label %100

26:                                               ; preds = %20
  %27 = load i8*, i8** %9, align 8
  %28 = call i8* @strrchr(i8* %27, i8 signext 46)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = bitcast %struct.credential* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 bitcast (%struct.credential* @CREDENTIAL_INIT to i8*), i64 24, i1 false)
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = call i8* @xmemdupz(i8* %33, i32 %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @credential_from_url(%struct.credential* %11, i8* %41)
  %43 = load %struct.credential*, %struct.credential** %8, align 8
  %44 = call i32 @credential_match(%struct.credential* %11, %struct.credential* %43)
  store i32 %44, i32* %13, align 4
  %45 = call i32 @credential_clear(%struct.credential* %11)
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %100

51:                                               ; preds = %31
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %51, %26
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.credential*, %struct.credential** %8, align 8
  %64 = getelementptr inbounds %struct.credential, %struct.credential* %63, i32 0, i32 2
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @string_list_append(i32* %64, i8* %65)
  br label %71

67:                                               ; preds = %58
  %68 = load %struct.credential*, %struct.credential** %8, align 8
  %69 = getelementptr inbounds %struct.credential, %struct.credential* %68, i32 0, i32 2
  %70 = call i32 @string_list_clear(i32* %69, i32 0)
  br label %71

71:                                               ; preds = %67, %62
  br label %99

72:                                               ; preds = %54
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %72
  %77 = load %struct.credential*, %struct.credential** %8, align 8
  %78 = getelementptr inbounds %struct.credential, %struct.credential* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @xstrdup(i8* %82)
  %84 = load %struct.credential*, %struct.credential** %8, align 8
  %85 = getelementptr inbounds %struct.credential, %struct.credential* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %81, %76
  br label %98

87:                                               ; preds = %72
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load i8*, i8** %5, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @git_config_bool(i8* %92, i8* %93)
  %95 = load %struct.credential*, %struct.credential** %8, align 8
  %96 = getelementptr inbounds %struct.credential, %struct.credential* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %91, %87
  br label %98

98:                                               ; preds = %97, %86
  br label %99

99:                                               ; preds = %98, %71
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %50, %23, %19
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @xmemdupz(i8*, i32) #1

declare dso_local i32 @credential_from_url(%struct.credential*, i8*) #1

declare dso_local i32 @credential_match(%struct.credential*, %struct.credential*) #1

declare dso_local i32 @credential_clear(%struct.credential*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @string_list_append(i32*, i8*) #1

declare dso_local i32 @string_list_clear(i32*, i32) #1

declare dso_local i64 @xstrdup(i8*) #1

declare dso_local i32 @git_config_bool(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
