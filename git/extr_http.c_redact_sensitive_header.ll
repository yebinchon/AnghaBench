; ModuleID = '/home/carl/AnghaBench/git/extr_http.c_redact_sensitive_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_http.c_redact_sensitive_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Authorization:\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Proxy-Authorization:\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" <redacted>\00", align 1
@cookies_to_redact = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Cookie:\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"=<redacted>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @redact_sensitive_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redact_sensitive_header(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %9 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @skip_prefix(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @skip_prefix(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %3)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %57

19:                                               ; preds = %13, %1
  br label %20

20:                                               ; preds = %25, %19
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isspace(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  br label %20

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @isspace(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi i1 [ false, %29 ], [ %39, %34 ]
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  br label %29

45:                                               ; preds = %40
  %46 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, i8* %47, i64 %52
  %54 = call i32 @strbuf_setlen(%struct.strbuf* %46, i8* %53)
  %55 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %56 = call i32 @strbuf_addstr(%struct.strbuf* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %133

57:                                               ; preds = %13
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cookies_to_redact, i32 0, i32 0), align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %132

60:                                               ; preds = %57
  %61 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %62 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @skip_prefix(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %3)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %132

66:                                               ; preds = %60
  %67 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  br label %68

68:                                               ; preds = %73, %66
  %69 = load i8*, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isspace(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %3, align 8
  br label %68

76:                                               ; preds = %68
  %77 = load i8*, i8** %3, align 8
  store i8* %77, i8** %5, align 8
  br label %78

78:                                               ; preds = %119, %93, %76
  %79 = load i8*, i8** %5, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %120

81:                                               ; preds = %78
  %82 = load i8*, i8** %5, align 8
  %83 = call i8* @strstr(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %83, i8** %7, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i8*, i8** %7, align 8
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i8*, i8** %5, align 8
  %90 = call i8* @strchrnul(i8* %89, i8 signext 61)
  store i8* %90, i8** %6, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* %94)
  br label %78

96:                                               ; preds = %88
  %97 = load i8*, i8** %6, align 8
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %5, align 8
  %99 = call i64 @string_list_lookup(%struct.TYPE_3__* @cookies_to_redact, i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* %102)
  %104 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %109

105:                                              ; preds = %96
  %106 = load i8*, i8** %6, align 8
  store i8 61, i8* %106, align 1
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* %107)
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i8*, i8** %7, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = call i32 @strbuf_addstr(%struct.strbuf* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8* %117, i8** %5, align 8
  br label %119

118:                                              ; preds = %109
  store i8* null, i8** %5, align 8
  br label %119

119:                                              ; preds = %118, %112
  br label %78

120:                                              ; preds = %78
  %121 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %122 = load i8*, i8** %3, align 8
  %123 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %124 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i8, i8* %122, i64 %127
  %129 = call i32 @strbuf_setlen(%struct.strbuf* %121, i8* %128)
  %130 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %131 = call i32 @strbuf_addbuf(%struct.strbuf* %130, %struct.strbuf* %4)
  br label %132

132:                                              ; preds = %120, %60, %57
  br label %133

133:                                              ; preds = %132, %45
  ret void
}

declare dso_local i64 @skip_prefix(i32, i8*, i8**) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i64 @string_list_lookup(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
