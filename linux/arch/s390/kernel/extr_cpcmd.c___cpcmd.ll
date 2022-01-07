; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cpcmd.c___cpcmd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cpcmd.c___cpcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpcmd_buf = common dso_local global i32 0, align 4
@DIAG_STAT_X008 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cpcmd(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sgt i32 %14, 240
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* @cpcmd_buf, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @memcpy(i32 %18, i8* %19, i32 %20)
  %22 = load i32, i32* @cpcmd_buf, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @ASCEBC(i32 %22, i32 %23)
  %25 = load i32, i32* @DIAG_STAT_X008, align 4
  %26 = call i32 @diag_stat_inc(i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @memset(i8* %30, i32 0, i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @diag8_response(i32 %34, i8* %35, i32* %7)
  store i32 %36, i32* %10, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @EBCASC(i8* %37, i32 %38)
  br label %43

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @diag8_noresponse(i32 %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %29
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ASCEBC(i32, i32) #1

declare dso_local i32 @diag_stat_inc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @diag8_response(i32, i8*, i32*) #1

declare dso_local i32 @EBCASC(i8*, i32) #1

declare dso_local i32 @diag8_noresponse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
