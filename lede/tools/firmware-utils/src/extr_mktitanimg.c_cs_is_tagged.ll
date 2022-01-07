; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktitanimg.c_cs_is_tagged.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mktitanimg.c_cs_is_tagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_END = common dso_local global i32 0, align 4
@CKSUM_MAGIC_NUMBER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs_is_tagged(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [8 x i8], align 1
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @SEEK_END, align 4
  %7 = call i32 @fseek(i32* %5, i32 -8, i32 %6)
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @fread(i8* %8, i32 8, i32 1, i32* %9)
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %12 = bitcast i8* %11 to i64*
  %13 = load i64, i64* %12, align 1
  %14 = load i64, i64* @CKSUM_MAGIC_NUMBER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
