; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tsort.c_count_run.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tsort.c_count_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsort_store = type { i64 (i8*, i8*, i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32, %struct.tsort_store*)* @count_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_run(i8** %0, i32 %1, i32 %2, %struct.tsort_store* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tsort_store*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.tsort_store* %3, %struct.tsort_store** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %14, %15
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %165

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 2
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %19
  %25 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %26 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %25, i32 0, i32 0
  %27 = load i64 (i8*, i8*, i32)*, i64 (i8*, i8*, i32)** %26, align 8
  %28 = load i8**, i8*** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %28, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i8**, i8*** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %41 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 %27(i8* %33, i8* %39, i32 %42)
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %24
  %46 = load i8**, i8*** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %11, align 8
  %52 = load i8**, i8*** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %58, i64 %61
  store i8* %57, i8** %62, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i8**, i8*** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  store i8* %63, i8** %68, align 8
  br label %69

69:                                               ; preds = %45, %24
  store i32 2, i32* %5, align 4
  br label %165

70:                                               ; preds = %19
  %71 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %72 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %71, i32 0, i32 0
  %73 = load i64 (i8*, i8*, i32)*, i64 (i8*, i8*, i32)** %72, align 8
  %74 = load i8**, i8*** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i8**, i8*** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %86 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 %73(i8* %78, i8* %84, i32 %87)
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %90, label %125

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %118, %90
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %91
  %97 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %98 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %97, i32 0, i32 0
  %99 = load i64 (i8*, i8*, i32)*, i64 (i8*, i8*, i32)** %98, align 8
  %100 = load i8**, i8*** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %112 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i64 %99(i8* %105, i8* %110, i32 %113)
  %115 = icmp sle i64 %114, 0
  br label %116

116:                                              ; preds = %96, %91
  %117 = phi i1 [ false, %91 ], [ %115, %96 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %91

121:                                              ; preds = %116
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %5, align 4
  br label %165

125:                                              ; preds = %70
  br label %126

126:                                              ; preds = %153, %125
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %8, align 4
  %129 = sub nsw i32 %128, 1
  %130 = icmp slt i32 %127, %129
  br i1 %130, label %131, label %151

131:                                              ; preds = %126
  %132 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %133 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %132, i32 0, i32 0
  %134 = load i64 (i8*, i8*, i32)*, i64 (i8*, i8*, i32)** %133, align 8
  %135 = load i8**, i8*** %6, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %135, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = load i8**, i8*** %6, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.tsort_store*, %struct.tsort_store** %9, align 8
  %147 = getelementptr inbounds %struct.tsort_store, %struct.tsort_store* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i64 %134(i8* %140, i8* %145, i32 %148)
  %150 = icmp sgt i64 %149, 0
  br label %151

151:                                              ; preds = %131, %126
  %152 = phi i1 [ false, %126 ], [ %150, %131 ]
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %126

156:                                              ; preds = %151
  %157 = load i8**, i8*** %6, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %10, align 4
  %160 = sub nsw i32 %159, 1
  %161 = call i32 @reverse_elements(i8** %157, i32 %158, i32 %160)
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %7, align 4
  %164 = sub nsw i32 %162, %163
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %156, %121, %69, %18
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @reverse_elements(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
