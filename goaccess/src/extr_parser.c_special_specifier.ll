; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_parser.c_special_specifier.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_parser.c_special_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SPEC_TOKN_SET = common dso_local global i32 0, align 4
@SPEC_TOKN_NUL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**, i8**)* @special_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_specifier(%struct.TYPE_5__* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load i8**, i8*** %7, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %35 [
    i32 104, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load i32, i32* @SPEC_TOKN_SET, align 4
  %20 = load i8**, i8*** %7, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @spec_err(%struct.TYPE_5__* %18, i32 %19, i8 signext %22, i32* null)
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %12
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = call i32 @find_xff_host(%struct.TYPE_5__* %25, i8** %26, i8** %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = load i32, i32* @SPEC_TOKN_NUL, align 4
  %33 = call i32 @spec_err(%struct.TYPE_5__* %31, i32 %32, i8 signext 104, i32* null)
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %3, %34
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %30, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @spec_err(%struct.TYPE_5__*, i32, i8 signext, i32*) #1

declare dso_local i32 @find_xff_host(%struct.TYPE_5__*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
