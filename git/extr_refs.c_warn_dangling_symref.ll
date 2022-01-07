; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_warn_dangling_symref.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_warn_dangling_symref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.warn_if_dangling_data = type { i8*, i8*, i32*, i32* }

@warn_if_dangling_symref = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @warn_dangling_symref(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.warn_if_dangling_data, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds %struct.warn_if_dangling_data, %struct.warn_if_dangling_data* %7, i32 0, i32 3
  store i32* %8, i32** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds %struct.warn_if_dangling_data, %struct.warn_if_dangling_data* %7, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.warn_if_dangling_data, %struct.warn_if_dangling_data* %7, i32 0, i32 2
  store i32* null, i32** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds %struct.warn_if_dangling_data, %struct.warn_if_dangling_data* %7, i32 0, i32 1
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @warn_if_dangling_symref, align 4
  %16 = call i32 @for_each_rawref(i32 %15, %struct.warn_if_dangling_data* %7)
  ret void
}

declare dso_local i32 @for_each_rawref(i32, %struct.warn_if_dangling_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
