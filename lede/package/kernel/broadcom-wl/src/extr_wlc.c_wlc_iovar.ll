; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_iovar.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_iovar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i32 0, align 4
@PARAM_TYPE = common dso_local global i32 0, align 4
@interface = common dso_local global i32 0, align 4
@GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @wlc_iovar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_iovar(i32 %0, i8* %1, i8* %2) #0 {
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
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SET, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PARAM_TYPE, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %34 [
    i32 129, label %23
    i32 128, label %29
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* @interface, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wl_iovar_setint(i32 %24, i8* %25, i32 %27)
  store i32 %28, i32* %9, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @interface, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @wl_iovar_set(i32 %30, i8* %31, i8* %32, i32 6)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %19, %29, %23
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @GET, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @PARAM_TYPE, align 4
  %43 = and i32 %41, %42
  switch i32 %43, label %55 [
    i32 129, label %44
    i32 128, label %50
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* @interface, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = call i32 @wl_iovar_get(i32 %45, i8* %46, i8* %48, i32 4)
  store i32 %49, i32* %9, align 4
  br label %55

50:                                               ; preds = %40
  %51 = load i32, i32* @interface, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @wl_iovar_get(i32 %51, i8* %52, i8* %53, i32 6)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %40, %50, %44
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @wl_iovar_setint(i32, i8*, i32) #1

declare dso_local i32 @wl_iovar_set(i32, i8*, i8*, i32) #1

declare dso_local i32 @wl_iovar_get(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
