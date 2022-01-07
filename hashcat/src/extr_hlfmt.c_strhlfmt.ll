; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hlfmt.c_strhlfmt.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hlfmt.c_strhlfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HLFMT_TEXT_HASHCAT = common dso_local global i8* null, align 8
@HLFMT_TEXT_PWDUMP = common dso_local global i8* null, align 8
@HLFMT_TEXT_PASSWD = common dso_local global i8* null, align 8
@HLFMT_TEXT_SHADOW = common dso_local global i8* null, align 8
@HLFMT_TEXT_DCC = common dso_local global i8* null, align 8
@HLFMT_TEXT_DCC2 = common dso_local global i8* null, align 8
@HLFMT_TEXT_NETNTLM1 = common dso_local global i8* null, align 8
@HLFMT_TEXT_NETNTLM2 = common dso_local global i8* null, align 8
@HLFMT_TEXT_NSLDAP = common dso_local global i8* null, align 8
@HLFMT_TEXT_NSLDAPS = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strhlfmt(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %25 [
    i32 135, label %5
    i32 129, label %7
    i32 130, label %9
    i32 128, label %11
    i32 137, label %13
    i32 136, label %15
    i32 134, label %17
    i32 133, label %19
    i32 132, label %21
    i32 131, label %23
  ]

5:                                                ; preds = %1
  %6 = load i8*, i8** @HLFMT_TEXT_HASHCAT, align 8
  store i8* %6, i8** %2, align 8
  br label %26

7:                                                ; preds = %1
  %8 = load i8*, i8** @HLFMT_TEXT_PWDUMP, align 8
  store i8* %8, i8** %2, align 8
  br label %26

9:                                                ; preds = %1
  %10 = load i8*, i8** @HLFMT_TEXT_PASSWD, align 8
  store i8* %10, i8** %2, align 8
  br label %26

11:                                               ; preds = %1
  %12 = load i8*, i8** @HLFMT_TEXT_SHADOW, align 8
  store i8* %12, i8** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = load i8*, i8** @HLFMT_TEXT_DCC, align 8
  store i8* %14, i8** %2, align 8
  br label %26

15:                                               ; preds = %1
  %16 = load i8*, i8** @HLFMT_TEXT_DCC2, align 8
  store i8* %16, i8** %2, align 8
  br label %26

17:                                               ; preds = %1
  %18 = load i8*, i8** @HLFMT_TEXT_NETNTLM1, align 8
  store i8* %18, i8** %2, align 8
  br label %26

19:                                               ; preds = %1
  %20 = load i8*, i8** @HLFMT_TEXT_NETNTLM2, align 8
  store i8* %20, i8** %2, align 8
  br label %26

21:                                               ; preds = %1
  %22 = load i8*, i8** @HLFMT_TEXT_NSLDAP, align 8
  store i8* %22, i8** %2, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load i8*, i8** @HLFMT_TEXT_NSLDAPS, align 8
  store i8* %24, i8** %2, align 8
  br label %26

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %26

26:                                               ; preds = %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %27 = load i8*, i8** %2, align 8
  ret i8* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
