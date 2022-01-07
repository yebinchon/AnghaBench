; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_pembase64.c_ptls_get_pem_object.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_pembase64.c_ptls_get_pem_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@PTLS_ERROR_PEM_LABEL_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@PTLS_BASE64_DECODE_DONE = common dso_local global i64 0, align 8
@PTLS_BASE64_DECODE_IN_PROGRESS = common dso_local global i64 0, align 8
@PTLS_ERROR_INCORRECT_BASE64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*)* @ptls_get_pem_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptls_get_pem_object(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @PTLS_ERROR_PEM_LABEL_NOT_FOUND, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %23, %3
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @fgets(i8* %12, i32 256, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @ptls_compare_separator_line(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  %22 = call i32 @ptls_base64_decode_init(%struct.TYPE_4__* %9)
  br label %24

23:                                               ; preds = %16
  br label %11

24:                                               ; preds = %21, %11
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @fgets(i8* %29, i32 256, i32* %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %63

35:                                               ; preds = %33
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @ptls_compare_separator_line(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PTLS_BASE64_DECODE_DONE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PTLS_BASE64_DECODE_IN_PROGRESS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %40
  store i32 0, i32* %7, align 4
  br label %57

55:                                               ; preds = %50, %45
  %56 = load i32, i32* @PTLS_ERROR_INCORRECT_BASE64, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %54
  br label %63

58:                                               ; preds = %35
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @ptls_base64_decode(i8* %59, %struct.TYPE_4__* %9, i32* %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58
  br label %25

63:                                               ; preds = %57, %33
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @ptls_compare_separator_line(i8*, i8*, i8*) #1

declare dso_local i32 @ptls_base64_decode_init(%struct.TYPE_4__*) #1

declare dso_local i32 @ptls_base64_decode(i8*, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
