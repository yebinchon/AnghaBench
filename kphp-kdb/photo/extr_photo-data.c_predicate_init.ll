; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_predicate_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_predicate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CONDITION_LEN = common dso_local global i64 0, align 8
@MAX_PREDICATES = common dso_local global i32 0, align 4
@close_bracket = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"MAX_PREDICATES exceeded on condition %s\0A\00", align 1
@i_logical = common dso_local global i64 0, align 8
@i_cmp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @predicate_init(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %22, 1
  %24 = load i64, i64* @MAX_CONDITION_LEN, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14, %2
  store i32* null, i32** %3, align 8
  br label %161

27:                                               ; preds = %20
  %28 = load i32, i32* @MAX_PREDICATES, align 4
  %29 = mul nsw i32 %28, 2
  %30 = add nsw i32 %29, 2
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %7, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %135, %27
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @MAX_PREDICATES, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MAX_PREDICATES, align 4
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 %50, 1
  %52 = icmp slt i32 %48, %51
  br label %53

53:                                               ; preds = %47, %42, %34
  %54 = phi i1 [ false, %42 ], [ false, %34 ], [ %52, %47 ]
  br i1 %54, label %55, label %138

55:                                               ; preds = %53
  %56 = load i32*, i32** @close_bracket, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 -1, i32* %59, align 4
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 40
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %33, i64 %71
  store i32 %68, i32* %72, align 4
  br label %134

73:                                               ; preds = %55
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 41
  br i1 %80, label %81, label %95

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %159

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = load i32*, i32** @close_bracket, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %33, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %87, i64 %93
  store i32 %86, i32* %94, align 4
  br label %133

95:                                               ; preds = %73
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 124
  br i1 %102, label %103, label %112

103:                                              ; preds = %95
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 124
  br i1 %111, label %129, label %112

112:                                              ; preds = %103, %95
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 38
  br i1 %119, label %120, label %132

120:                                              ; preds = %112
  %121 = load i8*, i8** %4, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 38
  br i1 %128, label %129, label %132

129:                                              ; preds = %120, %103
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %129, %120, %112
  br label %133

133:                                              ; preds = %132, %85
  br label %134

134:                                              ; preds = %133, %67
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %34

138:                                              ; preds = %53
  %139 = load i8*, i8** %4, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 @wrn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %146)
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %159

148:                                              ; preds = %138
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32* null, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %159

152:                                              ; preds = %148
  store i64 0, i64* @i_logical, align 8
  store i64 0, i64* @i_cmp, align 8
  %153 = load i8*, i8** %4, align 8
  %154 = load i8*, i8** %4, align 8
  %155 = call i64 @strlen(i8* %154)
  %156 = sub nsw i64 %155, 1
  %157 = load i32, i32* %5, align 4
  %158 = call i32* @predicate_parce(i8* %153, i32 0, i64 %156, i32 %157)
  store i32* %158, i32** %3, align 8
  store i32 1, i32* %11, align 4
  br label %159

159:                                              ; preds = %152, %151, %145, %84
  %160 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %160)
  br label %161

161:                                              ; preds = %159, %26
  %162 = load i32*, i32** %3, align 8
  ret i32* %162
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @wrn(i8*, i8*) #1

declare dso_local i32* @predicate_parce(i8*, i32, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
