; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_cap.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/broadcom-wl/src/extr_wlc.c_wlc_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GET = common dso_local global i32 0, align 4
@interface = common dso_local global i32 0, align 4
@BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @wlc_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_cap(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i8**
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GET, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @interface, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* @BUFSIZE, align 4
  %21 = call i32 @wl_iovar_get(i32 %17, i8* %18, i8* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @wl_iovar_get(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
