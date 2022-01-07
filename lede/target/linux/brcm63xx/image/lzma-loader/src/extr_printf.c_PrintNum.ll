; ModuleID = '/home/carl/AnghaBench/lede/target/linux/brcm63xx/image/lzma-loader/src/extr_printf.c_PrintNum.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/brcm63xx/image/lzma-loader/src/extr_printf.c_PrintNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, i32, i32, i32, i8, i32)* @PrintNum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrintNum(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8 signext %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8 %6, i8* %15, align 1
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %24 = load i8*, i8** %9, align 8
  store i8* %24, i8** %18, align 8
  br label %25

25:                                               ; preds = %62, %8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = urem i64 %26, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = icmp sle i32 %31, 9
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load i32, i32* %20, align 4
  %35 = add nsw i32 48, %34
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** %18, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %18, align 8
  store i8 %36, i8* %37, align 1
  br label %57

39:                                               ; preds = %25
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* %20, align 4
  %44 = add nsw i32 65, %43
  %45 = sub nsw i32 %44, 10
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %18, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %18, align 8
  store i8 %46, i8* %47, align 1
  br label %56

49:                                               ; preds = %39
  %50 = load i32, i32* %20, align 4
  %51 = add nsw i32 97, %50
  %52 = sub nsw i32 %51, 10
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %18, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %18, align 8
  store i8 %53, i8* %54, align 1
  br label %56

56:                                               ; preds = %49, %42
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %10, align 8
  %61 = udiv i64 %60, %59
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %25, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i8*, i8** %18, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %18, align 8
  store i8 45, i8* %69, align 1
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i8*, i8** %18, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %71
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %81, %71
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i8 32, i8* %15, align 1
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %120, label %93

93:                                               ; preds = %90
  %94 = load i8, i8* %15, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 48
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load i32, i32* %17, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %19, align 4
  br label %100

100:                                              ; preds = %111, %97
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %102, 1
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load i8, i8* %15, align 1
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8 %106, i8* %110, align 1
  br label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  br label %100

114:                                              ; preds = %100
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  store i8 45, i8* %119, align 1
  br label %136

120:                                              ; preds = %93, %90, %87
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %19, align 4
  br label %122

122:                                              ; preds = %132, %120
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load i8, i8* %15, align 1
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 %127, i8* %131, align 1
  br label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %19, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %19, align 4
  br label %122

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %114
  store i32 0, i32* %21, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %17, align 4
  %141 = sub nsw i32 %140, 1
  store i32 %141, i32* %22, align 4
  br label %145

142:                                              ; preds = %136
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %22, align 4
  br label %145

145:                                              ; preds = %142, %139
  br label %146

146:                                              ; preds = %150, %145
  %147 = load i32, i32* %22, align 4
  %148 = load i32, i32* %21, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %174

150:                                              ; preds = %146
  %151 = load i8*, i8** %9, align 8
  %152 = load i32, i32* %21, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i8, i8* %154, align 1
  store i8 %155, i8* %23, align 1
  %156 = load i8*, i8** %9, align 8
  %157 = load i32, i32* %22, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = load i8*, i8** %9, align 8
  %162 = load i32, i32* %21, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  store i8 %160, i8* %164, align 1
  %165 = load i8, i8* %23, align 1
  %166 = load i8*, i8** %9, align 8
  %167 = load i32, i32* %22, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  store i8 %165, i8* %169, align 1
  %170 = load i32, i32* %21, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %21, align 4
  %172 = load i32, i32* %22, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %22, align 4
  br label %146

174:                                              ; preds = %146
  %175 = load i32, i32* %13, align 4
  ret i32 %175
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
