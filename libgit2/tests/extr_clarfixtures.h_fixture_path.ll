; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clarfixtures.h_fixture_path.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clarfixtures.h_fixture_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fixture_path._path = internal global [4096 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @fixture_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fixture_path(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @strncpy(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @fixture_path._path, i64 0, i64 0), i8* %8, i32 4096)
  %10 = load i64, i64* %5, align 8
  %11 = sub i64 %10, 1
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* @fixture_path._path, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 47
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %5, align 8
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* @fixture_path._path, i64 0, i64 %17
  store i8 47, i8* %19, align 1
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %26, %20
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @fixture_path._path, i64 0, i64 0), i64 %30
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = sub i64 4096, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @strncpy(i8* %31, i8* %32, i32 %35)
  ret i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @fixture_path._path, i64 0, i64 0)
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
