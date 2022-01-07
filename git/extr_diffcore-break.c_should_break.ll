; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-break.c_should_break.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-break.c_should_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.diff_filespec = type { i64, i32, i32, i64, i32 }

@MAX_SCORE = common dso_local global i64 0, align 8
@MINIMUM_BREAK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.diff_filespec*, %struct.diff_filespec*, i32, i32*)* @should_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_break(%struct.repository* %0, %struct.diff_filespec* %1, %struct.diff_filespec* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca %struct.diff_filespec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %8, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %19 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @S_ISREG(i32 %20)
  %22 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %23 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @S_ISREG(i32 %24)
  %26 = icmp ne i64 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i64, i64* @MAX_SCORE, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  store i32 1, i32* %6, align 4
  br label %187

31:                                               ; preds = %5
  %32 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %33 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %38 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %43 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %42, i32 0, i32 2
  %44 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %45 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %44, i32 0, i32 2
  %46 = call i64 @oideq(i32* %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %187

49:                                               ; preds = %41, %36, %31
  %50 = load %struct.repository*, %struct.repository** %7, align 8
  %51 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %52 = call i64 @diff_populate_filespec(%struct.repository* %50, %struct.diff_filespec* %51, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.repository*, %struct.repository** %7, align 8
  %56 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %57 = call i64 @diff_populate_filespec(%struct.repository* %55, %struct.diff_filespec* %56, i32 0)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49
  store i32 0, i32* %6, align 4
  br label %187

60:                                               ; preds = %54
  %61 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %62 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %65 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ugt i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %70 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  br label %76

72:                                               ; preds = %60
  %73 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %74 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %71, %68 ], [ %75, %72 ]
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i64, i64* @MINIMUM_BREAK_SIZE, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %187

82:                                               ; preds = %76
  %83 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %84 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %187

88:                                               ; preds = %82
  %89 = load %struct.repository*, %struct.repository** %7, align 8
  %90 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %91 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %92 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %93 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %92, i32 0, i32 1
  %94 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %95 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %94, i32 0, i32 1
  %96 = call i64 @diffcore_count_changes(%struct.repository* %89, %struct.diff_filespec* %90, %struct.diff_filespec* %91, i32* %93, i32* %95, i64* %14, i64* %15)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i32 0, i32* %6, align 4
  br label %187

99:                                               ; preds = %88
  %100 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %101 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %107 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %14, align 8
  br label %109

109:                                              ; preds = %105, %99
  %110 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %111 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* %14, align 8
  %115 = add i64 %113, %114
  %116 = icmp ult i64 %112, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %109
  %118 = load i64, i64* %14, align 8
  %119 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %120 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load %struct.diff_filespec*, %struct.diff_filespec** %9, align 8
  %125 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %14, align 8
  %128 = sub i64 %126, %127
  store i64 %128, i64* %15, align 8
  br label %130

129:                                              ; preds = %117
  store i64 0, i64* %15, align 8
  br label %130

130:                                              ; preds = %129, %123
  br label %131

131:                                              ; preds = %130, %109
  %132 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %133 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %14, align 8
  %136 = sub i64 %134, %135
  store i64 %136, i64* %16, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* @MAX_SCORE, align 8
  %139 = mul i64 %137, %138
  %140 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %141 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = udiv i64 %139, %142
  %144 = trunc i64 %143 to i32
  %145 = load i32*, i32** %11, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %131
  store i32 1, i32* %6, align 4
  br label %187

151:                                              ; preds = %131
  %152 = load i64, i64* %16, align 8
  %153 = load i64, i64* %15, align 8
  %154 = add i64 %152, %153
  store i64 %154, i64* %12, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* @MAX_SCORE, align 8
  %157 = mul i64 %155, %156
  %158 = load i64, i64* %13, align 8
  %159 = udiv i64 %157, %158
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp ult i64 %159, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %151
  store i32 0, i32* %6, align 4
  br label %187

164:                                              ; preds = %151
  %165 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %166 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 %167, %169
  %171 = load i64, i64* %16, align 8
  %172 = load i64, i64* @MAX_SCORE, align 8
  %173 = mul i64 %171, %172
  %174 = icmp ult i64 %170, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %164
  %176 = load i64, i64* %15, align 8
  %177 = mul i64 %176, 20
  %178 = load i64, i64* %16, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %175
  %181 = load i64, i64* %15, align 8
  %182 = mul i64 %181, 20
  %183 = load i64, i64* %14, align 8
  %184 = icmp ult i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  store i32 0, i32* %6, align 4
  br label %187

186:                                              ; preds = %180, %175, %164
  store i32 1, i32* %6, align 4
  br label %187

187:                                              ; preds = %186, %185, %163, %150, %98, %87, %81, %59, %48, %27
  %188 = load i32, i32* %6, align 4
  ret i32 %188
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @oideq(i32*, i32*) #1

declare dso_local i64 @diff_populate_filespec(%struct.repository*, %struct.diff_filespec*, i32) #1

declare dso_local i64 @diffcore_count_changes(%struct.repository*, %struct.diff_filespec*, %struct.diff_filespec*, i32*, i32*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
