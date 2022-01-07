; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_cmd_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_cmd_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERR_CYRILIC_SYMBOL = common dso_local global i32 0, align 4
@RESERVED_WORDS_HASHTABLE_SIZE = common dso_local global i32 0, align 4
@RESERVED_WORDS_H = common dso_local global i8** null, align 8
@reserved_words = common dso_local global i32 0, align 4
@unperfect_hash = common dso_local global i32 0, align 4
@ERR_UNKNOWN_RESERVED_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @get_cmd_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cmd_f(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %7, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %8, align 1
  %19 = load i8, i8* %8, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @ERR_CYRILIC_SYMBOL, align 4
  store i32 %23, i32* %3, align 4
  br label %89

24:                                               ; preds = %15
  %25 = load i8, i8* %8, align 1
  %26 = call i64 @islower(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8, i8* %8, align 1
  %30 = call signext i8 @toupper(i8 signext %29)
  store i8 %30, i8* %8, align 1
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %6, align 4
  %33 = mul i32 %32, 131
  store i32 %33, i32* %6, align 4
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load i32, i32* @RESERVED_WORDS_HASHTABLE_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %67, %38
  %44 = load i8**, i8*** @RESERVED_WORDS_H, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %43
  %51 = load i8*, i8** %4, align 8
  %52 = load i8**, i8*** @RESERVED_WORDS_H, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcasecmp(i8* %51, i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %89

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @RESERVED_WORDS_HASHTABLE_SIZE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %61
  br label %43

68:                                               ; preds = %43
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = load i8**, i8*** @RESERVED_WORDS_H, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %72, i8** %76, align 8
  %77 = load i32, i32* @reserved_words, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @reserved_words, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @unperfect_hash, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* @unperfect_hash, align 4
  br label %85

85:                                               ; preds = %82, %71
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %89

87:                                               ; preds = %68
  %88 = load i32, i32* @ERR_UNKNOWN_RESERVED_WORD, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %85, %59, %22
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @islower(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
