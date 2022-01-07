; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-parse.c_np_parse_list_str.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-parse.c_np_parse_list_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @np_parse_list_str(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %118, %5
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %131

25:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  store i32 1, i32* %16, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isdigit(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %146

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %67, %39
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %10, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isdigit(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i1 [ false, %40 ], [ %48, %44 ]
  br i1 %50, label %51, label %68

51:                                               ; preds = %49
  %52 = load i32, i32* %15, align 4
  %53 = icmp sgt i32 %52, 214748364
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 -1, i32* %6, align 4
  br label %146

55:                                               ; preds = %51
  %56 = load i32, i32* %15, align 4
  %57 = mul nsw i32 %56, 10
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %10, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i32
  %62 = sub nsw i32 %61, 48
  %63 = add nsw i32 %57, %62
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store i32 -1, i32* %6, align 4
  br label %146

67:                                               ; preds = %55
  br label %40

68:                                               ; preds = %49
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %97, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ult i8* %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i8*, i8** %10, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 95, i32 44
  %96 = icmp ne i32 %91, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88, %80
  store i32 -1, i32* %6, align 4
  br label %146

98:                                               ; preds = %88, %84
  %99 = load i32, i32* %15, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %13, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = icmp eq i8* %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %98
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %116

112:                                              ; preds = %108
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sdiv i32 %113, %114
  br label %116

116:                                              ; preds = %112, %111
  %117 = phi i32 [ -1, %111 ], [ %115, %112 ]
  store i32 %117, i32* %6, align 4
  br label %146

118:                                              ; preds = %98
  %119 = load i8*, i8** %10, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 95, i32 44
  %126 = icmp eq i32 %121, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %10, align 8
  br label %21

131:                                              ; preds = %21
  %132 = load i8*, i8** %10, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = icmp eq i8* %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %144

140:                                              ; preds = %131
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %9, align 4
  %143 = sdiv i32 %141, %142
  br label %144

144:                                              ; preds = %140, %139
  %145 = phi i32 [ -1, %139 ], [ %143, %140 ]
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %144, %116, %97, %66, %54, %38
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
