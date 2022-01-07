; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkbrnimg.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkbrnimg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@output_file = common dso_local global i8* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error opening '%s' for writing: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @parseopts(i32* %4, i8*** %5)
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @usage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8*, i8** @output_file, align 8
  %15 = load i32, i32* @O_WRONLY, align 4
  %16 = load i32, i32* @O_CREAT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @O_TRUNC, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open(i8* %14, i32 %19, i32 420)
  store i32 %20, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** @output_file, align 8
  %25 = load i32, i32* @errno, align 4
  %26 = call i8* @strerror(i32 %25)
  %27 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %26)
  %28 = call i32 @exit(i32 1) #3
  unreachable

29:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @appendfile(i32 %35, i8* %40, i32 %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %30

48:                                               ; preds = %30
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @signature, align 4
  %51 = load i32, i32* @signature, align 4
  %52 = call i64 @strlen(i32 %51)
  %53 = add nsw i64 %52, 1
  %54 = call i32 @write(i32 %49, i32 %50, i64 %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @close(i32 %55)
  ret i32 0
}

declare dso_local i32 @parseopts(i32*, i8***) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @appendfile(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
