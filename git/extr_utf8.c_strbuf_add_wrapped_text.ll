; ModuleID = '/home/carl/AnghaBench/git/extr_utf8.c_strbuf_add_wrapped_text.c'
source_filename = "/home/carl/AnghaBench/git/extr_utf8.c_strbuf_add_wrapped_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strbuf_add_wrapped_text(%struct.strbuf* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %13, align 4
  %21 = load i8*, i8** %7, align 8
  store i8* %21, i8** %16, align 8
  %22 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %23 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %17, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @strbuf_add_indented_text(%struct.strbuf* %28, i8* %29, i32 %30, i32 %31)
  br label %174

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %162, %33
  %35 = load i8*, i8** %7, align 8
  store i8* %35, i8** %14, align 8
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %11, align 4
  store i32 %36, i32* %12, align 4
  store i8* null, i8** %15, align 8
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %12, align 4
  %42 = load i8*, i8** %7, align 8
  store i8* %42, i8** %15, align 8
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %173, %150, %43
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @display_mode_esc_sequence_len(i8* %46)
  store i64 %47, i64* %19, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* %19, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %7, align 8
  br label %45

53:                                               ; preds = %45
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %18, align 1
  %56 = load i8, i8* %18, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8, i8* %18, align 1
  %60 = call i32 @isspace(i8 signext %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %151

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %15, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %139, label %69

69:                                               ; preds = %66, %62
  %70 = load i8*, i8** %14, align 8
  store i8* %70, i8** %20, align 8
  %71 = load i8, i8* %18, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %20, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %174

78:                                               ; preds = %73, %69
  %79 = load i8*, i8** %15, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i8*, i8** %15, align 8
  store i8* %82, i8** %20, align 8
  br label %87

83:                                               ; preds = %78
  %84 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @strbuf_addchars(%struct.strbuf* %84, i8 signext 32, i32 %85)
  br label %87

87:                                               ; preds = %83, %81
  %88 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %89 = load i8*, i8** %20, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %20, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @strbuf_add(%struct.strbuf* %88, i8* %89, i32 %95)
  %97 = load i8, i8* %18, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %87
  br label %174

100:                                              ; preds = %87
  %101 = load i8*, i8** %7, align 8
  store i8* %101, i8** %15, align 8
  %102 = load i8, i8* %18, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 9
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = or i32 %106, 7
  store i32 %107, i32* %12, align 4
  br label %134

108:                                              ; preds = %100
  %109 = load i8, i8* %18, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 10
  br i1 %111, label %112, label %133

112:                                              ; preds = %108
  %113 = load i8*, i8** %15, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %15, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 10
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %121 = call i32 @strbuf_addch(%struct.strbuf* %120, i8 signext 10)
  br label %140

122:                                              ; preds = %112
  %123 = load i8*, i8** %15, align 8
  %124 = load i8, i8* %123, align 1
  %125 = call i32 @isalnum(i8 signext %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  br label %140

128:                                              ; preds = %122
  %129 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %130 = call i32 @strbuf_addch(%struct.strbuf* %129, i8 signext 32)
  br label %131

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %108
  br label %134

134:                                              ; preds = %133, %105
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %7, align 8
  br label %150

139:                                              ; preds = %66
  br label %140

140:                                              ; preds = %139, %127, %119
  %141 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %142 = call i32 @strbuf_addch(%struct.strbuf* %141, i8 signext 10)
  %143 = load i8*, i8** %15, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = load i8, i8* %144, align 1
  %146 = call i32 @isspace(i8 signext %145)
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  store i8* %148, i8** %14, align 8
  store i8* %148, i8** %7, align 8
  store i8* null, i8** %15, align 8
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %11, align 4
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %140, %134
  br label %44

151:                                              ; preds = %58
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %168

154:                                              ; preds = %151
  %155 = call i64 @utf8_width(i8** %7, i32* null)
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %12, align 4
  %160 = load i8*, i8** %7, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %167, label %162

162:                                              ; preds = %154
  store i32 0, i32* %13, align 4
  %163 = load i8*, i8** %16, align 8
  store i8* %163, i8** %7, align 8
  %164 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %165 = load i64, i64* %17, align 8
  %166 = call i32 @strbuf_setlen(%struct.strbuf* %164, i64 %165)
  br label %34

167:                                              ; preds = %154
  br label %173

168:                                              ; preds = %151
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %7, align 8
  br label %173

173:                                              ; preds = %168, %167
  br label %44

174:                                              ; preds = %99, %77, %27
  ret void
}

declare dso_local i32 @strbuf_add_indented_text(%struct.strbuf*, i8*, i32, i32) #1

declare dso_local i64 @display_mode_esc_sequence_len(i8*) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i64 @utf8_width(i8**, i32*) #1

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
