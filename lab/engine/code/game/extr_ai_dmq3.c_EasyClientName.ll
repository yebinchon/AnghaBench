; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_EasyClientName.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_EasyClientName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @EasyClientName(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca [128 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = bitcast [128 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 128, i1 false)
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %16 = call i32 @ClientName(i32 %14, i8* %15, i32 128)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %31, %3
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 127
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %26, align 1
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %17

34:                                               ; preds = %17
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %36 = call i8* @strstr(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %49, %34
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i64 @strlen(i8* %45)
  %47 = add nsw i64 %46, 1
  %48 = call i32 @memmove(i8* %41, i8* %43, i64 %47)
  br label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %51 = call i8* @strstr(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %51, i8** %10, align 8
  br label %37

52:                                               ; preds = %37
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %54 = call i8* @strstr(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %54, i8** %8, align 8
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %56 = call i8* @strstr(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %85

59:                                               ; preds = %52
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ugt i8* %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = call i64 @strlen(i8* %71)
  %73 = add nsw i64 %72, 1
  %74 = call i32 @memmove(i8* %67, i8* %69, i64 %73)
  br label %84

75:                                               ; preds = %62
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = call i64 @strlen(i8* %80)
  %82 = add nsw i64 %81, 1
  %83 = call i32 @memmove(i8* %76, i8* %78, i64 %82)
  br label %84

84:                                               ; preds = %75, %66
  br label %85

85:                                               ; preds = %84, %59, %52
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %87 = load i8, i8* %86, align 16
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 109
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %92 = load i8, i8* %91, align 16
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 77
  br i1 %94, label %95, label %114

95:                                               ; preds = %90, %85
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 114
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 82
  br i1 %104, label %105, label %114

105:                                              ; preds = %100, %95
  %106 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = call i64 @strlen(i8* %110)
  %112 = add nsw i64 %111, 1
  %113 = call i32 @memmove(i8* %106, i8* %108, i64 %112)
  br label %114

114:                                              ; preds = %105, %100, %90
  %115 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  store i8* %115, i8** %10, align 8
  br label %116

116:                                              ; preds = %171, %114
  %117 = load i8*, i8** %10, align 8
  %118 = load i8, i8* %117, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %172

120:                                              ; preds = %116
  %121 = load i8*, i8** %10, align 8
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %11, align 1
  %123 = load i8, i8* %11, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sge i32 %124, 97
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i8, i8* %11, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp sle i32 %128, 122
  br i1 %129, label %142, label %130

130:                                              ; preds = %126, %120
  %131 = load i8, i8* %11, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sge i32 %132, 48
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i8, i8* %11, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sle i32 %136, 57
  br i1 %137, label %142, label %138

138:                                              ; preds = %134, %130
  %139 = load i8, i8* %11, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 95
  br i1 %141, label %142, label %145

142:                                              ; preds = %138, %134, %126
  %143 = load i8*, i8** %10, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %10, align 8
  br label %171

145:                                              ; preds = %138
  %146 = load i8, i8* %11, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp sge i32 %147, 65
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load i8, i8* %11, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp sle i32 %151, 90
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i8*, i8** %10, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = add nsw i32 %156, 32
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %154, align 1
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %10, align 8
  br label %170

161:                                              ; preds = %149, %145
  %162 = load i8*, i8** %10, align 8
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8*, i8** %10, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = call i64 @strlen(i8* %166)
  %168 = add nsw i64 %167, 1
  %169 = call i32 @memmove(i8* %162, i8* %164, i64 %168)
  br label %170

170:                                              ; preds = %161, %153
  br label %171

171:                                              ; preds = %170, %142
  br label %116

172:                                              ; preds = %116
  %173 = load i8*, i8** %5, align 8
  %174 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %175 = load i32, i32* %6, align 4
  %176 = sub nsw i32 %175, 1
  %177 = call i32 @strncpy(i8* %173, i8* %174, i32 %176)
  %178 = load i8*, i8** %5, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  store i8 0, i8* %182, align 1
  %183 = load i8*, i8** %5, align 8
  ret i8* %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ClientName(i32, i8*, i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
