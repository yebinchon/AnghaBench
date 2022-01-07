; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_pretty_print_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_pretty_print_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pretty_print_context = type { i32, i64, i32 }
%struct.commit = type { i32 }
%struct.strbuf = type { i64 }

@CMIT_FMT_USERFORMAT = common dso_local global i64 0, align 8
@user_format = common dso_local global i32 0, align 4
@CMIT_FMT_ONELINE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pretty_print_commit(%struct.pretty_print_context* %0, %struct.commit* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.pretty_print_context*, align 8
  %5 = alloca %struct.commit*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pretty_print_context* %0, %struct.pretty_print_context** %4, align 8
  store %struct.commit* %1, %struct.commit** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  store i32 4, i32* %8, align 4
  %16 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %17 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %12, align 4
  %19 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %20 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CMIT_FMT_USERFORMAT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.commit*, %struct.commit** %5, align 8
  %26 = load i32, i32* @user_format, align 4
  %27 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %28 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %29 = call i32 @format_commit_message(%struct.commit* %25, i32 %26, %struct.strbuf* %27, %struct.pretty_print_context* %28)
  br label %176

30:                                               ; preds = %3
  %31 = call i8* (...) @get_log_output_encoding()
  store i8* %31, i8** %11, align 8
  %32 = load %struct.commit*, %struct.commit** %5, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i8* @logmsg_reencode(%struct.commit* %32, i32* null, i8* %33)
  store i8* %34, i8** %10, align 8
  store i8* %34, i8** %9, align 8
  %35 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %36 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CMIT_FMT_ONELINE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %42 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @cmit_fmt_is_mail(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %30
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %49 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @cmit_fmt_is_mail(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %93

56:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %57

57:                                               ; preds = %89, %56
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %57
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 1, i32* %15, align 4
  br label %81

81:                                               ; preds = %80, %71, %68
  br label %88

82:                                               ; preds = %65
  %83 = load i32, i32* %14, align 4
  %84 = call i64 @non_ascii(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 1, i32* %12, align 4
  br label %92

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %81
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %57

92:                                               ; preds = %86, %57
  br label %93

93:                                               ; preds = %92, %53, %47
  %94 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.commit*, %struct.commit** %5, align 8
  %97 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %98 = call i32 @pp_header(%struct.pretty_print_context* %94, i8* %95, %struct.commit* %96, i8** %9, %struct.strbuf* %97)
  %99 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %100 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CMIT_FMT_ONELINE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %93
  %105 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %106 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %111 = call i32 @strbuf_addch(%struct.strbuf* %110, i8 signext 10)
  br label %112

112:                                              ; preds = %109, %104, %93
  %113 = load i8*, i8** %9, align 8
  %114 = call i8* @skip_blank_lines(i8* %113)
  store i8* %114, i8** %9, align 8
  %115 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %116 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @CMIT_FMT_ONELINE, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %112
  %121 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %122 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @cmit_fmt_is_mail(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120, %112
  %127 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %128 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @pp_title_line(%struct.pretty_print_context* %127, i8** %9, %struct.strbuf* %128, i8* %129, i32 %130)
  br label %132

132:                                              ; preds = %126, %120
  %133 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %134 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %7, align 8
  %136 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %137 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @CMIT_FMT_ONELINE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %143 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @pp_remainder(%struct.pretty_print_context* %142, i8** %9, %struct.strbuf* %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %132
  %147 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %148 = call i32 @strbuf_rtrim(%struct.strbuf* %147)
  %149 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %150 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @CMIT_FMT_ONELINE, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %156 = call i32 @strbuf_addch(%struct.strbuf* %155, i8 signext 10)
  br label %157

157:                                              ; preds = %154, %146
  %158 = load %struct.pretty_print_context*, %struct.pretty_print_context** %4, align 8
  %159 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @cmit_fmt_is_mail(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %157
  %164 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %165 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %7, align 8
  %168 = icmp ule i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %171 = call i32 @strbuf_addch(%struct.strbuf* %170, i8 signext 10)
  br label %172

172:                                              ; preds = %169, %163, %157
  %173 = load %struct.commit*, %struct.commit** %5, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = call i32 @unuse_commit_buffer(%struct.commit* %173, i8* %174)
  br label %176

176:                                              ; preds = %172, %24
  ret void
}

declare dso_local i32 @format_commit_message(%struct.commit*, i32, %struct.strbuf*, %struct.pretty_print_context*) #1

declare dso_local i8* @get_log_output_encoding(...) #1

declare dso_local i8* @logmsg_reencode(%struct.commit*, i32*, i8*) #1

declare dso_local i64 @cmit_fmt_is_mail(i64) #1

declare dso_local i64 @non_ascii(i32) #1

declare dso_local i32 @pp_header(%struct.pretty_print_context*, i8*, %struct.commit*, i8**, %struct.strbuf*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i8* @skip_blank_lines(i8*) #1

declare dso_local i32 @pp_title_line(%struct.pretty_print_context*, i8**, %struct.strbuf*, i8*, i32) #1

declare dso_local i32 @pp_remainder(%struct.pretty_print_context*, i8**, %struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #1

declare dso_local i32 @unuse_commit_buffer(%struct.commit*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
