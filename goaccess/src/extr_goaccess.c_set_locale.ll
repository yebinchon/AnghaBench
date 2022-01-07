; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_set_locale.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_goaccess.c_set_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_locale() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @LC_ALL, align 4
  %3 = call i32 @setlocale(i32 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @PACKAGE, align 4
  %5 = load i32, i32* @LOCALEDIR, align 4
  %6 = call i32 @bindtextdomain(i32 %4, i32 %5)
  %7 = load i32, i32* @PACKAGE, align 4
  %8 = call i32 @textdomain(i32 %7)
  %9 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i32, i32* @LC_CTYPE, align 4
  %14 = load i8*, i8** %1, align 8
  %15 = call i32 @setlocale(i32 %13, i8* %14)
  br label %27

16:                                               ; preds = %0
  %17 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %17, i8** %1, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @LC_CTYPE, align 4
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @setlocale(i32 %20, i8* %21)
  br label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @LC_CTYPE, align 4
  %25 = call i32 @setlocale(i32 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %26, %12
  ret void
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i8* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
