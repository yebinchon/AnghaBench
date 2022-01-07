; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkzynfw.c_write_out_file.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkzynfw.c_write_out_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csum_state = type { i32 }

@FILE_BUF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"writing out file, name=%s, len=%zu\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unable to open file: %s\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"unable to read from file: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_out_file(i32* %0, i8* %1, i64 %2, %struct.csum_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.csum_state*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.csum_state* %3, %struct.csum_state** %9, align 8
  %16 = load i32, i32* @FILE_BUF_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store i64 %17, i64* %12, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %20, i64 %21)
  store i64 0, i64* @errno, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %13, align 8
  %25 = load i64, i64* @errno, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @ERRS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %65

30:                                               ; preds = %4
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i64, i64* %8, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %38, %34
  store i64 0, i64* @errno, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @fread(i8* %19, i64 %41, i32 1, i32* %42)
  %44 = load i64, i64* @errno, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @ERRS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  store i32 -1, i32* %14, align 4
  br label %61

49:                                               ; preds = %40
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.csum_state*, %struct.csum_state** %9, align 8
  %53 = call i32 @write_out_data(i32* %50, i8* %19, i64 %51, %struct.csum_state* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %61

57:                                               ; preds = %49
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %8, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %8, align 8
  br label %31

61:                                               ; preds = %56, %46, %31
  %62 = load i32*, i32** %13, align 8
  %63 = call i32 @fclose(i32* %62)
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %65

65:                                               ; preds = %61, %27
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DBG(i32, i8*, i8*, i64) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @ERRS(i8*, i8*) #2

declare dso_local i32 @fread(i8*, i64, i32, i32*) #2

declare dso_local i32 @write_out_data(i32*, i8*, i64, %struct.csum_state*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
