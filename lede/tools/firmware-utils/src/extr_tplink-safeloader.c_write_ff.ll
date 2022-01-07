; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_write_ff.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_tplink-safeloader.c_write_ff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Can not write 0xff to output_file\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Can not write partition to output_file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @write_ff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_ff(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %8 = call i32 @memset(i8* %7, i32 255, i32 4096)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, 4096
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @fwrite(i8* %16, i32 4096, i32 1, i32* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @error(i32 1, i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 4096
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %4, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i64, i64* %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %35, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @fwrite(i8* %40, i32 %41, i32 1, i32* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @error(i32 1, i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %34
  br label %49

49:                                               ; preds = %48, %29
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
