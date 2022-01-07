; ModuleID = '/home/carl/AnghaBench/lede/package/system/mtd/src/extr_mtd.c_mtd_erase.c'
source_filename = "/home/carl/AnghaBench/lede/package/system/mtd/src/extr_mtd.c_mtd_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.erase_info_user = type { i32, i32 }

@quiet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Erasing %s ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not open mtd device: %s\0A\00", align 1
@erasesize = common dso_local global i32 0, align 4
@mtdsize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"\0ASkipping bad block at 0x%x   \00", align 1
@MEMUNLOCK = common dso_local global i32 0, align 4
@MEMERASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to erase block on %s at 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtd_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtd_erase(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.erase_info_user, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @quiet, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @mtd_check_open(i8* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %11
  %22 = load i32, i32* @erasesize, align 4
  %23 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %4, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %4, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %61, %21
  %26 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @mtdsize, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @mtd_block_is_bad(i32 %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i32, i32* @quiet, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %36
  br label %60

45:                                               ; preds = %30
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @MEMUNLOCK, align 4
  %48 = call i64 @ioctl(i32 %46, i32 %47, %struct.erase_info_user* %4)
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @MEMERASE, align 4
  %51 = call i64 @ioctl(i32 %49, i32 %50, %struct.erase_info_user* %4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load i32, i32* @stderr, align 4
  %55 = load i8*, i8** %2, align 8
  %56 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %4, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %55, i32 %57)
  br label %59

59:                                               ; preds = %53, %45
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @erasesize, align 4
  %63 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %4, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %25

66:                                               ; preds = %25
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @close(i32 %67)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @mtd_check_open(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @mtd_block_is_bad(i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.erase_info_user*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
