; ModuleID = '/home/carl/AnghaBench/git/extr_credential.c_credential_read.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential.c_credential_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.credential = type { i32, i8*, i8*, i8*, i8*, i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"invalid credential line: %s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"quit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @credential_read(%struct.credential* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.credential*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.credential* %0, %struct.credential** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  br label %10

10:                                               ; preds = %125, %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @strbuf_getline_lf(%struct.strbuf* %6, i32* %11)
  %13 = load i64, i64* @EOF, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %126

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 61)
  store i8* %19, i8** %8, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  br label %126

24:                                               ; preds = %15
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 -1, i32* %3, align 4
  br label %128

31:                                               ; preds = %24
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  store i8 0, i8* %32, align 1
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load %struct.credential*, %struct.credential** %4, align 8
  %39 = getelementptr inbounds %struct.credential, %struct.credential* %38, i32 0, i32 5
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i8*, i8** %8, align 8
  %43 = call i8* @xstrdup(i8* %42)
  %44 = load %struct.credential*, %struct.credential** %4, align 8
  %45 = getelementptr inbounds %struct.credential, %struct.credential* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  br label %125

46:                                               ; preds = %31
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load %struct.credential*, %struct.credential** %4, align 8
  %52 = getelementptr inbounds %struct.credential, %struct.credential* %51, i32 0, i32 4
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i8*, i8** %8, align 8
  %56 = call i8* @xstrdup(i8* %55)
  %57 = load %struct.credential*, %struct.credential** %4, align 8
  %58 = getelementptr inbounds %struct.credential, %struct.credential* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  br label %124

59:                                               ; preds = %46
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load %struct.credential*, %struct.credential** %4, align 8
  %65 = getelementptr inbounds %struct.credential, %struct.credential* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i8*, i8** %8, align 8
  %69 = call i8* @xstrdup(i8* %68)
  %70 = load %struct.credential*, %struct.credential** %4, align 8
  %71 = getelementptr inbounds %struct.credential, %struct.credential* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  br label %123

72:                                               ; preds = %59
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load %struct.credential*, %struct.credential** %4, align 8
  %78 = getelementptr inbounds %struct.credential, %struct.credential* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i8*, i8** %8, align 8
  %82 = call i8* @xstrdup(i8* %81)
  %83 = load %struct.credential*, %struct.credential** %4, align 8
  %84 = getelementptr inbounds %struct.credential, %struct.credential* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  br label %122

85:                                               ; preds = %72
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %85
  %90 = load %struct.credential*, %struct.credential** %4, align 8
  %91 = getelementptr inbounds %struct.credential, %struct.credential* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @free(i8* %92)
  %94 = load i8*, i8** %8, align 8
  %95 = call i8* @xstrdup(i8* %94)
  %96 = load %struct.credential*, %struct.credential** %4, align 8
  %97 = getelementptr inbounds %struct.credential, %struct.credential* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  br label %121

98:                                               ; preds = %85
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load %struct.credential*, %struct.credential** %4, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @credential_from_url(%struct.credential* %103, i8* %104)
  br label %120

106:                                              ; preds = %98
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @git_config_bool(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %111)
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = load %struct.credential*, %struct.credential** %4, align 8
  %118 = getelementptr inbounds %struct.credential, %struct.credential* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %110, %106
  br label %120

120:                                              ; preds = %119, %102
  br label %121

121:                                              ; preds = %120, %89
  br label %122

122:                                              ; preds = %121, %76
  br label %123

123:                                              ; preds = %122, %63
  br label %124

124:                                              ; preds = %123, %50
  br label %125

125:                                              ; preds = %124, %37
  br label %10

126:                                              ; preds = %23, %10
  %127 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %27
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_getline_lf(%struct.strbuf*, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @warning(i8*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @credential_from_url(%struct.credential*, i8*) #2

declare dso_local i32 @git_config_bool(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
