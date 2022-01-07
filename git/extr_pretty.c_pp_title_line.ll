; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_pp_title_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_pp_title_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pretty_print_context = type { %struct.TYPE_4__, i32, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.strbuf = type { i64, i32 }

@pp_title_line.max_length = internal constant i32 78, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@RFC2047_SUBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [88 x i8] c"MIME-Version: 1.0\0AContent-Type: text/plain; charset=%s\0AContent-Transfer-Encoding: 8bit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_title_line(%struct.pretty_print_context* %0, i8** %1, %struct.strbuf* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.pretty_print_context*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.pretty_print_context* %0, %struct.pretty_print_context** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.strbuf* %2, %struct.strbuf** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = call i32 @strbuf_init(%struct.strbuf* %11, i32 80)
  %16 = load i8**, i8*** %7, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %19 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %24 = call i8* @format_subject(%struct.strbuf* %11, i8* %17, i8* %23)
  %25 = load i8**, i8*** %7, align 8
  store i8* %24, i8** %25, align 8
  %26 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1024
  %30 = call i32 @strbuf_grow(%struct.strbuf* %26, i64 %29)
  %31 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %32 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %5
  %36 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %37 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %42 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %43 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @fmt_output_email_subject(%struct.strbuf* %41, i64 %44)
  br label %46

46:                                               ; preds = %40, %35
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @needs_rfc2047_encoding(i32 %48, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* @RFC2047_SUBJECT, align 4
  %61 = call i32 @add_rfc2047(%struct.strbuf* %54, i32 %56, i64 %58, i8* %59, i32 %60)
  br label %72

62:                                               ; preds = %46
  %63 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %69 = call i32 @last_line_length(%struct.strbuf* %68)
  %70 = sub nsw i32 0, %69
  %71 = call i32 @strbuf_add_wrapped_bytes(%struct.strbuf* %63, i32 %65, i64 %67, i32 %70, i32 1, i32 78)
  br label %72

72:                                               ; preds = %62, %53
  br label %76

73:                                               ; preds = %5
  %74 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %75 = call i32 @strbuf_addbuf(%struct.strbuf* %74, %struct.strbuf* %11)
  br label %76

76:                                               ; preds = %73, %72
  %77 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %78 = call i32 @strbuf_addch(%struct.strbuf* %77, i8 signext 10)
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %76
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %103, %81
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %85 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %82
  %90 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %91 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @has_non_ascii(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  store i32 1, i32* %10, align 4
  br label %106

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %82

106:                                              ; preds = %101, %82
  br label %107

107:                                              ; preds = %106, %76
  %108 = load i32, i32* %10, align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %111 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @strbuf_addf(%struct.strbuf* %111, i8* %112, i8* %113)
  br label %115

115:                                              ; preds = %110, %107
  %116 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %117 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %122 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %123 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @strbuf_addstr(%struct.strbuf* %121, i64 %124)
  br label %126

126:                                              ; preds = %120, %115
  %127 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %128 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @cmit_fmt_is_mail(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %134 = call i32 @strbuf_addch(%struct.strbuf* %133, i8 signext 10)
  br label %135

135:                                              ; preds = %132, %126
  %136 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %137 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %180

141:                                              ; preds = %135
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %171, %141
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %145 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %149, label %174

149:                                              ; preds = %142
  %150 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %151 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %152 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @strbuf_addstr(%struct.strbuf* %150, i64 %159)
  %161 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %162 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @free(i64 %169)
  br label %171

171:                                              ; preds = %149
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %142

174:                                              ; preds = %142
  %175 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %176 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %175, i32 0, i32 0
  %177 = call i32 @string_list_clear(%struct.TYPE_4__* %176, i32 0)
  %178 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %179 = call i32 @strbuf_addch(%struct.strbuf* %178, i8 signext 10)
  br label %180

180:                                              ; preds = %174, %135
  %181 = call i32 @strbuf_release(%struct.strbuf* %11)
  ret void
}

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i8* @format_subject(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i32 @fmt_output_email_subject(%struct.strbuf*, i64) #1

declare dso_local i64 @needs_rfc2047_encoding(i32, i64) #1

declare dso_local i32 @add_rfc2047(%struct.strbuf*, i32, i64, i8*, i32) #1

declare dso_local i32 @strbuf_add_wrapped_bytes(%struct.strbuf*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @last_line_length(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i64 @has_non_ascii(i64) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i64) #1

declare dso_local i64 @cmit_fmt_is_mail(i32) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @string_list_clear(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
