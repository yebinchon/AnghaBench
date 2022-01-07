; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_serialize_collection.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_serialize_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.collection = type { i32, i32* }

@serialize_collection.buff = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"i:%d;i:%d;\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d_%d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"i:%d;s:%d:\22%s\22;\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"i:%d;a:%d:{i:0;i:%d;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, %struct.collection*, i32, i32, i32)* @serialize_collection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @serialize_collection(i8* %0, i32 %1, %struct.collection* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.collection*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.collection* %2, %struct.collection** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.collection*, %struct.collection** %10, align 8
  %18 = getelementptr inbounds %struct.collection, %struct.collection* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.collection*, %struct.collection** %10, align 8
  %24 = getelementptr inbounds %struct.collection, %struct.collection* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %66

28:                                               ; preds = %6
  %29 = load i32, i32* %13, align 4
  %30 = icmp sle i32 %29, 1
  br i1 %30, label %31, label %66

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.collection*, %struct.collection** %10, align 8
  %39 = getelementptr inbounds %struct.collection, %struct.collection* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42)
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %35, i64 %44
  store i8* %45, i8** %7, align 8
  br label %146

46:                                               ; preds = %31
  %47 = load %struct.collection*, %struct.collection** %10, align 8
  %48 = getelementptr inbounds %struct.collection, %struct.collection* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 32
  %53 = load %struct.collection*, %struct.collection** %10, align 8
  %54 = getelementptr inbounds %struct.collection, %struct.collection* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @serialize_collection.buff, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %57)
  store i32 %58, i32* %14, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @serialize_collection.buff, i64 0, i64 0))
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  store i8* %65, i8** %7, align 8
  br label %146

66:                                               ; preds = %28, %6
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %13, align 4
  br label %85

81:                                               ; preds = %72
  %82 = load %struct.collection*, %struct.collection** %10, align 8
  %83 = getelementptr inbounds %struct.collection, %struct.collection* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  br label %85

85:                                               ; preds = %81, %79
  %86 = phi i32 [ %80, %79 ], [ %84, %81 ]
  %87 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %76, i32 %86)
  %88 = load i8*, i8** %8, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %8, align 8
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %139, %85
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %142

95:                                               ; preds = %91
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  %102 = load %struct.collection*, %struct.collection** %10, align 8
  %103 = getelementptr inbounds %struct.collection, %struct.collection* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %108)
  %110 = load i8*, i8** %8, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %8, align 8
  br label %138

113:                                              ; preds = %95
  %114 = load %struct.collection*, %struct.collection** %10, align 8
  %115 = getelementptr inbounds %struct.collection, %struct.collection* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 32
  %122 = load %struct.collection*, %struct.collection** %10, align 8
  %123 = getelementptr inbounds %struct.collection, %struct.collection* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @serialize_collection.buff, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %128)
  store i32 %129, i32* %14, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %131, 1
  %133 = load i32, i32* %14, align 4
  %134 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @serialize_collection.buff, i64 0, i64 0))
  %135 = load i8*, i8** %8, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %8, align 8
  br label %138

138:                                              ; preds = %113, %98
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %16, align 4
  br label %91

142:                                              ; preds = %91
  %143 = load i8*, i8** %8, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %8, align 8
  store i8 125, i8* %143, align 1
  %145 = load i8*, i8** %8, align 8
  store i8* %145, i8** %7, align 8
  br label %146

146:                                              ; preds = %142, %46, %34
  %147 = load i8*, i8** %7, align 8
  ret i8* %147
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
