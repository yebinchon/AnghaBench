; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_schema_split.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_schema_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32 }
%struct.tl_buffer = type { i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"---functions---\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"too many ---functions--- sections\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"expected ---functions---\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"illegal first expression's character (%c)\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"expected second slash, but %c found\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"last expression doesn't end by semicolon\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"found EOF, but expected second slash\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"don't find section '---functions---'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tl_compiler*, i8*)* @tl_schema_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tl_schema_split(%struct.tl_compiler* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_compiler*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tl_buffer, align 8
  %9 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 @tl_string_buffer_init(%struct.tl_buffer* %8)
  store i32 128, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  br label %12

12:                                               ; preds = %143, %2
  %13 = load i8*, i8** %7, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %146

16:                                               ; preds = %12
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %142 [
    i32 128, label %18
    i32 131, label %82
    i32 129, label %98
    i32 130, label %105
  ]

18:                                               ; preds = %16
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @isspace(i8 signext %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %81

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 47
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 131, i32* %9, align 4
  br label %80

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @isalpha(i8 signext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %8, i32 0, i32 1
  store i32 0, i32* %36, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %8, i8 signext %38)
  store i32 130, i32* %9, align 4
  br label %79

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 15)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = call i32 @tl_string_buffer_free(%struct.tl_buffer* %8)
  %55 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (%struct.tl_compiler*, i8*, i8*, i8*, ...) @tl_failfp(%struct.tl_compiler* %55, i8* %56, i8* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 %58, i32* %3, align 4
  br label %172

59:                                               ; preds = %49
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 14
  store i8* %61, i8** %7, align 8
  br label %68

62:                                               ; preds = %45
  %63 = call i32 @tl_string_buffer_free(%struct.tl_buffer* %8)
  %64 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 (%struct.tl_compiler*, i8*, i8*, i8*, ...) @tl_failfp(%struct.tl_compiler* %64, i8* %65, i8* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 %67, i32* %3, align 4
  br label %172

68:                                               ; preds = %59
  br label %78

69:                                               ; preds = %40
  %70 = call i32 @tl_string_buffer_free(%struct.tl_buffer* %8)
  %71 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = call i32 (%struct.tl_compiler*, i8*, i8*, i8*, ...) @tl_failfp(%struct.tl_compiler* %71, i8* %72, i8* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  store i32 %77, i32* %3, align 4
  br label %172

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %35
  br label %80

80:                                               ; preds = %79, %29
  br label %81

81:                                               ; preds = %80, %23
  br label %142

82:                                               ; preds = %16
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 47
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 129, i32* %9, align 4
  br label %97

88:                                               ; preds = %82
  %89 = call i32 @tl_string_buffer_free(%struct.tl_buffer* %8)
  %90 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = call i32 (%struct.tl_compiler*, i8*, i8*, i8*, ...) @tl_failfp(%struct.tl_compiler* %90, i8* %91, i8* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  store i32 %96, i32* %3, align 4
  br label %172

97:                                               ; preds = %87
  br label %142

98:                                               ; preds = %16
  %99 = load i8*, i8** %7, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 128, i32* %9, align 4
  br label %104

104:                                              ; preds = %103, %98
  br label %142

105:                                              ; preds = %16
  %106 = load i8*, i8** %7, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 59
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %8, i8 signext 0)
  %112 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %8, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @tl_add_expression(%struct.tl_compiler* %112, i32 %113, i8* %115)
  store i32 128, i32* %9, align 4
  br label %141

117:                                              ; preds = %105
  %118 = load i8*, i8** %7, align 8
  %119 = load i8, i8* %118, align 1
  %120 = call i32 @isspace(i8 signext %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %8, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %8, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 32, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %8, i8 signext 32)
  br label %135

135:                                              ; preds = %133, %122
  br label %140

136:                                              ; preds = %117
  %137 = load i8*, i8** %7, align 8
  %138 = load i8, i8* %137, align 1
  %139 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %8, i8 signext %138)
  br label %140

140:                                              ; preds = %136, %135
  br label %141

141:                                              ; preds = %140, %110
  br label %142

142:                                              ; preds = %16, %141, %104, %97, %81
  br label %143

143:                                              ; preds = %142
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %7, align 8
  br label %12

146:                                              ; preds = %12
  %147 = call i32 @tl_string_buffer_free(%struct.tl_buffer* %8)
  %148 = load i32, i32* %9, align 4
  %149 = icmp eq i32 %148, 130
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = call i32 (%struct.tl_compiler*, i8*, i8*, i8*, ...) @tl_failfp(%struct.tl_compiler* %151, i8* %152, i8* %153, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 %154, i32* %3, align 4
  br label %172

155:                                              ; preds = %146
  %156 = load i32, i32* %9, align 4
  %157 = icmp eq i32 %156, 131
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 (%struct.tl_compiler*, i8*, i8*, i8*, ...) @tl_failfp(%struct.tl_compiler* %159, i8* %160, i8* %161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  store i32 %162, i32* %3, align 4
  br label %172

163:                                              ; preds = %155
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %163
  %167 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %168 = load i8*, i8** %5, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 (%struct.tl_compiler*, i8*, i8*, i8*, ...) @tl_failfp(%struct.tl_compiler* %167, i8* %168, i8* %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  store i32 %170, i32* %3, align 4
  br label %172

171:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %166, %158, %150, %88, %69, %62, %53
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @tl_string_buffer_init(%struct.tl_buffer*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i32 @tl_string_buffer_append_char(%struct.tl_buffer*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @tl_string_buffer_free(%struct.tl_buffer*) #1

declare dso_local i32 @tl_failfp(%struct.tl_compiler*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @tl_add_expression(%struct.tl_compiler*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
