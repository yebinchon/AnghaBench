; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_decode_base85.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_decode_base85.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid base85 input\00", align 1
@base85_decode = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_buf_decode_base85(%struct.TYPE_4__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = urem i64 %19, 5
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = mul i64 %24, 4
  %26 = udiv i64 %25, 5
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %4
  %29 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %30 = call i32 @git_error_set(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %149

31:                                               ; preds = %22
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %11, i64 %32, i32 %36)
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %11, i64 %38, i32 1)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 @ENSURE_SIZE(%struct.TYPE_4__* %40, i64 %41)
  br label %43

43:                                               ; preds = %127, %31
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %128

46:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  store i32 4, i32* %14, align 4
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %7, align 8
  %50 = load i8, i8* %48, align 1
  store i8 %50, i8* %15, align 1
  %51 = load i32*, i32** @base85_decode, align 8
  %52 = load i8, i8* %15, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %136

60:                                               ; preds = %47
  %61 = load i32, i32* %12, align 4
  %62 = mul i32 %61, 85
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %62, %63
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %47, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  %72 = load i8, i8* %70, align 1
  store i8 %72, i8* %15, align 1
  %73 = load i32*, i32** @base85_decode, align 8
  %74 = load i8, i8* %15, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %136

82:                                               ; preds = %69
  %83 = load i32, i32* %12, align 4
  %84 = icmp ult i32 50529027, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = sub i32 -1, %86
  %88 = load i32, i32* %12, align 4
  %89 = mul i32 %88, 85
  store i32 %89, i32* %12, align 4
  %90 = icmp ult i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %82
  br label %136

92:                                               ; preds = %85
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %12, align 4
  %96 = load i64, i64* %9, align 8
  %97 = icmp ult i64 %96, 4
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i64, i64* %9, align 8
  %100 = trunc i64 %99 to i32
  br label %102

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i32 [ %100, %98 ], [ 4, %101 ]
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %9, align 8
  %107 = sub i64 %106, %105
  store i64 %107, i64* %9, align 8
  br label %108

108:                                              ; preds = %123, %102
  %109 = load i32, i32* %12, align 4
  %110 = shl i32 %109, 8
  %111 = load i32, i32* %12, align 4
  %112 = lshr i32 %111, 24
  %113 = or i32 %110, %112
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = getelementptr inbounds i32, i32* %117, i64 %120
  store i32 %114, i32* %122, align 4
  br label %123

123:                                              ; preds = %108
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %108, label %127

127:                                              ; preds = %123
  br label %43

128:                                              ; preds = %43
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store i32 0, i32* %135, align 4
  store i32 0, i32* %5, align 4
  br label %149

136:                                              ; preds = %91, %81, %59
  %137 = load i64, i64* %10, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  store i32 0, i32* %146, align 4
  %147 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %148 = call i32 @git_error_set(i32 %147, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %149

149:                                              ; preds = %136, %128, %28
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i32 @ENSURE_SIZE(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
