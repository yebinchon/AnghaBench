; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dm_local.c_dmlab_read_extra_entity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dm_local.c_dmlab_read_extra_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEEPMIND_READ_EXTRA_ENTITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmlab_read_extra_entity(i32 %0, i8* %1, i32* %2, [2 x i32]* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32]*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store [2 x i32]* %3, [2 x i32]** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* @DEEPMIND_READ_EXTRA_ENTITY, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load i8*, i8** %7, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i32*, i32** %8, align 8
  %17 = ptrtoint i32* %16 to i64
  %18 = load [2 x i32]*, [2 x i32]** %9, align 8
  %19 = ptrtoint [2 x i32]* %18 to i64
  %20 = load i32*, i32** %10, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = call i32 @trap_DeepmindCallback(i32 %11, i64 %13, i64 %15, i64 %17, i64 %19, i64 %21, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret i32 %22
}

declare dso_local i32 @trap_DeepmindCallback(i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
