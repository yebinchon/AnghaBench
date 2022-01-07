; ModuleID = '/home/carl/AnghaBench/git/extr_sh-i18n--envsubst.c_subst_from_stdin.c'
source_filename = "/home/carl/AnghaBench/git/extr_sh-i18n--envsubst.c_subst_from_stdin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subst_from_stdin.buffer = internal global i8* null, align 8
@subst_from_stdin.bufmax = internal global i64 0, align 8
@subst_from_stdin.buflen = internal global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@all_variables = common dso_local global i32 0, align 4
@variables_set = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @subst_from_stdin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subst_from_stdin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  br label %6

6:                                                ; preds = %162, %0
  %7 = call i32 (...) @do_getc()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @EOF, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  br label %163

12:                                               ; preds = %6
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 36
  br i1 %14, label %15, label %159

15:                                               ; preds = %12
  store i16 0, i16* %2, align 2
  store i16 0, i16* %3, align 2
  %16 = call i32 (...) @do_getc()
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp eq i32 %17, 123
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  store i16 1, i16* %2, align 2
  %20 = call i32 (...) @do_getc()
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* %1, align 4
  %23 = icmp sge i32 %22, 65
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %1, align 4
  %26 = icmp sle i32 %25, 90
  br i1 %26, label %36, label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %1, align 4
  %29 = icmp sge i32 %28, 97
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %1, align 4
  %32 = icmp sle i32 %31, 122
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* %1, align 4
  %35 = icmp eq i32 %34, 95
  br i1 %35, label %36, label %149

36:                                               ; preds = %33, %30, %24
  store i64 0, i64* @subst_from_stdin.buflen, align 8
  br label %37

37:                                               ; preds = %77, %36
  %38 = load i64, i64* @subst_from_stdin.buflen, align 8
  %39 = load i64, i64* @subst_from_stdin.bufmax, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i64, i64* @subst_from_stdin.bufmax, align 8
  %43 = mul i64 2, %42
  %44 = add i64 %43, 10
  store i64 %44, i64* @subst_from_stdin.bufmax, align 8
  %45 = load i8*, i8** @subst_from_stdin.buffer, align 8
  %46 = load i64, i64* @subst_from_stdin.bufmax, align 8
  %47 = call i8* @xrealloc(i8* %45, i64 %46)
  store i8* %47, i8** @subst_from_stdin.buffer, align 8
  br label %48

48:                                               ; preds = %41, %37
  %49 = load i32, i32* %1, align 4
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** @subst_from_stdin.buffer, align 8
  %52 = load i64, i64* @subst_from_stdin.buflen, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* @subst_from_stdin.buflen, align 8
  %54 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 %50, i8* %54, align 1
  %55 = call i32 (...) @do_getc()
  store i32 %55, i32* %1, align 4
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %1, align 4
  %58 = icmp sge i32 %57, 65
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %1, align 4
  %61 = icmp sle i32 %60, 90
  br i1 %61, label %77, label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %1, align 4
  %64 = icmp sge i32 %63, 97
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %1, align 4
  %67 = icmp sle i32 %66, 122
  br i1 %67, label %77, label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %1, align 4
  %70 = icmp sge i32 %69, 48
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %1, align 4
  %73 = icmp sle i32 %72, 57
  br i1 %73, label %77, label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %1, align 4
  %76 = icmp eq i32 %75, 95
  br label %77

77:                                               ; preds = %74, %71, %65, %59
  %78 = phi i1 [ true, %71 ], [ true, %65 ], [ true, %59 ], [ %76, %74 ]
  br i1 %78, label %37, label %79

79:                                               ; preds = %77
  %80 = load i16, i16* %2, align 2
  %81 = icmp ne i16 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* %1, align 4
  %84 = icmp eq i32 %83, 125
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i16 1, i16* %3, align 2
  store i16 1, i16* %4, align 2
  br label %89

86:                                               ; preds = %82
  store i16 0, i16* %4, align 2
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @do_ungetc(i32 %87)
  br label %89

89:                                               ; preds = %86, %85
  br label %93

90:                                               ; preds = %79
  store i16 1, i16* %4, align 2
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @do_ungetc(i32 %91)
  br label %93

93:                                               ; preds = %90, %89
  %94 = load i16, i16* %4, align 2
  %95 = icmp ne i16 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %93
  %97 = load i64, i64* @subst_from_stdin.buflen, align 8
  %98 = load i64, i64* @subst_from_stdin.bufmax, align 8
  %99 = icmp uge i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i64, i64* @subst_from_stdin.bufmax, align 8
  %102 = mul i64 2, %101
  %103 = add i64 %102, 10
  store i64 %103, i64* @subst_from_stdin.bufmax, align 8
  %104 = load i8*, i8** @subst_from_stdin.buffer, align 8
  %105 = load i64, i64* @subst_from_stdin.bufmax, align 8
  %106 = call i8* @xrealloc(i8* %104, i64 %105)
  store i8* %106, i8** @subst_from_stdin.buffer, align 8
  br label %107

107:                                              ; preds = %100, %96
  %108 = load i8*, i8** @subst_from_stdin.buffer, align 8
  %109 = load i64, i64* @subst_from_stdin.buflen, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 0, i8* %110, align 1
  %111 = load i32, i32* @all_variables, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** @subst_from_stdin.buffer, align 8
  %115 = call i32 @sorted_string_list_member(i32* @variables_set, i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  store i16 0, i16* %4, align 2
  br label %118

118:                                              ; preds = %117, %113, %107
  br label %119

119:                                              ; preds = %118, %93
  %120 = load i16, i16* %4, align 2
  %121 = icmp ne i16 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i8*, i8** @subst_from_stdin.buffer, align 8
  %124 = call i8* @getenv(i8* %123)
  store i8* %124, i8** %5, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* @stdout, align 4
  %130 = call i32 @fputs(i8* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %122
  br label %148

132:                                              ; preds = %119
  %133 = call i32 @putchar(i32 36)
  %134 = load i16, i16* %2, align 2
  %135 = icmp ne i16 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = call i32 @putchar(i32 123)
  br label %138

138:                                              ; preds = %136, %132
  %139 = load i8*, i8** @subst_from_stdin.buffer, align 8
  %140 = load i64, i64* @subst_from_stdin.buflen, align 8
  %141 = load i32, i32* @stdout, align 4
  %142 = call i32 @fwrite(i8* %139, i64 %140, i32 1, i32 %141)
  %143 = load i16, i16* %3, align 2
  %144 = icmp ne i16 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %138
  %146 = call i32 @putchar(i32 125)
  br label %147

147:                                              ; preds = %145, %138
  br label %148

148:                                              ; preds = %147, %131
  br label %158

149:                                              ; preds = %33
  %150 = load i32, i32* %1, align 4
  %151 = call i32 @do_ungetc(i32 %150)
  %152 = call i32 @putchar(i32 36)
  %153 = load i16, i16* %2, align 2
  %154 = icmp ne i16 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = call i32 @putchar(i32 123)
  br label %157

157:                                              ; preds = %155, %149
  br label %158

158:                                              ; preds = %157, %148
  br label %162

159:                                              ; preds = %12
  %160 = load i32, i32* %1, align 4
  %161 = call i32 @putchar(i32 %160)
  br label %162

162:                                              ; preds = %159, %158
  br label %6

163:                                              ; preds = %11
  ret void
}

declare dso_local i32 @do_getc(...) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @do_ungetc(i32) #1

declare dso_local i32 @sorted_string_list_member(i32*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
