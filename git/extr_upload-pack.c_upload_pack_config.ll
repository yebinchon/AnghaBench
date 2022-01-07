; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_upload_pack_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_upload_pack_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"uploadpack.allowtipsha1inwant\00", align 1
@ALLOW_TIP_SHA1 = common dso_local global i32 0, align 4
@allow_unadvertised_object_request = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"uploadpack.allowreachablesha1inwant\00", align 1
@ALLOW_REACHABLE_SHA1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"uploadpack.allowanysha1inwant\00", align 1
@ALLOW_ANY_SHA1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"uploadpack.keepalive\00", align 1
@keepalive = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"uploadpack.allowfilter\00", align 1
@allow_filter = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"uploadpack.allowrefinwant\00", align 1
@allow_ref_in_want = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"uploadpack.allowsidebandall\00", align 1
@allow_sideband_all = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"core.precomposeunicode\00", align 1
@precomposed_unicode = common dso_local global i8* null, align 8
@CONFIG_SCOPE_REPO = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"uploadpack.packobjectshook\00", align 1
@pack_objects_hook = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"uploadpack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @upload_pack_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload_pack_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strcmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @git_config_bool(i8* %12, i8* %13)
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @ALLOW_TIP_SHA1, align 4
  %18 = load i32, i32* @allow_unadvertised_object_request, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @allow_unadvertised_object_request, align 4
  br label %25

20:                                               ; preds = %11
  %21 = load i32, i32* @ALLOW_TIP_SHA1, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* @allow_unadvertised_object_request, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* @allow_unadvertised_object_request, align 4
  br label %25

25:                                               ; preds = %20, %16
  br label %115

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcmp(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @git_config_bool(i8* %31, i8* %32)
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @ALLOW_REACHABLE_SHA1, align 4
  %37 = load i32, i32* @allow_unadvertised_object_request, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* @allow_unadvertised_object_request, align 4
  br label %44

39:                                               ; preds = %30
  %40 = load i32, i32* @ALLOW_REACHABLE_SHA1, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* @allow_unadvertised_object_request, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* @allow_unadvertised_object_request, align 4
  br label %44

44:                                               ; preds = %39, %35
  br label %114

45:                                               ; preds = %26
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @strcmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @git_config_bool(i8* %50, i8* %51)
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @ALLOW_ANY_SHA1, align 4
  %56 = load i32, i32* @allow_unadvertised_object_request, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* @allow_unadvertised_object_request, align 4
  br label %63

58:                                               ; preds = %49
  %59 = load i32, i32* @ALLOW_ANY_SHA1, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* @allow_unadvertised_object_request, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* @allow_unadvertised_object_request, align 4
  br label %63

63:                                               ; preds = %58, %54
  br label %113

64:                                               ; preds = %45
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @strcmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @git_config_int(i8* %69, i8* %70)
  store i32 %71, i32* @keepalive, align 4
  %72 = load i32, i32* @keepalive, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  store i32 -1, i32* @keepalive, align 4
  br label %75

75:                                               ; preds = %74, %68
  br label %112

76:                                               ; preds = %64
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @strcmp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i8* @git_config_bool(i8* %81, i8* %82)
  store i8* %83, i8** @allow_filter, align 8
  br label %111

84:                                               ; preds = %76
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @strcmp(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %5, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i8* @git_config_bool(i8* %89, i8* %90)
  store i8* %91, i8** @allow_ref_in_want, align 8
  br label %110

92:                                               ; preds = %84
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @strcmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** %5, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = call i8* @git_config_bool(i8* %97, i8* %98)
  store i8* %99, i8** @allow_sideband_all, align 8
  br label %109

100:                                              ; preds = %92
  %101 = load i8*, i8** %5, align 8
  %102 = call i32 @strcmp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i8*, i8** %5, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i8* @git_config_bool(i8* %105, i8* %106)
  store i8* %107, i8** @precomposed_unicode, align 8
  br label %108

108:                                              ; preds = %104, %100
  br label %109

109:                                              ; preds = %108, %96
  br label %110

110:                                              ; preds = %109, %88
  br label %111

111:                                              ; preds = %110, %80
  br label %112

112:                                              ; preds = %111, %75
  br label %113

113:                                              ; preds = %112, %63
  br label %114

114:                                              ; preds = %113, %44
  br label %115

115:                                              ; preds = %114, %25
  %116 = call i64 (...) @current_config_scope()
  %117 = load i64, i64* @CONFIG_SCOPE_REPO, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i8*, i8** %5, align 8
  %121 = call i32 @strcmp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i8*, i8** %5, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @git_config_string(i32* @pack_objects_hook, i8* %124, i8* %125)
  store i32 %126, i32* %4, align 4
  br label %132

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %115
  %129 = load i8*, i8** %5, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @parse_hide_refs_config(i8* %129, i8* %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i32 @git_config_int(i8*, i8*) #1

declare dso_local i64 @current_config_scope(...) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i32 @parse_hide_refs_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
