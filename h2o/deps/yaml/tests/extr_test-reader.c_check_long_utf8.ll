; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_test-reader.c_check_long_utf8.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_test-reader.c_check_long_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"checking a long utf8 sequence...\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\09reader error: %s at %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\09not enough characters at %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\09incorrect UTF-8 sequence: %X %X instead of %X %X\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\09expected NUL, found %X (eof=%d, unread=%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"checking a long utf8 sequence: %d fail(s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_long_utf8() #0 {
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
  %10 = add nsw i32 3, %9
  %11 = call i8* @malloc(i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @assert(i8* %12)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %15, i64 %18
  store i8 -17, i8* %19, align 1
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8 -69, i8* %24, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8 -65, i8* %29, align 1
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %61, %0
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @LONG, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = srem i32 %35, 2
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8 -48, i8* %43, align 1
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 -112, i8* %48, align 1
  br label %60

49:                                               ; preds = %34
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 -48, i8* %54, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8 -81, i8* %59, align 1
  br label %60

60:                                               ; preds = %49, %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %30

64:                                               ; preds = %30
  %65 = call i32 @yaml_parser_initialize(%struct.TYPE_8__* %1)
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* @LONG, align 4
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 3, %68
  %70 = call i32 @yaml_parser_set_input_string(%struct.TYPE_8__* %1, i8* %66, i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %148, %64
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @LONG, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %151

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = call i32 @yaml_parser_update_buffer(%struct.TYPE_8__* %1, i32 1)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %84, i32 %86)
  store i32 1, i32* %4, align 4
  br label %151

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %75
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %2, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  store i32 1, i32* %4, align 4
  br label %151

96:                                               ; preds = %89
  %97 = load i32, i32* %2, align 4
  %98 = srem i32 %97, 2
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i8 -48, i8* %5, align 1
  store i8 -112, i8* %6, align 1
  br label %102

101:                                              ; preds = %96
  store i8 -48, i8* %5, align 1
  store i8 -81, i8* %6, align 1
  br label %102

102:                                              ; preds = %101, %100
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8, i8* %5, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %122, label %112

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* %6, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %140

122:                                              ; preds = %112, %102
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8, i8* %5, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8, i8* %6, align 1
  %138 = zext i8 %137 to i32
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %134, i32 %136, i32 %138)
  store i32 1, i32* %4, align 4
  br label %151

140:                                              ; preds = %112
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 2
  store i8* %144, i8** %142, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %140
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %2, align 4
  br label %71

151:                                              ; preds = %122, %93, %82, %71
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %185, label %154

154:                                              ; preds = %151
  %155 = call i32 @yaml_parser_update_buffer(%struct.TYPE_8__* %1, i32 1)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %159, i32 %161)
  store i32 1, i32* %4, align 4
  br label %184

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %177, i32 %179, i32 %181)
  store i32 1, i32* %4, align 4
  br label %183

183:                                              ; preds = %171, %163
  br label %184

184:                                              ; preds = %183, %157
  br label %185

185:                                              ; preds = %184, %151
  %186 = call i32 @yaml_parser_delete(%struct.TYPE_8__* %1)
  %187 = load i8*, i8** %7, align 8
  %188 = call i32 @free(i8* %187)
  %189 = load i32, i32* %4, align 4
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %4, align 4
  ret i32 %191
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
