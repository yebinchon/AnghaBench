; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_bcmalgo.c_get_control_info.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_bcmalgo.c_get_control_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@control_unc = common dso_local global i8* null, align 8
@control_lz = common dso_local global i8* null, align 8
@control_mlzo = common dso_local global i8* null, align 8
@control_nrv = common dso_local global i8* null, align 8
@control_nstdlzma = common dso_local global i8* null, align 8
@control_unk = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_control_info(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @reverse_endian16(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %23 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %15
    i32 5, label %17
    i32 6, label %19
    i32 7, label %21
  ]

7:                                                ; preds = %1
  %8 = load i8*, i8** @control_unc, align 8
  store i8* %8, i8** %2, align 8
  br label %25

9:                                                ; preds = %1
  %10 = load i8*, i8** @control_lz, align 8
  store i8* %10, i8** %2, align 8
  br label %25

11:                                               ; preds = %1
  %12 = load i8*, i8** @control_mlzo, align 8
  store i8* %12, i8** %2, align 8
  br label %25

13:                                               ; preds = %1
  %14 = load i8*, i8** @control_unc, align 8
  store i8* %14, i8** %2, align 8
  br label %25

15:                                               ; preds = %1
  %16 = load i8*, i8** @control_nrv, align 8
  store i8* %16, i8** %2, align 8
  br label %25

17:                                               ; preds = %1
  %18 = load i8*, i8** @control_nstdlzma, align 8
  store i8* %18, i8** %2, align 8
  br label %25

19:                                               ; preds = %1
  %20 = load i8*, i8** @control_unc, align 8
  store i8* %20, i8** %2, align 8
  br label %25

21:                                               ; preds = %1
  %22 = load i8*, i8** @control_unc, align 8
  store i8* %22, i8** %2, align 8
  br label %25

23:                                               ; preds = %1
  %24 = load i8*, i8** @control_unk, align 8
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %23, %21, %19, %17, %15, %13, %11, %9, %7
  %26 = load i8*, i8** %2, align 8
  ret i8* %26
}

declare dso_local i32 @reverse_endian16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
