; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_conv_ipv6_internal.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_conv_ipv6_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"::ffff:%d.%d.%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%x:\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c":%x\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conv_ipv6_internal(i16* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i16* %0, i16** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = load i16*, i16** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16, i16* %15, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = icmp ne i16 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %21
  store i32 0, i32* %7, align 4
  br label %32

29:                                               ; preds = %14
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %28
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %11

36:                                               ; preds = %11
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @memcpy(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 3)
  store i32 2, i32* %3, align 4
  br label %173

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = load i16*, i16** %4, align 8
  %47 = getelementptr inbounds i16, i16* %46, i64 5
  %48 = load i16, i16* %47, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %49, 65535
  br i1 %50, label %51, label %75

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = load i16*, i16** %4, align 8
  %54 = getelementptr inbounds i16, i16* %53, i64 6
  %55 = load i16, i16* %54, align 2
  %56 = zext i16 %55 to i32
  %57 = and i32 %56, 255
  %58 = trunc i32 %57 to i16
  %59 = load i16*, i16** %4, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 6
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = ashr i32 %62, 8
  %64 = load i16*, i16** %4, align 8
  %65 = getelementptr inbounds i16, i16* %64, i64 7
  %66 = load i16, i16* %65, align 2
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 255
  %69 = load i16*, i16** %4, align 8
  %70 = getelementptr inbounds i16, i16* %69, i64 7
  %71 = load i16, i16* %70, align 2
  %72 = zext i16 %71 to i32
  %73 = ashr i32 %72, 8
  %74 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %58, i32 %63, i32 %68, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %173

75:                                               ; preds = %45, %42
  %76 = load i8*, i8** %5, align 8
  store i8* %76, i8** %10, align 8
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %133

79:                                               ; preds = %75
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %99, %79
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %82, %83
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = load i8*, i8** %10, align 8
  %88 = load i16*, i16** %4, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, i16* %88, i64 %90
  %92 = load i16, i16* %91, align 2
  %93 = call i32 @ntohs(i16 zeroext %92)
  %94 = trunc i32 %93 to i16
  %95 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %94)
  %96 = load i8*, i8** %10, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %10, align 8
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %80

102:                                              ; preds = %80
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp eq i32 %106, 8
  br i1 %107, label %108, label %111

108:                                              ; preds = %105, %102
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %10, align 8
  store i8 58, i8* %109, align 1
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %129, %111
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 8
  br i1 %115, label %116, label %132

116:                                              ; preds = %113
  %117 = load i8*, i8** %10, align 8
  %118 = load i16*, i16** %4, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i16, i16* %118, i64 %120
  %122 = load i16, i16* %121, align 2
  %123 = call i32 @ntohs(i16 zeroext %122)
  %124 = trunc i32 %123 to i16
  %125 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %124)
  %126 = load i8*, i8** %10, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %10, align 8
  br label %129

129:                                              ; preds = %116
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %113

132:                                              ; preds = %113
  br label %166

133:                                              ; preds = %75
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %150, %133
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 7
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load i8*, i8** %10, align 8
  %139 = load i16*, i16** %4, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i16, i16* %139, i64 %141
  %143 = load i16, i16* %142, align 2
  %144 = call i32 @ntohs(i16 zeroext %143)
  %145 = trunc i32 %144 to i16
  %146 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %145)
  %147 = load i8*, i8** %10, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %10, align 8
  br label %150

150:                                              ; preds = %137
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %134

153:                                              ; preds = %134
  %154 = load i8*, i8** %10, align 8
  %155 = load i16*, i16** %4, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i16, i16* %155, i64 %157
  %159 = load i16, i16* %158, align 2
  %160 = call i32 @ntohs(i16 zeroext %159)
  %161 = trunc i32 %160 to i16
  %162 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i16 zeroext %161)
  %163 = load i8*, i8** %10, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %10, align 8
  br label %166

166:                                              ; preds = %153, %132
  %167 = load i8*, i8** %10, align 8
  %168 = load i8*, i8** %5, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %166, %51, %39
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i16 zeroext, ...) #1

declare dso_local i32 @ntohs(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
