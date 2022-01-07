; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkbrncmdline.c_emitload.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkbrncmdline.c_emitload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"write: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @emitload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emitload(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i8], align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  store i8 60, i8* %8, align 1
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 4, %10
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %9, align 1
  %13 = getelementptr inbounds i8, i8* %9, i64 1
  %14 = load i32, i32* %6, align 4
  %15 = lshr i32 %14, 24
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %13, align 1
  %17 = getelementptr inbounds i8, i8* %13, i64 1
  %18 = load i32, i32* %6, align 4
  %19 = lshr i32 %18, 16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %17, align 1
  %21 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 52, i8* %21, align 1
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 132, %23
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 5
  %27 = add nsw i32 %24, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %22, align 1
  %29 = getelementptr inbounds i8, i8* %22, i64 1
  %30 = load i32, i32* %6, align 4
  %31 = lshr i32 %30, 8
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %29, align 1
  %33 = getelementptr inbounds i8, i8* %29, i64 1
  %34 = load i32, i32* %6, align 4
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %33, align 1
  %36 = load i32, i32* %4, align 4
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %38 = call i32 @write(i32 %36, i8* %37, i32 8)
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 8
  br i1 %40, label %41, label %47

41:                                               ; preds = %3
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* @errno, align 4
  %44 = call i8* @strerror(i32 %43)
  %45 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %3
  ret void
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
