; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_write_out_data.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkcsysimg.c_write_out_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csum_state = type { i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"unable to write output file\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_out_data(i32* %0, i32* %1, i64 %2, %struct.csum_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.csum_state*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.csum_state* %3, %struct.csum_state** %9, align 8
  store i64 0, i64* @errno, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i64, i64* %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @fwrite(i32* %10, i64 %11, i32 1, i32* %12)
  %14 = load i64, i64* @errno, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = call i32 @ERRS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ERR_FATAL, align 4
  store i32 %18, i32* %5, align 4
  br label %28

19:                                               ; preds = %4
  %20 = load %struct.csum_state*, %struct.csum_state** %9, align 8
  %21 = icmp ne %struct.csum_state* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.csum_state*, %struct.csum_state** %9, align 8
  %26 = call i32 @csum_update(i32* %23, i64 %24, %struct.csum_state* %25)
  br label %27

27:                                               ; preds = %22, %19
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @fwrite(i32*, i64, i32, i32*) #1

declare dso_local i32 @ERRS(i8*) #1

declare dso_local i32 @csum_update(i32*, i64, %struct.csum_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
