; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_compile_regexp.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_compile_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.grep_pat = type { i8*, i64, i32, i32, i64, i64, i32 }
%struct.grep_opt = type { i32, i64, i64, i64, i64, i32 }

@REG_NEWLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"given pattern contains NULL byte (via -f <file>). This is only supported with -P under PCRE v2\00", align 1
@REG_ICASE = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_pat*, %struct.grep_opt*)* @compile_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compile_regexp(%struct.grep_pat* %0, %struct.grep_opt* %1) #0 {
  %3 = alloca %struct.grep_pat*, align 8
  %4 = alloca %struct.grep_opt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1024 x i8], align 16
  store %struct.grep_pat* %0, %struct.grep_pat** %3, align 8
  store %struct.grep_opt* %1, %struct.grep_opt** %4, align 8
  %8 = load i32, i32* @REG_NEWLINE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %10 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %13 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %15 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %18 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %17, i32 0, i32 4
  store i64 %16, i64* %18, align 8
  %19 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %20 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %23 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %22, i32 0, i32 5
  store i64 %21, i64* %23, align 8
  %24 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %25 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %28 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @memchr(i8* %26, i32 0, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %2
  %33 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %34 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = call i32 @_(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @die(i32 %38)
  br label %40

40:                                               ; preds = %37, %32, %2
  %41 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %42 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %45 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @is_fixed(i8* %43, i64 %46)
  %48 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %49 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %51 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %40
  %55 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %56 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %40
  %60 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %61 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %62 = call i32 @compile_fixed_regexp(%struct.grep_pat* %60, %struct.grep_opt* %61)
  br label %118

63:                                               ; preds = %54
  %64 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %65 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %70 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %71 = call i32 @compile_pcre2_pattern(%struct.grep_pat* %69, %struct.grep_opt* %70)
  br label %118

72:                                               ; preds = %63
  %73 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %74 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %79 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %80 = call i32 @compile_pcre1_regexp(%struct.grep_pat* %78, %struct.grep_opt* %79)
  br label %118

81:                                               ; preds = %72
  %82 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %83 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @REG_ICASE, align 4
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load %struct.grep_opt*, %struct.grep_opt** %4, align 8
  %92 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @REG_EXTENDED, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %101 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %100, i32 0, i32 3
  %102 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %103 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @regcomp(i32* %101, i8* %104, i32 %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %99
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %112 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %111, i32 0, i32 3
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %114 = call i32 @regerror(i32 %110, i32* %112, i8* %113, i32 1024)
  %115 = load %struct.grep_pat*, %struct.grep_pat** %3, align 8
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %117 = call i32 @compile_regexp_failed(%struct.grep_pat* %115, i8* %116)
  br label %118

118:                                              ; preds = %59, %68, %77, %109, %99
  ret void
}

declare dso_local i64 @memchr(i8*, i32, i64) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @is_fixed(i8*, i64) #1

declare dso_local i32 @compile_fixed_regexp(%struct.grep_pat*, %struct.grep_opt*) #1

declare dso_local i32 @compile_pcre2_pattern(%struct.grep_pat*, %struct.grep_opt*) #1

declare dso_local i32 @compile_pcre1_regexp(%struct.grep_pat*, %struct.grep_opt*) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @compile_regexp_failed(%struct.grep_pat*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
