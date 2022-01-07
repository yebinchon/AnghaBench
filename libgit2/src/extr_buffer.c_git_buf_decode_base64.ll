; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_decode_base64.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_buffer.c_git_buf_decode_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8* }

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid base64 input\00", align 1
@base64_decode = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_buf_decode_base64(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %7, align 8
  %19 = urem i64 %18, 4
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %23 = call i32 @git_error_set(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %161

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  %26 = urem i64 %25, 4
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i64, i64* %7, align 8
  %31 = udiv i64 %30, 4
  %32 = mul i64 %31, 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %14, i64 %32, i32 %36)
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %14, i64 %38, i32 1)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @ENSURE_SIZE(%struct.TYPE_4__* %40, i64 %41)
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %150, %24
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %153

47:                                               ; preds = %43
  %48 = load i32*, i32** @base64_decode, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i32, i32* %48, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %90, label %57

57:                                               ; preds = %47
  %58 = load i32*, i32** @base64_decode, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %90, label %68

68:                                               ; preds = %57
  %69 = load i32*, i32** @base64_decode, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 2
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds i32, i32* %69, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %68
  %80 = load i32*, i32** @base64_decode, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, 3
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds i32, i32* %80, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %79, %68, %57, %47
  %91 = load i64, i64* %13, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i8, i8* %96, i64 %99
  store i8 0, i8* %100, align 1
  %101 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %102 = call i32 @git_error_set(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %161

103:                                              ; preds = %79
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 %104, 2
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, 48
  %108 = ashr i32 %107, 4
  %109 = or i32 %105, %108
  %110 = trunc i32 %109 to i8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  %118 = getelementptr inbounds i8, i8* %113, i64 %116
  store i8 %110, i8* %118, align 1
  %119 = load i32, i32* %10, align 4
  %120 = and i32 %119, 15
  %121 = shl i32 %120, 4
  %122 = load i32, i32* %11, align 4
  %123 = and i32 %122, 60
  %124 = ashr i32 %123, 2
  %125 = or i32 %121, %124
  %126 = trunc i32 %125 to i8
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 %126, i8* %134, align 1
  %135 = load i32, i32* %11, align 4
  %136 = and i32 %135, 3
  %137 = shl i32 %136, 6
  %138 = load i32, i32* %12, align 4
  %139 = and i32 %138, 63
  %140 = or i32 %137, %139
  %141 = trunc i32 %140 to i8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = getelementptr inbounds i8, i8* %144, i64 %147
  store i8 %141, i8* %149, align 1
  br label %150

150:                                              ; preds = %103
  %151 = load i64, i64* %8, align 8
  %152 = add i64 %151, 4
  store i64 %152, i64* %8, align 8
  br label %43

153:                                              ; preds = %43
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  store i8 0, i8* %160, align 1
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %153, %90, %21
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i32) #1

declare dso_local i32 @ENSURE_SIZE(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
