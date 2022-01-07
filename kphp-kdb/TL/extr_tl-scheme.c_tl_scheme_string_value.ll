; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_string_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_string_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_scheme_string_value(%struct.tl_scheme_object* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tl_scheme_object*, align 8
  %5 = alloca i8**, align 8
  store %struct.tl_scheme_object* %0, %struct.tl_scheme_object** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %7 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %15 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %4, align 8
  %11 = getelementptr inbounds %struct.tl_scheme_object, %struct.tl_scheme_object* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8**, i8*** %5, align 8
  store i8* %13, i8** %14, align 8
  store i32 0, i32* %3, align 4
  br label %17

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %9
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
