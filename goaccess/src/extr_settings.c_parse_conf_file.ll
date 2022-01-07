; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_settings.c_parse_conf_file.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_settings.c_parse_conf_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@MAX_LINE_CONF = common dso_local global i32 0, align 4
@nargc = common dso_local global i32 0, align 4
@nargv = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Malformed config key at line: %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Malformed config value at line: %d\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"--%s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_conf_file(i32* %0, i8*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8*** %1, i8**** %5, align 8
  %17 = load i32, i32* @MAX_LINE_CONF, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %14, align 4
  %22 = load i8***, i8**** %5, align 8
  %23 = getelementptr inbounds i8**, i8*** %22, i64 0
  %24 = load i8**, i8*** %23, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @xstrdup(i8* %25)
  %27 = call i32 @append_to_argv(i32* @nargc, i64* @nargv, i8* %26)
  %28 = call i8* (...) @get_config_file_path()
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOENT, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

33:                                               ; preds = %2
  %34 = load i8*, i8** %8, align 8
  %35 = call i32* @fopen(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %35, i32** %12, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %139, %123, %101, %81, %41
  %43 = trunc i64 %19 to i32
  %44 = load i32*, i32** %12, align 8
  %45 = call i32* @fgets(i8* %21, i32 %43, i32* %44)
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %140

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %60, %47
  %49 = getelementptr inbounds i8, i8* %21, i64 0
  %50 = load i8, i8* %49, align 16
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, i8* %21, i64 0
  %55 = load i8, i8* %54, align 16
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 9
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ true, %48 ], [ %57, %53 ]
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  %61 = getelementptr inbounds i8, i8* %21, i64 1
  %62 = call i64 @strlen(i8* %21)
  %63 = call i32 @memmove(i8* %21, i8* %61, i64 %62)
  br label %48

64:                                               ; preds = %58
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  %67 = getelementptr inbounds i8, i8* %21, i64 0
  %68 = load i8, i8* %67, align 16
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %81, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds i8, i8* %21, i64 0
  %73 = load i8, i8* %72, align 16
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 13
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds i8, i8* %21, i64 0
  %78 = load i8, i8* %77, align 16
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 35
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %71, %64
  br label %42

82:                                               ; preds = %76
  %83 = call i64 @strcspn(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %83, i64* %15, align 8
  %84 = call i64 @strlen(i8* %21)
  %85 = load i64, i64* %15, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @FATAL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i64, i64* %15, align 8
  %92 = getelementptr inbounds i8, i8* %21, i64 %91
  store i8 0, i8* %92, align 1
  br label %93

93:                                               ; preds = %96, %90
  %94 = call i8* @strpbrk(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %94, i8** %11, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i8*, i8** %11, align 8
  store i8 45, i8* %97, align 1
  br label %93

98:                                               ; preds = %93
  %99 = call i64 @in_ignore_cmd_opts(i8* %21)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %42

102:                                              ; preds = %98
  %103 = load i64, i64* %15, align 8
  %104 = add i64 %103, 1
  %105 = getelementptr inbounds i8, i8* %21, i64 %104
  store i8* %105, i8** %9, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i64 @strspn(i8* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %107, i64* %15, align 8
  %108 = call i64 @strlen(i8* %21)
  %109 = load i64, i64* %15, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @FATAL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %102
  %115 = load i8*, i8** %9, align 8
  %116 = load i64, i64* %15, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %9, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = call i8* @trim_str(i8* %118)
  store i8* %119, i8** %9, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %42

124:                                              ; preds = %114
  %125 = call i64 @snprintf(i32* null, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %21)
  %126 = add nsw i64 %125, 1
  %127 = call i8* @xmalloc(i64 %126)
  store i8* %127, i8** %10, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 @sprintf(i8* %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %21)
  %130 = load i8*, i8** %10, align 8
  %131 = call i32 @append_to_argv(i32* @nargc, i64* @nargv, i8* %130)
  %132 = load i8*, i8** %9, align 8
  %133 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %124
  %136 = load i8*, i8** %9, align 8
  %137 = call i8* @xstrdup(i8* %136)
  %138 = call i32 @append_to_argv(i32* @nargc, i64* @nargv, i8* %137)
  br label %139

139:                                              ; preds = %135, %124
  br label %42

140:                                              ; preds = %42
  store i32 1, i32* %13, align 4
  br label %141

141:                                              ; preds = %155, %140
  %142 = load i32, i32* %13, align 4
  %143 = load i32*, i32** %4, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load i8***, i8**** %5, align 8
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @xstrdup(i8* %152)
  %154 = call i32 @append_to_argv(i32* @nargc, i64* @nargv, i8* %153)
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %141

158:                                              ; preds = %141
  %159 = load i32, i32* @nargc, align 4
  %160 = load i32*, i32** %4, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i64, i64* @nargv, align 8
  %162 = inttoptr i64 %161 to i8**
  %163 = load i8***, i8**** %5, align 8
  store i8** %162, i8*** %163, align 8
  %164 = load i32*, i32** %12, align 8
  %165 = call i32 @fclose(i32* %164)
  %166 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %158
  %169 = load i8*, i8** %8, align 8
  %170 = call i8* @xstrdup(i8* %169)
  store i8* %170, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  br label %171

171:                                              ; preds = %168, %158
  %172 = load i8*, i8** %8, align 8
  %173 = call i32 @free(i8* %172)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %174

174:                                              ; preds = %171, %37, %31
  %175 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @append_to_argv(i32*, i64*, i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i8* @get_config_file_path(...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strcspn(i8*, i8*) #2

declare dso_local i32 @FATAL(i8*, i32) #2

declare dso_local i8* @strpbrk(i8*, i8*) #2

declare dso_local i64 @in_ignore_cmd_opts(i8*) #2

declare dso_local i64 @strspn(i8*, i8*) #2

declare dso_local i8* @trim_str(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @xmalloc(i64) #2

declare dso_local i64 @snprintf(i32*, i32, i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
