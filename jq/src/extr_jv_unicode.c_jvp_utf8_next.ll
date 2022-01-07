; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_unicode.c_jvp_utf8_next.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_unicode.c_jvp_utf8_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_coding_length = common dso_local global i32* null, align 8
@UTF8_CONTINUATION_BYTE = common dso_local global i32 0, align 4
@utf8_coding_bits = common dso_local global i32* null, align 8
@utf8_first_codepoint = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @jvp_utf8_next(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ule i8* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %134

22:                                               ; preds = %3
  store i32 -1, i32* %8, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %9, align 1
  %26 = load i32*, i32** @utf8_coding_length, align 8
  %27 = load i8, i8* %9, align 1
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i8, i8* %9, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 128
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i8, i8* %9, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %123

38:                                               ; preds = %22
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @UTF8_CONTINUATION_BYTE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %38
  store i32 1, i32* %10, align 4
  br label %122

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ugt i8* %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  br label %121

60:                                               ; preds = %46
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i32*, i32** @utf8_coding_bits, align 8
  %66 = load i8, i8* %9, align 1
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %64, %69
  store i32 %70, i32* %8, align 4
  store i32 1, i32* %11, align 4
  br label %71

71:                                               ; preds = %97, %60
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = load i32*, i32** @utf8_coding_length, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @UTF8_CONTINUATION_BYTE, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %75
  store i32 -1, i32* %8, align 4
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %10, align 4
  br label %100

91:                                               ; preds = %75
  %92 = load i32, i32* %8, align 4
  %93 = shl i32 %92, 6
  %94 = load i32, i32* %12, align 4
  %95 = and i32 %94, 63
  %96 = or i32 %93, %95
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %71

100:                                              ; preds = %89, %71
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** @utf8_first_codepoint, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %101, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 -1, i32* %8, align 4
  br label %109

109:                                              ; preds = %108, %100
  %110 = load i32, i32* %8, align 4
  %111 = icmp sle i32 55296, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %8, align 4
  %114 = icmp sle i32 %113, 57343
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 -1, i32* %8, align 4
  br label %116

116:                                              ; preds = %115, %112, %109
  %117 = load i32, i32* %8, align 4
  %118 = icmp sgt i32 %117, 1114111
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 -1, i32* %8, align 4
  br label %120

120:                                              ; preds = %119, %116
  br label %121

121:                                              ; preds = %120, %53
  br label %122

122:                                              ; preds = %121, %45
  br label %123

123:                                              ; preds = %122, %35
  %124 = load i32, i32* %10, align 4
  %125 = icmp sgt i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load i32, i32* %8, align 4
  %129 = load i32*, i32** %7, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8* %133, i8** %4, align 8
  br label %134

134:                                              ; preds = %123, %21
  %135 = load i8*, i8** %4, align 8
  ret i8* %135
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
