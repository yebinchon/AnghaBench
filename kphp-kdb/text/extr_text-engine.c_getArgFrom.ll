; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_getArgFrom.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_getArgFrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getArgFrom(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %145, %5
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %146

25:                                               ; preds = %21
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** %14, align 8
  br label %27

27:                                               ; preds = %45, %25
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 61
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 38
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br label %43

43:                                               ; preds = %41, %27
  %44 = phi i1 [ false, %27 ], [ %42, %41 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  br label %27

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 0, i8* %54, align 1
  store i32 -1, i32* %6, align 4
  br label %149

55:                                               ; preds = %48
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 61
  br i1 %59, label %60, label %123

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = icmp eq i64 %62, %67
  br i1 %68, label %69, label %120

69:                                               ; preds = %60
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @memcmp(i8* %70, i8* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %120, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %10, align 8
  store i8* %77, i8** %14, align 8
  br label %78

78:                                               ; preds = %89, %75
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = icmp ult i8* %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i8*, i8** %10, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 38
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i1 [ false, %78 ], [ %86, %82 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %10, align 8
  br label %78

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %8, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %92
  %104 = load i8*, i8** %10, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %103, %92
  %111 = load i8*, i8** %7, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @memcpy(i8* %111, i8* %112, i32 %113)
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %6, align 4
  br label %149

120:                                              ; preds = %69, %60
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %10, align 8
  br label %123

123:                                              ; preds = %120, %55
  br label %124

124:                                              ; preds = %135, %123
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = icmp ult i8* %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load i8*, i8** %10, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 38
  br label %133

133:                                              ; preds = %128, %124
  %134 = phi i1 [ false, %124 ], [ %132, %128 ]
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %10, align 8
  br label %124

138:                                              ; preds = %133
  %139 = load i8*, i8** %10, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = icmp ult i8* %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i8*, i8** %10, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %10, align 8
  br label %145

145:                                              ; preds = %142, %138
  br label %21

146:                                              ; preds = %21
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  store i8 0, i8* %148, align 1
  store i32 -1, i32* %6, align 4
  br label %149

149:                                              ; preds = %146, %110, %52
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
