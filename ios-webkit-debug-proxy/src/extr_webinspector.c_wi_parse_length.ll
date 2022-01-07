; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_webinspector.c_wi_parse_length.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_webinspector.c_wi_parse_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*, i8, i8, i8, i8, i32, i32, i32, i32, i64)* }

@WI_ERROR = common dso_local global i32 0, align 4
@MAX_BODY_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Invalid packet header 0x%x%x%x%x == %c%c%c%c == %zd\00", align 1
@WI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wi_parse_length(%struct.TYPE_4__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i64*, i64** %7, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @WI_ERROR, align 4
  store i32 %14, i32* %4, align 4
  br label %149

15:                                               ; preds = %10
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 255
  %21 = shl i32 %20, 24
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 255
  %27 = shl i32 %26, 16
  %28 = or i32 %21, %27
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 255
  %34 = shl i32 %33, 8
  %35 = or i32 %28, %34
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 255
  %41 = or i32 %35, %40
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i64, i64* @MAX_BODY_LENGTH, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %147

46:                                               ; preds = %15
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MAX_BODY_LENGTH, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %147

51:                                               ; preds = %46
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_4__*, i8*, i8, i8, i8, i8, i32, i32, i32, i32, i64)*, i32 (%struct.TYPE_4__*, i8*, i8, i8, i8, i8, i32, i32, i32, i32, i64)** %53, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  %67 = load i8, i8* %66, align 1
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sge i32 %71, 32
  br i1 %72, label %73, label %84

73:                                               ; preds = %51
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp slt i32 %77, 126
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  br label %85

84:                                               ; preds = %73, %51
  br label %85

85:                                               ; preds = %84, %79
  %86 = phi i32 [ %83, %79 ], [ 46, %84 ]
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp sge i32 %90, 32
  br i1 %91, label %92, label %103

92:                                               ; preds = %85
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp slt i32 %96, 126
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  br label %104

103:                                              ; preds = %92, %85
  br label %104

104:                                              ; preds = %103, %98
  %105 = phi i32 [ %102, %98 ], [ 46, %103 ]
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp sge i32 %109, 32
  br i1 %110, label %111, label %122

111:                                              ; preds = %104
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp slt i32 %115, 126
  br i1 %116, label %117, label %122

117:                                              ; preds = %111
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 2
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  br label %123

122:                                              ; preds = %111, %104
  br label %123

123:                                              ; preds = %122, %117
  %124 = phi i32 [ %121, %117 ], [ 46, %122 ]
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 3
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp sge i32 %128, 32
  br i1 %129, label %130, label %141

130:                                              ; preds = %123
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 3
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp slt i32 %134, 126
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  br label %142

141:                                              ; preds = %130, %123
  br label %142

142:                                              ; preds = %141, %136
  %143 = phi i32 [ %140, %136 ], [ 46, %141 ]
  %144 = load i64*, i64** %7, align 8
  %145 = load i64, i64* %144, align 8
  %146 = call i32 %54(%struct.TYPE_4__* %55, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8 signext %58, i8 signext %61, i8 signext %64, i8 signext %67, i32 %86, i32 %105, i32 %124, i32 %143, i64 %145)
  store i32 %146, i32* %4, align 4
  br label %149

147:                                              ; preds = %46, %15
  %148 = load i32, i32* @WI_SUCCESS, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %147, %142, %13
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
