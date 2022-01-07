; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_parse_format.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_parse_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @parse_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_format(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = bitcast [3 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %12, i8 0, i64 3, i1 false)
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  store i8* %13, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32 1, i32* %3, align 4
  br label %132

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %8, align 8
  br label %24

24:                                               ; preds = %128, %22
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %131

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %128

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %128

42:                                               ; preds = %34
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 126
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %128

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load i8*, i8** %5, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %61
  store i32 0, i32* %3, align 4
  br label %132

70:                                               ; preds = %64
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @special_specifier(i32* %71, i8** %5, i8** %8)
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %132

75:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %127

76:                                               ; preds = %56, %53
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %112

79:                                               ; preds = %76
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %79
  %85 = load i8*, i8** %5, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %84
  store i32 0, i32* %3, align 4
  br label %132

93:                                               ; preds = %87
  %94 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %95 = call i32 @memset(i8* %94, i32 0, i32 3)
  %96 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 @get_delim(i8* %96, i8* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %102 = call i32 @parse_specifier(i32* %99, i8** %5, i8* %100, i8* %101)
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  store i32 1, i32* %3, align 4
  br label %132

105:                                              ; preds = %93
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8*, i8** %8, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %8, align 8
  br label %111

111:                                              ; preds = %108, %105
  store i32 0, i32* %9, align 4
  br label %126

112:                                              ; preds = %79, %76
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = call i64 @isspace(i8 signext %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 1, i32* %3, align 4
  br label %132

122:                                              ; preds = %115, %112
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %5, align 8
  br label %125

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %125, %111
  br label %127

127:                                              ; preds = %126, %75
  br label %128

128:                                              ; preds = %127, %50, %39, %33
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %8, align 8
  br label %24

131:                                              ; preds = %24
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %121, %104, %92, %74, %69, %21
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @special_specifier(i32*, i8**, i8**) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @get_delim(i8*, i8*) #2

declare dso_local i32 @parse_specifier(i32*, i8**, i8*, i8*) #2

declare dso_local i64 @isspace(i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
