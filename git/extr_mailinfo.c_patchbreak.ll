; ModuleID = '/home/carl/AnghaBench/git/extr_mailinfo.c_patchbreak.c'
source_filename = "/home/carl/AnghaBench/git/extr_mailinfo.c_patchbreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"diff -\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Index: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*)* @patchbreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patchbreak(%struct.strbuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  %6 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %7 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @starts_with(i8* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %78

12:                                               ; preds = %1
  %13 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %14 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @starts_with(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %78

19:                                               ; preds = %12
  %20 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %78

25:                                               ; preds = %19
  %26 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @starts_with(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %77

31:                                               ; preds = %25
  %32 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 32
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @isspace(i8 zeroext %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %78

48:                                               ; preds = %39, %31
  store i64 3, i64* %4, align 8
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  %57 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %5, align 1
  %63 = load i8, i8* %5, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 1, i32* %2, align 4
  br label %78

67:                                               ; preds = %56
  %68 = load i8, i8* %5, align 1
  %69 = call i32 @isspace(i8 zeroext %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %76

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %4, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %4, align 8
  br label %49

76:                                               ; preds = %71, %49
  store i32 0, i32* %2, align 4
  br label %78

77:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %76, %66, %47, %24, %18, %11
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
