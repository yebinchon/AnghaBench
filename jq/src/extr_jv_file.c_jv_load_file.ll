; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_file.c_jv_load_file.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_file.c_jv_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.jv_parser = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not open %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"It's a directory\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Error reading from %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_load_file(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.jv_parser*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4100 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 (i8*, i8*, ...) @jv_string_fmt(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %25)
  %27 = call i32 @jv_invalid_with_msg(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %172

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @fstat(i32 %29, %struct.stat* %6)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32, %28
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i8*, i8*, ...) @jv_string_fmt(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @jv_invalid_with_msg(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %172

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = call i32* @fdopen(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %45, i32** %8, align 8
  store %struct.jv_parser* null, %struct.jv_parser** %9, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @strerror(i32 %52)
  %54 = call i32 (i8*, i8*, ...) @jv_string_fmt(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %53)
  %55 = call i32 @jv_invalid_with_msg(i32 %54)
  store i32 %55, i32* %3, align 4
  br label %172

56:                                               ; preds = %43
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 @jv_string(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 %60, i32* %10, align 4
  br label %64

61:                                               ; preds = %56
  %62 = call i32 (...) @jv_array()
  store i32 %62, i32* %10, align 4
  %63 = call %struct.jv_parser* @jv_parser_new(i32 0)
  store %struct.jv_parser* %63, %struct.jv_parser** %9, align 8
  br label %64

64:                                               ; preds = %61, %59
  store i32 4, i32* %11, align 4
  br label %65

65:                                               ; preds = %148, %82, %64
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @feof(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @ferror(i32* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i1 [ false, %65 ], [ %73, %69 ]
  br i1 %75, label %76, label %149

76:                                               ; preds = %74
  %77 = getelementptr inbounds [4100 x i8], [4100 x i8]* %12, i64 0, i64 0
  %78 = load i32*, i32** %8, align 8
  %79 = call i64 @fread(i8* %77, i32 1, i32 4096, i32* %78)
  store i64 %79, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %80 = load i64, i64* %13, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %65

83:                                               ; preds = %76
  %84 = getelementptr inbounds [4100 x i8], [4100 x i8]* %12, i64 0, i64 0
  %85 = load i64, i64* %13, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = getelementptr inbounds [4100 x i8], [4100 x i8]* %12, i64 0, i64 0
  %89 = call i64 @jvp_utf8_backtrack(i8* %87, i8* %88, i32* %14)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %83
  %92 = load i32, i32* %14, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @feof(i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %94
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @ferror(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds [4100 x i8], [4100 x i8]* %12, i64 0, i64 0
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i32, i32* %14, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = call i64 @fread(i8* %105, i32 1, i32 %106, i32* %107)
  %109 = load i64, i64* %13, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %13, align 8
  br label %111

111:                                              ; preds = %102, %98, %94, %91, %83
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = getelementptr inbounds [4100 x i8], [4100 x i8]* %12, i64 0, i64 0
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @jv_string_append_buf(i32 %115, i8* %116, i64 %117)
  store i32 %118, i32* %10, align 4
  br label %148

119:                                              ; preds = %111
  %120 = load %struct.jv_parser*, %struct.jv_parser** %9, align 8
  %121 = getelementptr inbounds [4100 x i8], [4100 x i8]* %12, i64 0, i64 0
  %122 = load i64, i64* %13, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @feof(i32* %123)
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i32 @jv_parser_set_buf(%struct.jv_parser* %120, i8* %121, i64 %122, i32 %127)
  br label %129

129:                                              ; preds = %134, %119
  %130 = load %struct.jv_parser*, %struct.jv_parser** %9, align 8
  %131 = call i32 @jv_parser_next(%struct.jv_parser* %130)
  store i32 %131, i32* %15, align 4
  %132 = call i64 @jv_is_valid(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @jv_array_append(i32 %135, i32 %136)
  store i32 %137, i32* %10, align 4
  br label %129

138:                                              ; preds = %129
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @jv_copy(i32 %139)
  %141 = call i64 @jv_invalid_has_msg(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @jv_free(i32 %144)
  %146 = load i32, i32* %15, align 4
  store i32 %146, i32* %10, align 4
  br label %149

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147, %114
  br label %65

149:                                              ; preds = %143, %74
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load %struct.jv_parser*, %struct.jv_parser** %9, align 8
  %154 = call i32 @jv_parser_free(%struct.jv_parser* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %8, align 8
  %157 = call i32 @ferror(i32* %156)
  store i32 %157, i32* %16, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = call i64 @fclose(i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161, %155
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @jv_free(i32 %165)
  %167 = load i8*, i8** %4, align 8
  %168 = call i32 (i8*, i8*, ...) @jv_string_fmt(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %167)
  %169 = call i32 @jv_invalid_with_msg(i32 %168)
  store i32 %169, i32* %3, align 4
  br label %172

170:                                              ; preds = %161
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %164, %48, %37, %22
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @jv_invalid_with_msg(i32) #1

declare dso_local i32 @jv_string_fmt(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @jv_array(...) #1

declare dso_local %struct.jv_parser* @jv_parser_new(i32) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @ferror(i32*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @jvp_utf8_backtrack(i8*, i8*, i32*) #1

declare dso_local i32 @jv_string_append_buf(i32, i8*, i64) #1

declare dso_local i32 @jv_parser_set_buf(%struct.jv_parser*, i8*, i64, i32) #1

declare dso_local i64 @jv_is_valid(i32) #1

declare dso_local i32 @jv_parser_next(%struct.jv_parser*) #1

declare dso_local i32 @jv_array_append(i32, i32) #1

declare dso_local i64 @jv_invalid_has_msg(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_parser_free(%struct.jv_parser*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
