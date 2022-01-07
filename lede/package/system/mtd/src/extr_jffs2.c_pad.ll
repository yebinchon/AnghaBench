; ModuleID = '/home/carl/AnghaBench/lede/package/system/mtd/src/extr_jffs2.c_pad.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/mtd/src/extr_jffs2.c_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ofs = common dso_local global i32 0, align 4
@erasesize = common dso_local global i32 0, align 4
@buf = common dso_local global i64 0, align 8
@outfd = common dso_local global i32 0, align 4
@mtdofs = common dso_local global i64 0, align 8
@mtdsize = common dso_local global i64 0, align 8
@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"\0ASkipping bad block at 0x%08x   \00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pad(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @ofs, align 4
  %4 = load i32, i32* %2, align 4
  %5 = srem i32 %3, %4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @ofs, align 4
  %9 = load i32, i32* @erasesize, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %80

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @ofs, align 4
  %14 = load i32, i32* @erasesize, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load i64, i64* @buf, align 8
  %18 = load i32, i32* @ofs, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @ofs, align 4
  %23 = load i32, i32* %2, align 4
  %24 = srem i32 %22, %23
  %25 = sub nsw i32 %21, %24
  %26 = call i32 @memset(i64 %20, i32 255, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @ofs, align 4
  %29 = load i32, i32* %2, align 4
  %30 = srem i32 %28, %29
  %31 = sub nsw i32 %27, %30
  %32 = load i32, i32* @ofs, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* @ofs, align 4
  br label %34

34:                                               ; preds = %16, %12
  %35 = load i32, i32* @ofs, align 4
  %36 = load i32, i32* @erasesize, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* @ofs, align 4
  %38 = load i32, i32* @ofs, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %80

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %59, %40
  %42 = load i32, i32* @outfd, align 4
  %43 = load i64, i64* @mtdofs, align 8
  %44 = call i64 @mtd_block_is_bad(i32 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i64, i64* @mtdofs, align 8
  %48 = load i64, i64* @mtdsize, align 8
  %49 = icmp slt i64 %47, %48
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ false, %41 ], [ %49, %46 ]
  br i1 %51, label %52, label %68

52:                                               ; preds = %50
  %53 = load i32, i32* @quiet, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @stderr, align 4
  %57 = load i64, i64* @mtdofs, align 8
  %58 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* @erasesize, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @mtdofs, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* @mtdofs, align 8
  %64 = load i32, i32* @outfd, align 4
  %65 = load i32, i32* @erasesize, align 4
  %66 = load i32, i32* @SEEK_CUR, align 4
  %67 = call i32 @lseek(i32 %64, i32 %65, i32 %66)
  br label %41

68:                                               ; preds = %50
  %69 = load i32, i32* @outfd, align 4
  %70 = load i64, i64* @mtdofs, align 8
  %71 = call i32 @mtd_erase_block(i32 %69, i64 %70)
  %72 = load i32, i32* @outfd, align 4
  %73 = load i64, i64* @buf, align 8
  %74 = load i32, i32* @erasesize, align 4
  %75 = call i32 @write(i32 %72, i64 %73, i32 %74)
  %76 = load i32, i32* @erasesize, align 4
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @mtdofs, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* @mtdofs, align 8
  br label %80

80:                                               ; preds = %11, %68, %34
  ret void
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i64 @mtd_block_is_bad(i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @mtd_erase_block(i32, i64) #1

declare dso_local i32 @write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
