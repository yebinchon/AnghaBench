; ModuleID = '/home/carl/AnghaBench/htop/openbsd/extr_OpenBSDProcessList.c_OpenBSDProcessList_readProcessName.c'
source_filename = "/home/carl/AnghaBench/htop/openbsd/extr_OpenBSDProcessList.c_OpenBSDProcessList_readProcessName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @OpenBSDProcessList_readProcessName(i32* %0, %struct.kinfo_proc* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kinfo_proc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %10, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %15 = call i8** @kvm_getargv(i32* %13, %struct.kinfo_proc* %14, i32 500)
  store i8** %15, i8*** %9, align 8
  %16 = load i8**, i8*** %9, align 8
  %17 = icmp eq i8** %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i8**, i8*** %9, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %18, %3
  %23 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %24 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %29 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @xStrdup(i8* %30)
  store i8* %31, i8** %4, align 8
  br label %103

32:                                               ; preds = %18
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %51, %32
  %34 = load i8**, i8*** %9, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load i8**, i8*** %9, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %10, align 8
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %33

54:                                               ; preds = %33
  %55 = load i64, i64* %10, align 8
  %56 = call i8* @malloc(i64 %55)
  store i8* %56, i8** %8, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %60 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %65 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @xStrdup(i8* %66)
  store i8* %67, i8** %4, align 8
  br label %103

68:                                               ; preds = %54
  %69 = load i8*, i8** %8, align 8
  store i8 0, i8* %69, align 1
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %98, %68
  %71 = load i8**, i8*** %9, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %101

77:                                               ; preds = %70
  %78 = load i8*, i8** %8, align 8
  %79 = load i8**, i8*** %9, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @strlcat(i8* %78, i8* %83, i64 %84)
  store i64 %85, i64* %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %77
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %10, align 8
  %91 = sub i64 %90, 1
  %92 = call i32 @MINIMUM(i64 %89, i64 %91)
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %77
  %95 = load i8*, i8** %8, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @strlcat(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %96)
  br label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %70

101:                                              ; preds = %70
  %102 = load i8*, i8** %8, align 8
  store i8* %102, i8** %4, align 8
  br label %103

103:                                              ; preds = %101, %58, %22
  %104 = load i8*, i8** %4, align 8
  ret i8* %104
}

declare dso_local i8** @kvm_getargv(i32*, %struct.kinfo_proc*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xStrdup(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @MINIMUM(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
