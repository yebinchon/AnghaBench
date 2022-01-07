; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_Sys_ConcatenateFileLists.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_files.c_Sys_ConcatenateFileLists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i8**)* @Sys_ConcatenateFileLists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @Sys_ConcatenateFileLists(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i8** null, i8*** %6, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = call i64 @Sys_CountFileList(i8** %9)
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %10
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i8**, i8*** %4, align 8
  %16 = call i64 @Sys_CountFileList(i8** %15)
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = call i8** @Z_Malloc(i32 %25)
  store i8** %26, i8*** %6, align 8
  store i8** %26, i8*** %7, align 8
  %27 = load i8**, i8*** %3, align 8
  %28 = icmp ne i8** %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %2
  %30 = load i8**, i8*** %3, align 8
  store i8** %30, i8*** %8, align 8
  br label %31

31:                                               ; preds = %39, %29
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i8**, i8*** %8, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %35
  %40 = load i8**, i8*** %8, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %8, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %7, align 8
  br label %31

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %2
  %46 = load i8**, i8*** %4, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load i8**, i8*** %4, align 8
  store i8** %49, i8*** %8, align 8
  br label %50

50:                                               ; preds = %58, %48
  %51 = load i8**, i8*** %8, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i8**, i8*** %8, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i8**, i8*** %7, align 8
  store i8* %56, i8** %57, align 8
  br label %58

58:                                               ; preds = %54
  %59 = load i8**, i8*** %8, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %8, align 8
  %61 = load i8**, i8*** %7, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %7, align 8
  br label %50

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i8**, i8*** %7, align 8
  store i8* null, i8** %65, align 8
  %66 = load i8**, i8*** %3, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i8**, i8*** %3, align 8
  %70 = call i32 @Z_Free(i8** %69)
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i8**, i8*** %4, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i8**, i8*** %4, align 8
  %76 = call i32 @Z_Free(i8** %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i8**, i8*** %6, align 8
  ret i8** %78
}

declare dso_local i64 @Sys_CountFileList(i8**) #1

declare dso_local i8** @Z_Malloc(i32) #1

declare dso_local i32 @Z_Free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
