; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_search_generate_new_key.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_search_generate_new_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_slice_limit = common dso_local global i64 0, align 8
@Q_limit = common dso_local global i64 0, align 8
@Q_limit_ptr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%d%%\00", align 1
@Q_limit_end = common dso_local global i8* null, align 8
@Q_raw = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @search_generate_new_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_generate_new_key(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i64, i64* @Q_slice_limit, align 8
  %14 = load i64, i64* @Q_limit, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %95

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %95

24:                                               ; preds = %16
  %25 = load i64, i64* @Q_limit, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %95

27:                                               ; preds = %24
  %28 = load i64, i64* @Q_slice_limit, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %95

30:                                               ; preds = %27
  %31 = load i8*, i8** @Q_limit_ptr, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %95

33:                                               ; preds = %30
  %34 = load i8*, i8** @Q_limit_ptr, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ult i32 %40, 2048
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i64, i64* @Q_slice_limit, align 8
  %53 = call i64 @sprintf(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8*, i8** @Q_limit_end, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ult i32 %67, 2048
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8*, i8** @Q_limit_end, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @memcpy(i8* %74, i8* %75, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 3
  %83 = icmp slt i32 %80, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %5, align 4
  br label %170

95:                                               ; preds = %30, %27, %24, %16, %4
  %96 = load i64, i64* @Q_raw, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @memcpy(i8* %99, i8* %100, i32 %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %5, align 4
  br label %170

105:                                              ; preds = %95
  %106 = load i8*, i8** %7, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 35
  br i1 %112, label %113, label %140

113:                                              ; preds = %105
  %114 = load i8*, i8** %6, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  %118 = call i32 @memcpy(i8* %114, i8* %115, i32 %117)
  %119 = load i8*, i8** %6, align 8
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  store i8 37, i8* %123, align 1
  %124 = load i8*, i8** %6, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = getelementptr inbounds i8, i8* %127, i64 2
  %129 = load i8*, i8** %7, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %10, align 4
  %136 = sub nsw i32 %134, %135
  %137 = call i32 @memcpy(i8* %128, i8* %133, i32 %136)
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %170

140:                                              ; preds = %105
  %141 = load i8*, i8** %6, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @memcpy(i8* %141, i8* %142, i32 %143)
  %145 = load i8*, i8** %6, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  store i8 35, i8* %148, align 1
  %149 = load i8*, i8** %6, align 8
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  store i8 37, i8* %153, align 1
  %154 = load i8*, i8** %6, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = getelementptr inbounds i8, i8* %157, i64 2
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %10, align 4
  %165 = sub nsw i32 %163, %164
  %166 = add nsw i32 %165, 1
  %167 = call i32 @memcpy(i8* %158, i8* %162, i32 %166)
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 2
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %140, %113, %98, %33
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
