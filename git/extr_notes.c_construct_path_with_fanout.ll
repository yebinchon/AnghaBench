; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_construct_path_with_fanout.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_construct_path_with_fanout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8 }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@FANOUT_PATH_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8, i8*)* @construct_path_with_fanout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @construct_path_with_fanout(i8* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @hash_to_hex(i8* %10)
  store i8* %11, i8** %9, align 8
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp slt i32 %13, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  br label %21

21:                                               ; preds = %24, %3
  %22 = load i8, i8* %5, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 %30, i8* %35, align 1
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8 %41, i8* %46, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 47, i8* %51, align 1
  %52 = load i8, i8* %5, align 1
  %53 = add i8 %52, -1
  store i8 %53, i8* %5, align 1
  br label %21

54:                                               ; preds = %21
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i64, i64* @FANOUT_PATH_MAX, align 8
  %60 = load i32, i32* %7, align 4
  %61 = zext i32 %60 to i64
  %62 = sub nsw i64 %59, %61
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = call i32 @xsnprintf(i8* %58, i64 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %66)
  ret void
}

declare dso_local i8* @hash_to_hex(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xsnprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
