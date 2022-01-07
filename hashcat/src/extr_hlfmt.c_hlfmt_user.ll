; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hlfmt.c_hlfmt_user.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hlfmt.c_hlfmt_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hlfmt_user(i32* %0, i32 %1, i8* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %42 [
    i32 131, label %14
    i32 129, label %21
    i32 130, label %28
    i32 128, label %35
  ]

14:                                               ; preds = %6
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i8**, i8*** %11, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32 @hlfmt_user_hashcat(i32* %15, i8* %16, i32 %17, i8** %18, i32* %19)
  br label %42

21:                                               ; preds = %6
  %22 = load i32*, i32** %7, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i8**, i8*** %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @hlfmt_user_pwdump(i32* %22, i8* %23, i32 %24, i8** %25, i32* %26)
  br label %42

28:                                               ; preds = %6
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i8**, i8*** %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @hlfmt_user_passwd(i32* %29, i8* %30, i32 %31, i8** %32, i32* %33)
  br label %42

35:                                               ; preds = %6
  %36 = load i32*, i32** %7, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i8**, i8*** %11, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @hlfmt_user_shadow(i32* %36, i8* %37, i32 %38, i8** %39, i32* %40)
  br label %42

42:                                               ; preds = %6, %35, %28, %21, %14
  ret void
}

declare dso_local i32 @hlfmt_user_hashcat(i32*, i8*, i32, i8**, i32*) #1

declare dso_local i32 @hlfmt_user_pwdump(i32*, i8*, i32, i8**, i32*) #1

declare dso_local i32 @hlfmt_user_passwd(i32*, i8*, i32, i8**, i32*) #1

declare dso_local i32 @hlfmt_user_shadow(i32*, i8*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
