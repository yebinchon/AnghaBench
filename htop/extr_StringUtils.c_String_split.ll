; ModuleID = '/home/carl/AnghaBench/htop/extr_StringUtils.c_String_split.c'
source_filename = "/home/carl/AnghaBench/htop/extr_StringUtils.c_String_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @String_split(i8* %0, i8 signext %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  store i32 0, i32* %16, align 4
  store i32 10, i32* %7, align 4
  %17 = call i8** @xCalloc(i32 10, i32 8)
  store i8** %17, i8*** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 10, i32* %10, align 4
  br label %18

18:                                               ; preds = %60, %3
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %5, align 1
  %21 = call i8* @strchr(i8* %19, i8 signext %20)
  store i8* %21, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %18
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i8* @xMalloc(i32 %31)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @strncpy(i8* %33, i8* %34, i32 %35)
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %13, align 8
  %42 = load i8**, i8*** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %41, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %23
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 10
  store i32 %53, i32* %10, align 4
  %54 = load i8**, i8*** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 8, %56
  %58 = trunc i64 %57 to i32
  %59 = call i8** @xRealloc(i8** %54, i32 %58)
  store i8** %59, i8*** %8, align 8
  br label %60

60:                                               ; preds = %51, %23
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i8*, i8** %4, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8* %65, i8** %4, align 8
  br label %18

66:                                               ; preds = %18
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %66
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @strlen(i8* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i8* @xMalloc(i32 %76)
  store i8* %77, i8** %15, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @strncpy(i8* %78, i8* %79, i32 %81)
  %83 = load i8*, i8** %15, align 8
  %84 = load i8**, i8*** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  store i8* %83, i8** %87, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %72, %66
  %91 = load i8**, i8*** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = mul i64 8, %94
  %96 = trunc i64 %95 to i32
  %97 = call i8** @xRealloc(i8** %91, i32 %96)
  store i8** %97, i8*** %8, align 8
  %98 = load i8**, i8*** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  store i8* null, i8** %101, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32*, i32** %6, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i8**, i8*** %8, align 8
  ret i8** %104
}

declare dso_local i8** @xCalloc(i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @xMalloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8** @xRealloc(i8**, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
