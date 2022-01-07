; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_unzlocal_getShort.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_unzip.c_unzlocal_getShort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@unz_GAME_QL = common dso_local global i32 0, align 4
@UNZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @unzlocal_getShort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unzlocal_getShort(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i16, align 2
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @unz_GAME_QL, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @fread_ql(i16* %5, i32 2, i32 1, i32* %9)
  br label %14

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @fread(i16* %5, i32 2, i32 1, i32* %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i16, i16* %5, align 2
  %16 = call i32 @__LittleShort(i16 signext %15)
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @UNZ_OK, align 4
  ret i32 %18
}

declare dso_local i32 @fread_ql(i16*, i32, i32, i32*) #1

declare dso_local i32 @fread(i16*, i32, i32, i32*) #1

declare dso_local i32 @__LittleShort(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
