; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_otrx.c_otrx_extract_copy.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_otrx.c_otrx_extract_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Couldn't open %s\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't alloc %zu B buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Couldn't read %zu B of data from %s\0A\00", align 1
@trx_path = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Couldn't write %zu B to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Extracted 0x%zx bytes into %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i8*)* @otrx_extract_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otrx_extract_copy(i32* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @EACCES, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  br label %78

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = call i32* @malloc(i64 %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @stderr, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  br label %75

34:                                               ; preds = %23
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i32 @fseek(i32* %35, i64 %36, i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @fread(i32* %39, i32 1, i64 %40, i32* %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %34
  %47 = load i32, i32* @stderr, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i8*, i8** @trx_path, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %48, i8* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %12, align 4
  br label %72

53:                                               ; preds = %34
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i64 @fwrite(i32* %54, i32 1, i64 %55, i32* %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load i32, i32* @stderr, align 4
  %63 = load i64, i64* %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %63, i8* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %12, align 4
  br label %72

68:                                               ; preds = %53
  %69 = load i64, i64* %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %69, i8* %70)
  br label %72

72:                                               ; preds = %68, %61, %46
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @free(i32* %73)
  br label %75

75:                                               ; preds = %72, %28
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @fclose(i32* %76)
  br label %78

78:                                               ; preds = %75, %17
  %79 = load i32, i32* %12, align 4
  ret i32 %79
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @fread(i32*, i32, i64, i32*) #1

declare dso_local i64 @fwrite(i32*, i32, i64, i32*) #1

declare dso_local i32 @printf(i8*, i64, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
