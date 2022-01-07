; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/boot/extr_elf2ecoff.c_copy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/boot/extr_elf2ecoff.c_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"copy: lseek\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"copy: read: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"premature end of file\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"copy: write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4096 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i64 @lseek(i32 %13, i32 %14, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %64, %21
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %65

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ugt i64 %29, 4096
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 4096, i32* %11, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @read(i32 %36, i8* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @errno, align 4
  %48 = call i8* @strerror(i32 %47)
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i8* [ %48, %46 ], [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), %49 ]
  %52 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = call i32 @exit(i32 1) #3
  unreachable

54:                                               ; preds = %32
  %55 = load i32, i32* %5, align 4
  %56 = getelementptr inbounds [4096 x i8], [4096 x i8]* %9, i64 0, i64 0
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @write(i32 %55, i8* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %54
  br label %23

65:                                               ; preds = %23
  ret void
}

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
