; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_parse_options.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_tftp_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tftp_option_negotiation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Format error: option isn't NUL-terminated.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"blksize\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"tsize\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tftp_parse_options(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i8*], align 16
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i32 -1, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %29, align 8
  store i32 0, i32* %4, align 4
  br label %146

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i8* %31, i8** %35, align 8
  br label %36

36:                                               ; preds = %141, %30
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %145

39:                                               ; preds = %36
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 -1
  store i8 44, i8* %49, align 1
  br label %50

50:                                               ; preds = %47, %39
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %78, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @tftp_fetch_string(i8* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @tftp_option_negotiation, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8** %65, align 8
  store i32 -1, i32* %4, align 4
  br label %146

66:                                               ; preds = %54
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 %69
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %66
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %51

81:                                               ; preds = %51
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %83 = load i8*, i8** %82, align 16
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @atoi(i8* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp sge i32 %90, 8
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load i32, i32* %8, align 4
  %94 = icmp sle i32 %93, 65464
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 8
  br label %101

101:                                              ; preds = %95, %92, %86
  br label %102

102:                                              ; preds = %101, %81
  %103 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %104 = load i8*, i8** %103, align 16
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %123, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @atoi(i8* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp sge i32 %111, 1
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  %115 = icmp sle i32 %114, 255
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 4
  br label %122

122:                                              ; preds = %116, %113, %107
  br label %123

123:                                              ; preds = %122, %102
  %124 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %125 = load i8*, i8** %124, align 16
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @atoi(i8* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  store i32 %135, i32* %139, align 8
  br label %140

140:                                              ; preds = %134, %128
  br label %141

141:                                              ; preds = %140, %123
  %142 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 -1
  store i8 61, i8* %144, align 1
  br label %36

145:                                              ; preds = %36
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %60, %25
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @tftp_fetch_string(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
