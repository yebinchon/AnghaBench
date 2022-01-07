; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_unquote.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_unquote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"truncated quoted character \\%c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"truncated quoted character \\%c%c%c\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"invalid quoted character \\%c\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid quoted line\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_buf_unquote(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = call i32 @git_buf_rtrim(%struct.TYPE_4__* %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %34, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 34
  br i1 %20, label %34, label %21

21:                                               ; preds = %13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %24, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 34
  br i1 %33, label %34, label %35

34:                                               ; preds = %21, %13, %1
  br label %222

35:                                               ; preds = %21
  store i64 0, i64* %4, align 8
  store i64 1, i64* %5, align 8
  br label %36

36:                                               ; preds = %207, %35
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %37, %42
  br i1 %43, label %44, label %212

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  store i8 %50, i8* %6, align 1
  %51 = load i8, i8* %6, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 92
  br i1 %53, label %54, label %200

54:                                               ; preds = %44
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %222

63:                                               ; preds = %54
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %5, align 8
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %6, align 1
  %71 = load i8, i8* %6, align 1
  %72 = sext i8 %71 to i32
  switch i32 %72, label %194 [
    i32 34, label %73
    i32 92, label %73
    i32 97, label %74
    i32 98, label %75
    i32 102, label %76
    i32 110, label %77
    i32 114, label %78
    i32 116, label %79
    i32 118, label %80
    i32 48, label %81
    i32 49, label %81
    i32 50, label %81
    i32 51, label %81
  ]

73:                                               ; preds = %63, %63
  br label %199

74:                                               ; preds = %63
  store i8 7, i8* %6, align 1
  br label %199

75:                                               ; preds = %63
  store i8 8, i8* %6, align 1
  br label %199

76:                                               ; preds = %63
  store i8 12, i8* %6, align 1
  br label %199

77:                                               ; preds = %63
  store i8 10, i8* %6, align 1
  br label %199

78:                                               ; preds = %63
  store i8 13, i8* %6, align 1
  br label %199

79:                                               ; preds = %63
  store i8 9, i8* %6, align 1
  br label %199

80:                                               ; preds = %63
  store i8 11, i8* %6, align 1
  br label %199

81:                                               ; preds = %63, %63, %63, %63
  %82 = load i64, i64* %5, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 3
  %87 = sext i32 %86 to i64
  %88 = icmp eq i64 %82, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %91 = load i8, i8* %6, align 1
  %92 = sext i8 %91 to i32
  %93 = call i32 (i32, i8*, ...) @git_error_set(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %92)
  store i32 -1, i32* %2, align 4
  br label %225

94:                                               ; preds = %81
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, 1
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp slt i32 %102, 48
  br i1 %103, label %134, label %104

104:                                              ; preds = %94
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = add i64 %108, 1
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sgt i32 %112, 55
  br i1 %113, label %134, label %114

114:                                              ; preds = %104
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load i64, i64* %5, align 8
  %119 = add i64 %118, 2
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp slt i32 %122, 48
  br i1 %123, label %134, label %124

124:                                              ; preds = %114
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = add i64 %128, 2
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sgt i32 %132, 55
  br i1 %133, label %134, label %160

134:                                              ; preds = %124, %114, %104, %94
  %135 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load i64, i64* %5, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load i64, i64* %5, align 8
  %147 = add i64 %146, 1
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = load i64, i64* %5, align 8
  %155 = add i64 %154, 2
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = call i32 (i32, i8*, ...) @git_error_set(i32 %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %150, i32 %158)
  store i32 -1, i32* %2, align 4
  br label %225

160:                                              ; preds = %124
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = load i64, i64* %5, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = sub nsw i32 %167, 48
  %169 = shl i32 %168, 6
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = load i64, i64* %5, align 8
  %174 = add i64 %173, 1
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = sub nsw i32 %177, 48
  %179 = shl i32 %178, 3
  %180 = or i32 %169, %179
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load i64, i64* %5, align 8
  %185 = add i64 %184, 2
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = sub nsw i32 %188, 48
  %190 = or i32 %180, %189
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %6, align 1
  %192 = load i64, i64* %5, align 8
  %193 = add i64 %192, 2
  store i64 %193, i64* %5, align 8
  br label %199

194:                                              ; preds = %63
  %195 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %196 = load i8, i8* %6, align 1
  %197 = sext i8 %196 to i32
  %198 = call i32 (i32, i8*, ...) @git_error_set(i32 %195, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %197)
  store i32 -1, i32* %2, align 4
  br label %225

199:                                              ; preds = %160, %80, %79, %78, %77, %76, %75, %74, %73
  br label %200

200:                                              ; preds = %199, %44
  %201 = load i8, i8* %6, align 1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = load i64, i64* %4, align 8
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8 %201, i8* %206, align 1
  br label %207

207:                                              ; preds = %200
  %208 = load i64, i64* %4, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %4, align 8
  %210 = load i64, i64* %5, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %5, align 8
  br label %36

212:                                              ; preds = %36
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load i64, i64* %4, align 8
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8 0, i8* %217, align 1
  %218 = load i64, i64* %4, align 8
  %219 = trunc i64 %218 to i32
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  store i32 0, i32* %2, align 4
  br label %225

222:                                              ; preds = %62, %34
  %223 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %224 = call i32 (i32, i8*, ...) @git_error_set(i32 %223, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %225

225:                                              ; preds = %222, %212, %194, %134, %89
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @git_buf_rtrim(%struct.TYPE_4__*) #1

declare dso_local i32 @git_error_set(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
