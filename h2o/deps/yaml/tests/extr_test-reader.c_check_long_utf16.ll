; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_test-reader.c_check_long_utf16.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_test-reader.c_check_long_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"checking a long utf16 sequence...\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\09reader error: %s at %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\09not enough characters at %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\09incorrect UTF-8 sequence: %X %X instead of %X %X\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\09expected NUL, found %X (eof=%d, unread=%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"checking a long utf16 sequence: %d fail(s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_long_utf16() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @LONG, align 4
  %9 = mul nsw i32 %8, 2
  %10 = add nsw i32 2, %9
  %11 = call i8* @malloc(i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @assert(i8* %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8 -1, i8* %19, align 1
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8 -2, i8* %24, align 1
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %56, %0
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @LONG, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = srem i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8 16, i8* %38, align 1
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 4, i8* %43, align 1
  br label %55

44:                                               ; preds = %29
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 47, i8* %49, align 1
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 4, i8* %54, align 1
  br label %55

55:                                               ; preds = %44, %33
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %25

59:                                               ; preds = %25
  %60 = call i32 @yaml_parser_initialize(%struct.TYPE_8__* %1)
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* @LONG, align 4
  %63 = mul nsw i32 %62, 2
  %64 = add nsw i32 2, %63
  %65 = call i32 @yaml_parser_set_input_string(%struct.TYPE_8__* %1, i8* %61, i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %143, %59
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @LONG, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %146

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  %75 = call i32 @yaml_parser_update_buffer(%struct.TYPE_8__* %1, i32 1)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %81)
  store i32 1, i32* %4, align 4
  br label %146

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %70
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %2, align 4
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  store i32 1, i32* %4, align 4
  br label %146

91:                                               ; preds = %84
  %92 = load i32, i32* %2, align 4
  %93 = srem i32 %92, 2
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i8 -48, i8* %5, align 1
  store i8 -112, i8* %6, align 1
  br label %97

96:                                               ; preds = %91
  store i8 -48, i8* %5, align 1
  store i8 -81, i8* %6, align 1
  br label %97

97:                                               ; preds = %96, %95
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* %5, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %117, label %107

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* %6, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %107, %97
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* %5, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8, i8* %6, align 1
  %133 = zext i8 %132 to i32
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %123, i32 %129, i32 %131, i32 %133)
  store i32 1, i32* %4, align 4
  br label %146

135:                                              ; preds = %107
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  store i8* %139, i8** %137, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %2, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %2, align 4
  br label %66

146:                                              ; preds = %117, %88, %77, %66
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %180, label %149

149:                                              ; preds = %146
  %150 = call i32 @yaml_parser_update_buffer(%struct.TYPE_8__* %1, i32 1)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %154, i32 %156)
  store i32 1, i32* %4, align 4
  br label %179

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %172, i32 %174, i32 %176)
  store i32 1, i32* %4, align 4
  br label %178

178:                                              ; preds = %166, %158
  br label %179

179:                                              ; preds = %178, %152
  br label %180

180:                                              ; preds = %179, %146
  %181 = call i32 @yaml_parser_delete(%struct.TYPE_8__* %1)
  %182 = load i8*, i8** %7, align 8
  %183 = call i32 @free(i8* %182)
  %184 = load i32, i32* %4, align 4
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @yaml_parser_initialize(%struct.TYPE_8__*) #1

declare dso_local i32 @yaml_parser_set_input_string(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @yaml_parser_update_buffer(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @yaml_parser_delete(%struct.TYPE_8__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
