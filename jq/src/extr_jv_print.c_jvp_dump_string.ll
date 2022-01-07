; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_print.c_jvp_dump_string.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_print.c_jvp_dump_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"\\u%04x\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\\u%04x\\u%04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, i32)* @jvp_dump_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jvp_dump_string(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @jv_get_kind(i32 %17)
  %19 = load i64, i64* @JV_KIND_STRING, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i8* @jv_string_value(i32 %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @jv_copy(i32 %26)
  %28 = call i32 @jv_string_length_bytes(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8* %30, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @put_char(i8 signext 34, i32* %31, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %169, %5
  %36 = load i8*, i8** %11, align 8
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = call i8* @jvp_utf8_next(i8* %36, i8* %37, i32* %14)
  store i8* %38, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %170

40:                                               ; preds = %35
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  store i32 0, i32* %16, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp sle i32 32, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  %49 = icmp sle i32 %48, 126
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  %52 = icmp eq i32 %51, 34
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = icmp eq i32 %54, 92
  br i1 %55, label %56, label %61

56:                                               ; preds = %53, %50
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @put_char(i8 signext 92, i32* %57, i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %14, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @put_char(i8 signext %63, i32* %64, i32* %65, i32 %66)
  br label %141

68:                                               ; preds = %47, %40
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 32
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, 127
  br i1 %73, label %74, label %123

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %14, align 4
  switch i32 %75, label %121 [
    i32 8, label %76
    i32 9, label %85
    i32 13, label %94
    i32 10, label %103
    i32 12, label %112
  ]

76:                                               ; preds = %74
  %77 = load i32*, i32** %8, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @put_char(i8 signext 92, i32* %77, i32* %78, i32 %79)
  %81 = load i32*, i32** %8, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @put_char(i8 signext 98, i32* %81, i32* %82, i32 %83)
  br label %122

85:                                               ; preds = %74
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @put_char(i8 signext 92, i32* %86, i32* %87, i32 %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @put_char(i8 signext 116, i32* %90, i32* %91, i32 %92)
  br label %122

94:                                               ; preds = %74
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @put_char(i8 signext 92, i32* %95, i32* %96, i32 %97)
  %99 = load i32*, i32** %8, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @put_char(i8 signext 114, i32* %99, i32* %100, i32 %101)
  br label %122

103:                                              ; preds = %74
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @put_char(i8 signext 92, i32* %104, i32* %105, i32 %106)
  %108 = load i32*, i32** %8, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @put_char(i8 signext 110, i32* %108, i32* %109, i32 %110)
  br label %122

112:                                              ; preds = %74
  %113 = load i32*, i32** %8, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @put_char(i8 signext 92, i32* %113, i32* %114, i32 %115)
  %117 = load i32*, i32** %8, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @put_char(i8 signext 102, i32* %117, i32* %118, i32 %119)
  br label %122

121:                                              ; preds = %74
  store i32 1, i32* %16, align 4
  br label %122

122:                                              ; preds = %121, %112, %103, %94, %85, %76
  br label %140

123:                                              ; preds = %71
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i32 1, i32* %16, align 4
  br label %139

127:                                              ; preds = %123
  %128 = load i8*, i8** %13, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = load i32*, i32** %8, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @put_buf(i8* %128, i32 %134, i32* %135, i32* %136, i32 %137)
  br label %139

139:                                              ; preds = %127, %126
  br label %140

140:                                              ; preds = %139, %122
  br label %141

141:                                              ; preds = %140, %61
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %169

144:                                              ; preds = %141
  %145 = load i32, i32* %14, align 4
  %146 = icmp sle i32 %145, 65535
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %149 = load i32, i32* %14, align 4
  %150 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %148, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %149)
  br label %163

151:                                              ; preds = %144
  %152 = load i32, i32* %14, align 4
  %153 = sub nsw i32 %152, 65536
  store i32 %153, i32* %14, align 4
  %154 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %155 = load i32, i32* %14, align 4
  %156 = and i32 %155, 1047552
  %157 = ashr i32 %156, 10
  %158 = or i32 55296, %157
  %159 = load i32, i32* %14, align 4
  %160 = and i32 %159, 1023
  %161 = or i32 56320, %160
  %162 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %154, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %151, %147
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %165 = load i32*, i32** %8, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @put_str(i8* %164, i32* %165, i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %163, %141
  br label %35

170:                                              ; preds = %35
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, -1
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = load i32*, i32** %8, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @put_char(i8 signext 34, i32* %175, i32* %176, i32 %177)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @put_char(i8 signext, i32*, i32*, i32) #1

declare dso_local i8* @jvp_utf8_next(i8*, i8*, i32*) #1

declare dso_local i32 @put_buf(i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @put_str(i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
