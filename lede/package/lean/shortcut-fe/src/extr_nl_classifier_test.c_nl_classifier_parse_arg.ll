; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_nl_classifier_test.c_nl_classifier_parse_arg.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_nl_classifier_test.c_nl_classifier_parse_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [101 x i8] c"help: nl_classifier <v4|v6> <udp|tcp> <source ip> <destination ip> <source port> <destination port>\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"v4\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"v6\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Address family is not supported\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@IPPROTO_UDP = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@IPPROTO_TCP = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Protocol is not supported\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"source ip has wrong format\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"destination ip has wrong format\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"nl classifier parse arguments successful\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_classifier_parse_arg(i32 %0, i8** %1, i8* %2, i64* %3, i64* %4, i16* %5, i16* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  store i32 %0, i32* %10, align 4
  store i8** %1, i8*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i16* %5, i16** %15, align 8
  store i16* %6, i16** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 7
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = call i32 @printf(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %106

24:                                               ; preds = %8
  %25 = load i8**, i8*** %11, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %29 = icmp eq i64 0, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @AF_INET, align 4
  %32 = load i32*, i32** %17, align 8
  store i32 %31, i32* %32, align 4
  br label %45

33:                                               ; preds = %24
  %34 = load i8**, i8*** %11, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %38 = icmp eq i64 0, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @AF_INET6, align 4
  %41 = load i32*, i32** %17, align 8
  store i32 %40, i32* %41, align 4
  br label %44

42:                                               ; preds = %33
  %43 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %106

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i8**, i8*** %11, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strncmp(i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %50 = icmp eq i64 0, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i8, i8* @IPPROTO_UDP, align 1
  %53 = load i8*, i8** %12, align 8
  store i8 %52, i8* %53, align 1
  br label %66

54:                                               ; preds = %45
  %55 = load i8**, i8*** %11, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strncmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %59 = icmp eq i64 0, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i8, i8* @IPPROTO_TCP, align 1
  %62 = load i8*, i8** %12, align 8
  store i8 %61, i8* %62, align 1
  br label %65

63:                                               ; preds = %54
  %64 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %106

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i32*, i32** %17, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i8**, i8*** %11, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 3
  %71 = load i8*, i8** %70, align 8
  %72 = load i64*, i64** %13, align 8
  %73 = call i32 @inet_pton(i32 %68, i8* %71, i64* %72)
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %106

78:                                               ; preds = %66
  %79 = load i32*, i32** %17, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i8**, i8*** %11, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 4
  %83 = load i8*, i8** %82, align 8
  %84 = load i64*, i64** %14, align 8
  %85 = call i32 @inet_pton(i32 %80, i8* %83, i64* %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %106

90:                                               ; preds = %78
  %91 = load i8**, i8*** %11, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 5
  %93 = load i8*, i8** %92, align 8
  %94 = call zeroext i16 @strtol(i8* %93, i32* null, i32 0)
  store i16 %94, i16* %19, align 2
  %95 = load i16, i16* %19, align 2
  %96 = call zeroext i16 @htons(i16 zeroext %95)
  %97 = load i16*, i16** %15, align 8
  store i16 %96, i16* %97, align 2
  %98 = load i8**, i8*** %11, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 6
  %100 = load i8*, i8** %99, align 8
  %101 = call zeroext i16 @strtol(i8* %100, i32* null, i32 0)
  store i16 %101, i16* %19, align 2
  %102 = load i16, i16* %19, align 2
  %103 = call zeroext i16 @htons(i16 zeroext %102)
  %104 = load i16*, i16** %16, align 8
  store i16 %103, i16* %104, align 2
  %105 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %90, %88, %76, %63, %42, %22
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @inet_pton(i32, i8*, i64*) #1

declare dso_local zeroext i16 @strtol(i8*, i32*, i32) #1

declare dso_local zeroext i16 @htons(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
