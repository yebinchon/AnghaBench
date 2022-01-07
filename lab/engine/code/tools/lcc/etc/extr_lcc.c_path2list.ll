; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_path2list.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/etc/extr_lcc.c_path2list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @path2list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @path2list(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca [512 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  store i8 58, i8* %5, align 1
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %79

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 59)
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i8 59, i8* %5, align 1
  br label %16

16:                                               ; preds = %15, %11
  br label %17

17:                                               ; preds = %74, %16
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %5, align 1
  %24 = call i8* @strchr(i8* %22, i8 signext %23)
  store i8* %24, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = icmp ult i64 %31, 512
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @strncpy(i8* %35, i8* %36, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 %48
  store i8 0, i8* %49, align 1
  br label %60

50:                                               ; preds = %21
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 512
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @strcpy(i8* %57, i8* %58)
  br label %60

60:                                               ; preds = %50, %26
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @find(i8* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %67 = call i32 @strsave(i8* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32* @append(i32 %67, i32* %68)
  store i32* %69, i32** %4, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i8*, i8** %6, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %77

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %3, align 8
  br label %17

77:                                               ; preds = %73, %17
  %78 = load i32*, i32** %4, align 8
  store i32* %78, i32** %2, align 8
  br label %79

79:                                               ; preds = %77, %10
  %80 = load i32*, i32** %2, align 8
  ret i32* %80
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @find(i8*, i32*) #1

declare dso_local i32* @append(i32, i32*) #1

declare dso_local i32 @strsave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
