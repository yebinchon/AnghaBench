; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_proctitle.c_uv_setup_args.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_proctitle.c_uv_setup_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@process_title = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@args_mem = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @uv_setup_args(i32 %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  store i8** %13, i8*** %3, align 8
  br label %124

14:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %7, align 8
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @process_title, i32 0, i32 0), align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %37, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %43, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %42, i64 %50
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %51 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @process_title, i32 0, i32 1), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @process_title, i32 0, i32 1), align 8
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 8
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i8** @uv__malloc(i64 %72)
  store i8** %73, i8*** %6, align 8
  %74 = load i8**, i8*** %6, align 8
  %75 = icmp eq i8** %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %33
  %77 = load i8**, i8*** %5, align 8
  store i8** %77, i8*** %3, align 8
  br label %124

78:                                               ; preds = %33
  %79 = load i8**, i8*** %6, align 8
  store i8** %79, i8*** @args_mem, align 8
  %80 = load i8**, i8*** %6, align 8
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %80, i64 %83
  %85 = bitcast i8** %84 to i8*
  store i8* %85, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %115, %78
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %118

90:                                               ; preds = %86
  %91 = load i8**, i8*** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %7, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i8**, i8*** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @memcpy(i8* %99, i8* %104, i64 %105)
  %107 = load i8*, i8** %8, align 8
  %108 = load i8**, i8*** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  store i8* %107, i8** %111, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 %112
  store i8* %114, i8** %8, align 8
  br label %115

115:                                              ; preds = %90
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %86

118:                                              ; preds = %86
  %119 = load i8**, i8*** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  store i8* null, i8** %122, align 8
  %123 = load i8**, i8*** %6, align 8
  store i8** %123, i8*** %3, align 8
  br label %124

124:                                              ; preds = %118, %76, %12
  %125 = load i8**, i8*** %3, align 8
  ret i8** %125
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8** @uv__malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
