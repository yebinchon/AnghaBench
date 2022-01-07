; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_shared.c_Info_RemoveKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_shared.c_Info_RemoveKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INFO_KEY = common dso_local global i32 0, align 4
@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@MAX_INFO_STRING = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Info_RemoveKey: oversize infostring\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Info_RemoveKey(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @MAX_INFO_KEY, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @MAX_INFO_VALUE, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = load i64, i64* @MAX_INFO_STRING, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ERR_DROP, align 4
  %24 = call i32 @Com_Error(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strchr(i8* %26, i8 signext 92)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %103

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %102, %30
  br label %32

32:                                               ; preds = %31
  %33 = load i8*, i8** %3, align 8
  store i8* %33, i8** %5, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 92
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %38, %32
  store i8* %14, i8** %9, align 8
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i8*, i8** %3, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 92
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  br label %103

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %3, align 8
  %55 = load i8, i8* %53, align 1
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  store i8 %55, i8* %56, align 1
  br label %42

58:                                               ; preds = %42
  %59 = load i8*, i8** %9, align 8
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  store i8* %17, i8** %9, align 8
  br label %62

62:                                               ; preds = %79, %58
  %63 = load i8*, i8** %3, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 92
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %3, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i1 [ false, %62 ], [ %71, %67 ]
  br i1 %73, label %74, label %85

74:                                               ; preds = %72
  %75 = load i8*, i8** %3, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32 1, i32* %10, align 4
  br label %103

79:                                               ; preds = %74
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %3, align 8
  %82 = load i8, i8* %80, align 1
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  store i8 %82, i8* %83, align 1
  br label %62

85:                                               ; preds = %72
  %86 = load i8*, i8** %9, align 8
  store i8 0, i8* %86, align 1
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @strcmp(i8* %87, i8* %14)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %85
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %3, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = call i64 @strlen(i8* %93)
  %95 = add nsw i64 %94, 1
  %96 = call i32 @memmove(i8* %91, i8* %92, i64 %95)
  store i32 1, i32* %10, align 4
  br label %103

97:                                               ; preds = %85
  %98 = load i8*, i8** %3, align 8
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i32 1, i32* %10, align 4
  br label %103

102:                                              ; preds = %97
  br label %31

103:                                              ; preds = %101, %90, %78, %51, %29
  %104 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %104)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @Com_Error(i32, i8*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
