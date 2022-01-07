; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_Platform.c_Platform_getProcessEnv.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_Platform.c_Platform_getProcessEnv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_ARGMAX = common dso_local global i32 0, align 4
@KERN_PROCARGS2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Platform_getProcessEnv(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %3, align 8
  store i64 4, i64* %5, align 8
  %13 = load i32, i32* @CTL_KERN, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @KERN_ARGMAX, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %18 = call i64 (i32*, i32, ...) @sysctl(i32* %17, i32 2, i32* %4, i64* %5, i32 0, i32 0)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %123

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = call i8* @xMalloc(i64 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %122

26:                                               ; preds = %20
  %27 = load i32, i32* @CTL_KERN, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @KERN_PROCARGS2, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %2, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %8, align 8
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 (i32*, i32, ...) @sysctl(i32* %35, i32 3, i8* %36, i64* %8, i32 0, i32 0)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %119

39:                                               ; preds = %26
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %40, 4
  br i1 %41, label %42, label %118

42:                                               ; preds = %39
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i8* @strchr(i8* %52, i32 0)
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %9, align 8
  br label %55

55:                                               ; preds = %65, %42
  %56 = load i8*, i8** %9, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ult i8* %60, %61
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ false, %55 ], [ %62, %59 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  br label %55

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %11, align 4
  %72 = icmp ne i32 %70, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = icmp ult i8* %74, %75
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ false, %69 ], [ %76, %73 ]
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79
  %81 = load i8*, i8** %9, align 8
  %82 = call i8* @strrchr(i8* %81, i32 0)
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8* %83, i8** %9, align 8
  br label %69

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %95, %84
  %86 = load i8*, i8** %9, align 8
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ult i8* %90, %91
  br label %93

93:                                               ; preds = %89, %85
  %94 = phi i1 [ false, %85 ], [ %92, %89 ]
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  br label %85

98:                                               ; preds = %93
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  store i64 %103, i64* %12, align 8
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %104, 2
  %106 = call i8* @xMalloc(i64 %105)
  store i8* %106, i8** %3, align 8
  %107 = load i8*, i8** %3, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @memcpy(i8* %107, i8* %108, i64 %109)
  %111 = load i8*, i8** %3, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %3, align 8
  %115 = load i64, i64* %12, align 8
  %116 = add i64 %115, 1
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 0, i8* %117, align 1
  br label %118

118:                                              ; preds = %98, %39
  br label %119

119:                                              ; preds = %118, %26
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @free(i8* %120)
  br label %122

122:                                              ; preds = %119, %20
  br label %123

123:                                              ; preds = %122, %1
  %124 = load i8*, i8** %3, align 8
  ret i8* %124
}

declare dso_local i64 @sysctl(i32*, i32, ...) #1

declare dso_local i8* @xMalloc(i64) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
