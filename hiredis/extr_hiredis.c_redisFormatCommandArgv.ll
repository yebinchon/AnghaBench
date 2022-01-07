; ModuleID = '/home/carl/AnghaBench/hiredis/extr_hiredis.c_redisFormatCommandArgv.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_hiredis.c_redisFormatCommandArgv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"*%d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"$%zu\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redisFormatCommandArgv(i8** %0, i32 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = load i8**, i8*** %6, align 8
  %16 = icmp eq i8** %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %138

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @countDigits(i32 %19)
  %21 = add nsw i32 1, %20
  %22 = add nsw i32 %21, 2
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %51, %18
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load i64*, i64** %9, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64*, i64** %9, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  br label %43

36:                                               ; preds = %27
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = phi i64 [ %35, %30 ], [ %42, %36 ]
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i64 @bulklen(i64 %45)
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  br label %23

54:                                               ; preds = %23
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i8* @malloc(i32 %56)
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %138

61:                                               ; preds = %54
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %64)
  store i32 %65, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %66

66:                                               ; preds = %122, %61
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %125

70:                                               ; preds = %66
  %71 = load i64*, i64** %9, align 8
  %72 = icmp ne i64* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i64*, i64** %9, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  br label %86

79:                                               ; preds = %70
  %80 = load i8**, i8*** %8, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strlen(i8* %84)
  br label %86

86:                                               ; preds = %79, %73
  %87 = phi i64 [ %78, %73 ], [ %85, %79 ]
  store i64 %87, i64* %12, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @sprintf(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %11, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8**, i8*** %8, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = call i32 @memcpy(i8* %99, i8* %104, i64 %105)
  %107 = load i64, i64* %12, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %11, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8 13, i8* %116, align 1
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8 10, i8* %121, align 1
  br label %122

122:                                              ; preds = %86
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %66

125:                                              ; preds = %66
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i8*, i8** %10, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %10, align 8
  %136 = load i8**, i8*** %6, align 8
  store i8* %135, i8** %136, align 8
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %125, %60, %17
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @countDigits(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @bulklen(i64) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
