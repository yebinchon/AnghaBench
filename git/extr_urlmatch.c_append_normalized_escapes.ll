; ModuleID = '/home/carl/AnghaBench/git/extr_urlmatch.c_append_normalized_escapes.c'
source_filename = "/home/carl/AnghaBench/git/extr_urlmatch.c_append_normalized_escapes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@URL_UNSAFE_CHARS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8*, i64, i8*, i8*)* @append_normalized_escapes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_normalized_escapes(%struct.strbuf* %0, i8* %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  br label %14

14:                                               ; preds = %81, %5
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %8, align 8
  %20 = load i8, i8* %18, align 1
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %9, align 8
  %24 = load i32, i32* %12, align 4
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %41

26:                                               ; preds = %17
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %83

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @hex2chr(i8* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %83

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 2
  store i8* %38, i8** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = sub i64 %39, 2
  store i64 %40, i64* %9, align 8
  store i32 1, i32* %13, align 4
  br label %41

41:                                               ; preds = %36, %17
  %42 = load i32, i32* %12, align 4
  %43 = trunc i32 %42 to i8
  %44 = zext i8 %43 to i32
  %45 = icmp sle i32 %44, 31
  br i1 %45, label %72, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  %48 = trunc i32 %47 to i8
  %49 = zext i8 %48 to i32
  %50 = icmp sge i32 %49, 127
  br i1 %50, label %72, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** @URL_UNSAFE_CHARS, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @strchr(i8* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %72, label %56

56:                                               ; preds = %51
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @strchr(i8* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %59, %56
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @strchr(i8* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %59, %51, %46, %41
  %73 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %74 = load i32, i32* %12, align 4
  %75 = trunc i32 %74 to i8
  %76 = call i32 @strbuf_addf(%struct.strbuf* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 zeroext %75)
  br label %81

77:                                               ; preds = %67, %64
  %78 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @strbuf_addch(%struct.strbuf* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %72
  br label %14

82:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %35, %29
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @hex2chr(i8*) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8 zeroext) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
