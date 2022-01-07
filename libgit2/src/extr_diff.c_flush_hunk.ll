; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff.c_flush_hunk.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff.c_flush_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@GIT_OID_RAWSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*)* @flush_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_hunk(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i16 0, i16* %7, align 2
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @git_hash_final(%struct.TYPE_4__* %6, i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @git_hash_init(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %57, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @GIT_OID_RAWSZ, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %32, %39
  %41 = load i16, i16* %7, align 2
  %42 = zext i16 %41 to i32
  %43 = add nsw i32 %42, %40
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %7, align 2
  %45 = load i16, i16* %7, align 2
  %46 = trunc i16 %45 to i8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 %46, i8* %52, align 1
  %53 = load i16, i16* %7, align 2
  %54 = zext i16 %53 to i32
  %55 = ashr i32 %54, 8
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %7, align 2
  br label %57

57:                                               ; preds = %24
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %20

60:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @git_hash_final(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @git_hash_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
