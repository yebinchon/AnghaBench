; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby/src/extr_dump.c_write_section_irep.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby/src/extr_dump.c_write_section_irep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MRB_DUMP_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@MRB_DUMP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i64*, i32)* @write_section_irep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_section_irep(i32* %0, i32* %1, i32* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %15 = load i32*, i32** %9, align 8
  store i32* %15, i32** %14, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %5
  %22 = load i32, i32* @MRB_DUMP_INVALID_ARGUMENT, align 4
  store i32 %22, i32* %6, align 4
  br label %52

23:                                               ; preds = %18
  %24 = load i32*, i32** %14, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @write_irep_record(i32* %26, i32* %27, i32* %28, i64* %13, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @MRB_DUMP_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %52

36:                                               ; preds = %23
  %37 = load i32*, i32** %14, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %42, %43
  %45 = load i64*, i64** %10, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @write_section_irep_header(i32* %46, i64 %48, i32* %49)
  %51 = load i32, i32* @MRB_DUMP_OK, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %36, %34, %21
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @write_irep_record(i32*, i32*, i32*, i64*, i32) #1

declare dso_local i32 @write_section_irep_header(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
