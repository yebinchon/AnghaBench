; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_emit_line_0.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_emit_line_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_options = type { i32, i32* }

@GIT_COLOR_REVERSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*, i8*, i8*, i32, i8*, i32, i8*, i32)* @emit_line_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_line_0(%struct.diff_options* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.diff_options*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %21 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %22 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %20, align 8
  %24 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %25 = call i8* @diff_line_prefix(%struct.diff_options* %24)
  %26 = load i32*, i32** %20, align 8
  %27 = call i32 @fputs(i8* %25, i32* %26)
  %28 = load i32, i32* %16, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %8
  %31 = load i8*, i8** %15, align 8
  %32 = load i32, i32* %16, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 10
  br label %39

39:                                               ; preds = %30, %8
  %40 = phi i1 [ false, %8 ], [ %38, %30 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %16, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i8*, i8** %15, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 13
  br label %59

59:                                               ; preds = %50, %47
  %60 = phi i1 [ false, %47 ], [ %58, %50 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %129

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %79 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @want_color(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i8*, i8** @GIT_COLOR_REVERSE, align 8
  %85 = load i32*, i32** %20, align 8
  %86 = call i32 @fputs(i8* %84, i32* %85)
  store i32 1, i32* %19, align 4
  br label %87

87:                                               ; preds = %83, %77, %74
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i8*, i8** %10, align 8
  %92 = load i32*, i32** %20, align 8
  %93 = call i32 @fputs(i8* %91, i32* %92)
  store i32 1, i32* %19, align 4
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %14, align 4
  %99 = trunc i32 %98 to i8
  %100 = load i32*, i32** %20, align 8
  %101 = call i32 @fputc(i8 signext %99, i32* %100)
  br label %102

102:                                              ; preds = %97, %94
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  br label %129

106:                                              ; preds = %102
  %107 = load i8*, i8** %11, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load i8*, i8** %10, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load i8*, i8** %11, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = icmp ne i8* %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i8*, i8** %13, align 8
  %118 = load i32*, i32** %20, align 8
  %119 = call i32 @fputs(i8* %117, i32* %118)
  br label %120

120:                                              ; preds = %116, %112, %109
  %121 = load i8*, i8** %11, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = call i32 @fputs(i8* %121, i32* %122)
  store i32 1, i32* %19, align 4
  br label %124

124:                                              ; preds = %120, %106
  %125 = load i8*, i8** %15, align 8
  %126 = load i32, i32* %16, align 4
  %127 = load i32*, i32** %20, align 8
  %128 = call i32 @fwrite(i8* %125, i32 %126, i32 1, i32* %127)
  store i32 1, i32* %19, align 4
  br label %129

129:                                              ; preds = %124, %105, %73
  %130 = load i32, i32* %19, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i8*, i8** %13, align 8
  %134 = load i32*, i32** %20, align 8
  %135 = call i32 @fputs(i8* %133, i32* %134)
  br label %136

136:                                              ; preds = %132, %129
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %20, align 8
  %141 = call i32 @fputc(i8 signext 13, i32* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %17, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32*, i32** %20, align 8
  %147 = call i32 @fputc(i8 signext 10, i32* %146)
  br label %148

148:                                              ; preds = %145, %142
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i8* @diff_line_prefix(%struct.diff_options*) #1

declare dso_local i64 @want_color(i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
