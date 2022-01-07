; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_smart_pkt.c_parse_len.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_smart_pkt.c_parse_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PKT_LEN_SIZE = common dso_local global i32 0, align 4
@GIT_EBUFS = common dso_local global i32 0, align 4
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid hex digit in length: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*, i64)* @parse_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_len(i64* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @PKT_LEN_SIZE, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i32, i32* @PKT_LEN_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @GIT_EBUFS, align 4
  store i32 %26, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %85

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* @PKT_LEN_SIZE, align 4
  %30 = call i32 @memcpy(i8* %20, i8* %28, i32 %29)
  %31 = load i32, i32* @PKT_LEN_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %20, i64 %32
  store i8 0, i8* %33, align 1
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %69, %27
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @PKT_LEN_SIZE, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %20, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @isxdigit(i8 signext %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %62, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @PKT_LEN_SIZE, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %20, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @isprint(i8 signext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %20, i64 %59
  store i8 46, i8* %60, align 1
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %46

65:                                               ; preds = %46
  %66 = load i32, i32* @GIT_ERROR_NET, align 4
  %67 = call i32 @git_error_set(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %85

68:                                               ; preds = %38
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %34

72:                                               ; preds = %34
  %73 = load i32, i32* @PKT_LEN_SIZE, align 4
  %74 = call i32 @git__strntol32(i64* %13, i8* %20, i32 %73, i8** %14, i32 16)
  store i32 %74, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %85

78:                                               ; preds = %72
  %79 = load i64, i64* %13, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %85

82:                                               ; preds = %78
  %83 = load i64, i64* %13, align 8
  %84 = load i64*, i64** %5, align 8
  store i64 %83, i64* %84, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %85

85:                                               ; preds = %82, %81, %76, %65, %25
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @isxdigit(i8 signext) #2

declare dso_local i32 @isprint(i8 signext) #2

declare dso_local i32 @git_error_set(i32, i8*, i8*) #2

declare dso_local i32 @git__strntol32(i64*, i8*, i32, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
