; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_feature-fixups.c_do_lwsync_fixups.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/lib/extr_feature-fixups.c_do_lwsync_fixups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_FTR_LWSYNC = common dso_local global i64 0, align 8
@PPC_INST_LWSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_lwsync_fixups(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @CPU_FTR_LWSYNC, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %37

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i64*
  store i64* %17, i64** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** %8, align 8
  br label %20

20:                                               ; preds = %34, %15
  %21 = load i64*, i64** %7, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = icmp ult i64* %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i64*, i64** %7, align 8
  %26 = bitcast i64* %25 to i8*
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr i8, i8* %26, i64 %28
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @PPC_INST_LWSYNC, align 4
  %33 = call i32 @raw_patch_instruction(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %7, align 8
  br label %20

37:                                               ; preds = %14, %20
  ret void
}

declare dso_local i32 @raw_patch_instruction(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
