; ModuleID = '/home/carl/AnghaBench/htop/dragonflybsd/extr_DragonFlyBSDProcessList.c_DragonFlyBSDProcessList_readProcessName.c'
source_filename = "/home/carl/AnghaBench/htop/dragonflybsd/extr_DragonFlyBSDProcessList.c_DragonFlyBSDProcessList_readProcessName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @DragonFlyBSDProcessList_readProcessName(i32* %0, %struct.kinfo_proc* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kinfo_proc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %16 = call i8** @kvm_getargv(i32* %14, %struct.kinfo_proc* %15, i32 0)
  store i8** %16, i8*** %8, align 8
  %17 = load i8**, i8*** %8, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.kinfo_proc*, %struct.kinfo_proc** %6, align 8
  %21 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @xStrdup(i32 %22)
  store i8* %23, i8** %4, align 8
  br label %90

24:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i8**, i8*** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  %33 = load i8**, i8*** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %38, 1
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %25

47:                                               ; preds = %25
  %48 = load i32, i32* %9, align 4
  %49 = call i8* @xMalloc(i32 %48)
  store i8* %49, i8** %11, align 8
  %50 = load i8*, i8** %11, align 8
  store i8* %50, i8** %12, align 8
  %51 = load i32*, i32** %7, align 8
  store i32 0, i32* %51, align 4
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %82, %47
  %53 = load i8**, i8*** %8, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %85

59:                                               ; preds = %52
  %60 = load i8*, i8** %12, align 8
  %61 = load i8**, i8*** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @stpcpy(i8* %60, i8* %65)
  store i8* %66, i8** %12, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %59
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %70, %59
  %79 = load i8*, i8** %12, align 8
  store i8 32, i8* %79, align 1
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %12, align 8
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %52

85:                                               ; preds = %52
  %86 = load i8*, i8** %12, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 -1
  store i8* %87, i8** %12, align 8
  %88 = load i8*, i8** %12, align 8
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %11, align 8
  store i8* %89, i8** %4, align 8
  br label %90

90:                                               ; preds = %85, %19
  %91 = load i8*, i8** %4, align 8
  ret i8* %91
}

declare dso_local i8** @kvm_getargv(i32*, %struct.kinfo_proc*, i32) #1

declare dso_local i8* @xStrdup(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @xMalloc(i32) #1

declare dso_local i8* @stpcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
