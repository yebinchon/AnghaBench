; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xmerge.c_xdl_recs_copy_0.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xmerge.c_xdl_recs_copy_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_8__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, i32, i32, i32, i32, i8*)* @xdl_recs_copy_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdl_recs_copy_0(i32 %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_8__**, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %7
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %23, align 8
  br label %30

25:                                               ; preds = %7
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %28, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi %struct.TYPE_8__** [ %24, %20 ], [ %29, %25 ]
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %31, i64 %33
  store %struct.TYPE_8__** %34, %struct.TYPE_8__*** %16, align 8
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %136

38:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %67, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %39
  %44 = load i8*, i8** %15, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load i8*, i8** %15, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %51, i64 %53
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %58, i64 %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i8* %50, i8* %57, i32 %64)
  br label %66

66:                                               ; preds = %46, %43
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %68, i64 %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %17, align 4
  br label %39

78:                                               ; preds = %39
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %134

81:                                               ; preds = %78
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %82, i64 %85
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %108, label %92

92:                                               ; preds = %81
  %93 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %16, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %93, i64 %96
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 10
  br i1 %107, label %108, label %133

108:                                              ; preds = %92, %81
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load i8*, i8** %15, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i8*, i8** %15, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 13, i8* %118, align 1
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %119, %108
  %123 = load i8*, i8** %15, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i8*, i8** %15, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 10, i8* %129, align 1
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %130, %92
  br label %134

134:                                              ; preds = %133, %78
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %134, %37
  %137 = load i32, i32* %8, align 4
  ret i32 %137
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
