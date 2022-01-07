; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_opt_stat.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_opt_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, %struct.diff_options* }
%struct.diff_options = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid --stat value: %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"stat-width\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s expects a numerical value\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"stat-name-width\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"stat-graph-width\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"stat-count\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"%s should not get here\00", align 1
@DIFF_FORMAT_DIFFSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @diff_opt_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_opt_stat(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.option*, %struct.option** %5, align 8
  %15 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 1
  %16 = load %struct.diff_options*, %struct.diff_options** %15, align 8
  store %struct.diff_options* %16, %struct.diff_options** %8, align 8
  %17 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %18 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %21 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %24 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %27 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @BUG_ON_OPT_NEG(i32 %29)
  %31 = load %struct.option*, %struct.option** %5, align 8
  %32 = getelementptr inbounds %struct.option, %struct.option* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %69, label %36

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strtoul(i8* %40, i8** %13, i32 10)
  store i32 %41, i32* %9, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i32 @strtoul(i8* %48, i8** %13, i32 10)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load i8*, i8** %13, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 44
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = call i32 @strtoul(i8* %57, i8** %13, i32 10)
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i8*, i8** %13, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @error(i32 %64, i8* %65)
  store i32 %66, i32* %4, align 4
  br label %172

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %36
  br label %154

69:                                               ; preds = %3
  %70 = load %struct.option*, %struct.option** %5, align 8
  %71 = getelementptr inbounds %struct.option, %struct.option* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @strtoul(i8* %76, i8** %13, i32 10)
  store i32 %77, i32* %9, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.option*, %struct.option** %5, align 8
  %84 = getelementptr inbounds %struct.option, %struct.option* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @error(i32 %82, i8* %85)
  store i32 %86, i32* %4, align 4
  br label %172

87:                                               ; preds = %75
  br label %153

88:                                               ; preds = %69
  %89 = load %struct.option*, %struct.option** %5, align 8
  %90 = getelementptr inbounds %struct.option, %struct.option* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %88
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @strtoul(i8* %95, i8** %13, i32 10)
  store i32 %96, i32* %10, align 4
  %97 = load i8*, i8** %13, align 8
  %98 = load i8, i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.option*, %struct.option** %5, align 8
  %103 = getelementptr inbounds %struct.option, %struct.option* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @error(i32 %101, i8* %104)
  store i32 %105, i32* %4, align 4
  br label %172

106:                                              ; preds = %94
  br label %152

107:                                              ; preds = %88
  %108 = load %struct.option*, %struct.option** %5, align 8
  %109 = getelementptr inbounds %struct.option, %struct.option* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %107
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @strtoul(i8* %114, i8** %13, i32 10)
  store i32 %115, i32* %11, align 4
  %116 = load i8*, i8** %13, align 8
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.option*, %struct.option** %5, align 8
  %122 = getelementptr inbounds %struct.option, %struct.option* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @error(i32 %120, i8* %123)
  store i32 %124, i32* %4, align 4
  br label %172

125:                                              ; preds = %113
  br label %151

126:                                              ; preds = %107
  %127 = load %struct.option*, %struct.option** %5, align 8
  %128 = getelementptr inbounds %struct.option, %struct.option* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %126
  %133 = load i8*, i8** %6, align 8
  %134 = call i32 @strtoul(i8* %133, i8** %13, i32 10)
  store i32 %134, i32* %12, align 4
  %135 = load i8*, i8** %13, align 8
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %140 = load %struct.option*, %struct.option** %5, align 8
  %141 = getelementptr inbounds %struct.option, %struct.option* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @error(i32 %139, i8* %142)
  store i32 %143, i32* %4, align 4
  br label %172

144:                                              ; preds = %132
  br label %150

145:                                              ; preds = %126
  %146 = load %struct.option*, %struct.option** %5, align 8
  %147 = getelementptr inbounds %struct.option, %struct.option* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @BUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %145, %144
  br label %151

151:                                              ; preds = %150, %125
  br label %152

152:                                              ; preds = %151, %106
  br label %153

153:                                              ; preds = %152, %87
  br label %154

154:                                              ; preds = %153, %68
  %155 = load i32, i32* @DIFF_FORMAT_DIFFSTAT, align 4
  %156 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %157 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %162 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %165 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %168 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %171 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %154, %138, %119, %100, %81, %63
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @BUG_ON_OPT_NEG(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @BUG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
