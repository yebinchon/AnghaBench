; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xutils.c_xdl_format_hunk_hdr.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xutils.c_xdl_format_hunk_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (i32, %struct.TYPE_6__*, i32)*, i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"@@ -\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" @@\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i8*, i64, %struct.TYPE_5__*)* @xdl_format_hunk_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdl_format_hunk_hdr(i64 %0, i64 %1, i64 %2, i64 %3, i8* %4, i64 %5, %struct.TYPE_5__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__, align 8
  %18 = alloca [128 x i8], align 16
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %20 = call i32 @memcpy(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 4)
  %21 = load i32, i32* %16, align 4
  %22 = add nsw i32 %21, 4
  store i32 %22, i32* %16, align 4
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %24 = load i32, i32* %16, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i64, i64* %9, align 8
  br label %34

31:                                               ; preds = %7
  %32 = load i64, i64* %9, align 8
  %33 = sub nsw i64 %32, 1
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i64 [ %30, %29 ], [ %33, %31 ]
  %36 = call i64 @xdl_num_out(i8* %26, i64 %35)
  %37 = load i32, i32* %16, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %16, align 4
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 1
  br i1 %42, label %43, label %61

43:                                               ; preds = %34
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = call i32 @memcpy(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %16, align 4
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i64, i64* %10, align 8
  %56 = call i64 @xdl_num_out(i8* %54, i64 %55)
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %43, %34
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i32 @memcpy(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2)
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %16, align 4
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i64, i64* %11, align 8
  br label %80

77:                                               ; preds = %61
  %78 = load i64, i64* %11, align 8
  %79 = sub nsw i64 %78, 1
  br label %80

80:                                               ; preds = %77, %75
  %81 = phi i64 [ %76, %75 ], [ %79, %77 ]
  %82 = call i64 @xdl_num_out(i8* %72, i64 %81)
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %16, align 4
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 1
  br i1 %88, label %89, label %107

89:                                               ; preds = %80
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = call i32 @memcpy(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %16, align 4
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i64, i64* %12, align 8
  %102 = call i64 @xdl_num_out(i8* %100, i64 %101)
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %89, %80
  %108 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = call i32 @memcpy(i8* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 3)
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 3
  store i32 %114, i32* %16, align 4
  %115 = load i8*, i8** %13, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %149

117:                                              ; preds = %107
  %118 = load i64, i64* %14, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %149

120:                                              ; preds = %117
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %16, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 %123
  store i8 32, i8* %124, align 1
  %125 = load i64, i64* %14, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 128, %127
  %129 = sub i64 %128, 1
  %130 = icmp ugt i64 %125, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %120
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = sub i64 128, %133
  %135 = sub i64 %134, 1
  store i64 %135, i64* %14, align 8
  br label %136

136:                                              ; preds = %131, %120
  %137 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8*, i8** %13, align 8
  %142 = load i64, i64* %14, align 8
  %143 = call i32 @memcpy(i8* %140, i8* %141, i64 %142)
  %144 = load i64, i64* %14, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %144
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %16, align 4
  br label %149

149:                                              ; preds = %136, %117, %107
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 %152
  store i8 10, i8* %153, align 1
  %154 = getelementptr inbounds [128 x i8], [128 x i8]* %18, i64 0, i64 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i8* %154, i8** %155, align 8
  %156 = load i32, i32* %16, align 4
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %156, i32* %157, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64 (i32, %struct.TYPE_6__*, i32)*, i64 (i32, %struct.TYPE_6__*, i32)** %159, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i64 %160(i32 %163, %struct.TYPE_6__* %17, i32 1)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %149
  store i32 -1, i32* %8, align 4
  br label %168

167:                                              ; preds = %149
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %167, %166
  %169 = load i32, i32* %8, align 4
  ret i32 %169
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @xdl_num_out(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
