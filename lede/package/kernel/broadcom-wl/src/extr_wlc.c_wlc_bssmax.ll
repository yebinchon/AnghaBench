; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_bssmax.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_bssmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GET = common dso_local global i32 0, align 4
@interface = common dso_local global i32 0, align 4
@wlbuf = common dso_local global i32 0, align 4
@BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mbss4\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"mbss16\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @wlc_bssmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_bssmax(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i8**
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  store i32 -1, i32* %9, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @GET, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %3
  %20 = load i32, i32* @interface, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* @wlbuf, align 4
  %23 = load i32, i32* @BUFSIZE, align 4
  %24 = call i32 @wl_iovar_get(i32 %20, i8* %21, i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @wlbuf, align 4
  %29 = call i64 @strstr(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  store i32 4, i32* %32, align 4
  br label %42

33:                                               ; preds = %27
  %34 = load i32, i32* @wlbuf, align 4
  %35 = call i64 @strstr(i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  store i32 16, i32* %38, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %19
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @wl_iovar_get(i32, i8*, i32, i32) #1

declare dso_local i64 @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
