; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_handlers.c_nl_cb_set.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_handlers.c_nl_cb_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cb = type { i8**, i32* }

@NL_CB_TYPE_MAX = common dso_local global i32 0, align 4
@NLE_RANGE = common dso_local global i32 0, align 4
@NL_CB_KIND_MAX = common dso_local global i32 0, align 4
@NL_CB_CUSTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_cb_set(%struct.nl_cb* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nl_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.nl_cb* %0, %struct.nl_cb** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ult i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NL_CB_TYPE_MAX, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %5
  %19 = load i32, i32* @NLE_RANGE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %51

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  %23 = icmp ult i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @NL_CB_KIND_MAX, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %21
  %29 = load i32, i32* @NLE_RANGE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %51

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @NL_CB_CUSTOM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.nl_cb*, %struct.nl_cb** %7, align 8
  %38 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.nl_cb*, %struct.nl_cb** %7, align 8
  %45 = getelementptr inbounds %struct.nl_cb, %struct.nl_cb* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %43, i8** %49, align 8
  br label %50

50:                                               ; preds = %35, %31
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %50, %28, %18
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
