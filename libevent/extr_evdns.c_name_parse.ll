; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_name_parse.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_name_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i8*, i32)* @name_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @name_parse(i32* %0, i32 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** %10, align 8
  store i8* %21, i8** %15, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %16, align 8
  br label %26

26:                                               ; preds = %117, %84, %5
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %148

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %17, align 4
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  br label %132

43:                                               ; preds = %39
  %44 = load i32, i32* %17, align 4
  %45 = and i32 %44, 192
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %148

53:                                               ; preds = %48
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %18, align 4
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* %17, align 4
  %67 = and i32 %66, 63
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %65
  store i32 -1, i32* %6, align 4
  br label %149

78:                                               ; preds = %73
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 -1, i32* %6, align 4
  br label %149

84:                                               ; preds = %78
  br label %26

85:                                               ; preds = %43
  %86 = load i32, i32* %17, align 4
  %87 = icmp sgt i32 %86, 63
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 -1, i32* %6, align 4
  br label %149

89:                                               ; preds = %85
  %90 = load i8*, i8** %15, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ne i8* %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i8*, i8** %15, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8*, i8** %16, align 8
  %97 = icmp uge i8* %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 -1, i32* %6, align 4
  br label %149

99:                                               ; preds = %93
  %100 = load i8*, i8** %15, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %15, align 8
  store i8 46, i8* %100, align 1
  br label %102

102:                                              ; preds = %99, %89
  %103 = load i8*, i8** %15, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8*, i8** %16, align 8
  %108 = icmp uge i8* %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store i32 -1, i32* %6, align 4
  br label %149

110:                                              ; preds = %102
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %8, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 -1, i32* %6, align 4
  br label %149

117:                                              ; preds = %110
  %118 = load i8*, i8** %15, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @memcpy(i8* %118, i32* %122, i32 %123)
  %125 = load i32, i32* %17, align 4
  %126 = load i8*, i8** %15, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %15, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %13, align 4
  br label %26

132:                                              ; preds = %42
  %133 = load i8*, i8** %15, align 8
  %134 = load i8*, i8** %16, align 8
  %135 = icmp uge i8* %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 -1, i32* %6, align 4
  br label %149

137:                                              ; preds = %132
  %138 = load i8*, i8** %15, align 8
  store i8 0, i8* %138, align 1
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %13, align 4
  %143 = load i32*, i32** %9, align 8
  store i32 %142, i32* %143, align 4
  br label %147

144:                                              ; preds = %137
  %145 = load i32, i32* %12, align 4
  %146 = load i32*, i32** %9, align 8
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %141
  store i32 0, i32* %6, align 4
  br label %149

148:                                              ; preds = %52, %31
  store i32 -1, i32* %6, align 4
  br label %149

149:                                              ; preds = %148, %147, %136, %116, %109, %98, %88, %83, %77
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
