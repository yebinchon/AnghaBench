; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_parse_loose_header_extended.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_parse_loose_header_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_info = type { i32*, i64*, i64 }

@OBJECT_INFO_ALLOW_UNKNOWN_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid object type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_info*, i32)* @parse_loose_header_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_loose_header_extended(i8* %0, %struct.object_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.object_info* %1, %struct.object_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %27, %3
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %12, align 1
  %19 = load i8, i8* %12, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 -1, i32* %4, align 4
  br label %122

22:                                               ; preds = %15
  %23 = load i8, i8* %12, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  br label %15

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @type_from_string_gently(i8* %31, i32 %32, i32 1)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.object_info*, %struct.object_info** %6, align 8
  %35 = getelementptr inbounds %struct.object_info, %struct.object_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.object_info*, %struct.object_info** %6, align 8
  %40 = getelementptr inbounds %struct.object_info, %struct.object_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @strbuf_add(i64 %41, i8* %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %30
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @OBJECT_INFO_ALLOW_UNKNOWN_TYPE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %10, align 4
  br label %61

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %59 = call i32 @die(i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %53
  %62 = load %struct.object_info*, %struct.object_info** %6, align 8
  %63 = getelementptr inbounds %struct.object_info, %struct.object_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.object_info*, %struct.object_info** %6, align 8
  %69 = getelementptr inbounds %struct.object_info, %struct.object_info* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  %74 = load i8, i8* %72, align 1
  %75 = sext i8 %74 to i32
  %76 = sub nsw i32 %75, 48
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp ugt i64 %78, 9
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %122

81:                                               ; preds = %71
  %82 = load i64, i64* %9, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %94, %84
  %86 = load i8*, i8** %5, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = sub nsw i32 %88, 48
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = icmp ugt i64 %91, 9
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %101

94:                                               ; preds = %85
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %5, align 8
  %97 = load i64, i64* %9, align 8
  %98 = mul i64 %97, 10
  %99 = load i64, i64* %13, align 8
  %100 = add i64 %98, %99
  store i64 %100, i64* %9, align 8
  br label %85

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %81
  %103 = load %struct.object_info*, %struct.object_info** %6, align 8
  %104 = getelementptr inbounds %struct.object_info, %struct.object_info* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.object_info*, %struct.object_info** %6, align 8
  %110 = getelementptr inbounds %struct.object_info, %struct.object_info* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  store i64 %108, i64* %111, align 8
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i8*, i8** %5, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %10, align 4
  br label %120

120:                                              ; preds = %118, %117
  %121 = phi i32 [ -1, %117 ], [ %119, %118 ]
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %80, %21
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @type_from_string_gently(i8*, i32, i32) #1

declare dso_local i32 @strbuf_add(i64, i8*, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
