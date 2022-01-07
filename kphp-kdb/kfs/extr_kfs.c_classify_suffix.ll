; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_classify_suffix.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_classify_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".bin.bz\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".enc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64*)* @classify_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @classify_suffix(i8* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i64*, i64** %7, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  store i64 0, i64* %15, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 0, i64* %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %183

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 46
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %183

28:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 48
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 57
  br label %45

45:                                               ; preds = %37, %29
  %46 = phi i1 [ false, %29 ], [ %44, %37 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %29

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %136

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 7
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %183

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 48
  %63 = mul nsw i32 %62, 10
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = sub nsw i32 %67, 48
  %69 = add nsw i32 %63, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 18
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  store i32 -1, i32* %4, align 4
  br label %183

73:                                               ; preds = %57
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = call i64 @strtoll(i8* %75, i32 0, i32 10)
  store i64 %76, i64* %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 7
  %80 = sub nsw i32 %77, %79
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 -1, i32* %4, align 4
  br label %183

84:                                               ; preds = %73
  %85 = load i32, i32* %10, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 3
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 48
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %183

94:                                               ; preds = %87, %84
  %95 = load i64, i64* %11, align 8
  %96 = load i64*, i64** %7, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64*, i64** %7, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  store i64 %98, i64* %100, align 8
  store i32 0, i32* %13, align 4
  br label %101

101:                                              ; preds = %117, %94
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = load i64*, i64** %7, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = mul nsw i64 %108, 10
  store i64 %109, i64* %107, align 8
  %110 = load i64*, i64** %7, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 1
  %112 = load i64, i64* %111, align 8
  %113 = mul nsw i64 %112, 10
  %114 = add nsw i64 %113, 9
  %115 = load i64*, i64** %7, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 1
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %101

120:                                              ; preds = %101
  %121 = load i32, i32* %9, align 4
  %122 = load i8*, i8** %5, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %5, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  store i32 5, i32* %4, align 4
  br label %183

129:                                              ; preds = %120
  %130 = load i8*, i8** %5, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 46
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 -1, i32* %4, align 4
  br label %183

135:                                              ; preds = %129
  store i32 4, i32* %8, align 4
  br label %141

136:                                              ; preds = %50
  %137 = load i64*, i64** %7, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  store i64 0, i64* %138, align 8
  %139 = load i64*, i64** %7, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  store i64 4611686018427387904, i64* %140, align 8
  br label %141

141:                                              ; preds = %136, %135
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  switch i32 %145, label %182 [
    i32 98, label %146
    i32 101, label %162
    i32 116, label %172
  ]

146:                                              ; preds = %141
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @strcmp(i8* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %4, align 4
  br label %183

152:                                              ; preds = %146
  %153 = load i8*, i8** %5, align 8
  %154 = call i32 @strcmp(i8* %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %160

157:                                              ; preds = %152
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 16
  br label %160

160:                                              ; preds = %157, %156
  %161 = phi i32 [ -1, %156 ], [ %159, %157 ]
  store i32 %161, i32* %4, align 4
  br label %183

162:                                              ; preds = %141
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 @strcmp(i8* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %170

167:                                              ; preds = %162
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 32
  br label %170

170:                                              ; preds = %167, %166
  %171 = phi i32 [ -1, %166 ], [ %169, %167 ]
  store i32 %171, i32* %4, align 4
  br label %183

172:                                              ; preds = %141
  %173 = load i8*, i8** %5, align 8
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %180

177:                                              ; preds = %172
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 3
  br label %180

180:                                              ; preds = %177, %176
  %181 = phi i32 [ -1, %176 ], [ %179, %177 ]
  store i32 %181, i32* %4, align 4
  br label %183

182:                                              ; preds = %141
  store i32 -1, i32* %4, align 4
  br label %183

183:                                              ; preds = %182, %180, %170, %160, %150, %134, %128, %93, %83, %72, %56, %27, %21
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local i64 @strtoll(i8*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
