; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_parse_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-scheme.c_tl_scheme_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_scheme_object = type { i32 }
%struct.tl_compiler = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_scheme_object* @tl_scheme_parse_file(%struct.tl_compiler* %0, i8* %1) #0 {
  %3 = alloca %struct.tl_scheme_object*, align 8
  %4 = alloca %struct.tl_compiler*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tl_scheme_object*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @tl_readfile(%struct.tl_compiler* %8, i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.tl_scheme_object* null, %struct.tl_scheme_object** %3, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.tl_compiler*, %struct.tl_compiler** %4, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.tl_scheme_object* @tl_scheme_parse(%struct.tl_compiler* %15, i8* %16)
  store %struct.tl_scheme_object* %17, %struct.tl_scheme_object** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @free(i8* %18)
  %20 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %7, align 8
  store %struct.tl_scheme_object* %20, %struct.tl_scheme_object** %3, align 8
  br label %21

21:                                               ; preds = %14, %13
  %22 = load %struct.tl_scheme_object*, %struct.tl_scheme_object** %3, align 8
  ret %struct.tl_scheme_object* %22
}

declare dso_local i8* @tl_readfile(%struct.tl_compiler*, i8*) #1

declare dso_local %struct.tl_scheme_object* @tl_scheme_parse(%struct.tl_compiler*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
