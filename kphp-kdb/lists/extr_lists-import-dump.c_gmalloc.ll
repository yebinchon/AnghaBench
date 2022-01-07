; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_gmalloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_gmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_GROUPS = common dso_local global i32 0, align 4
@GS = common dso_local global i32 0, align 4
@GT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gmalloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MAX_GROUPS, align 4
  %6 = icmp ule i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* @GS, align 4
  %10 = load i32, i32* @GT, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @GS, align 4
  %14 = load i32, i32* @GT, align 4
  %15 = load i32, i32* @MAX_GROUPS, align 4
  %16 = add i32 %14, %15
  %17 = sub i32 %16, 8
  %18 = icmp ule i32 %13, %17
  br label %19

19:                                               ; preds = %12, %1
  %20 = phi i1 [ false, %1 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* @GS, align 4
  %24 = zext i32 %23 to i64
  %25 = sub nsw i64 0, %24
  %26 = and i64 %25, 3
  %27 = load i32, i32* @GS, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* @GS, align 4
  %31 = zext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %3, align 8
  %33 = load i32, i32* @GT, align 4
  %34 = load i32, i32* @MAX_GROUPS, align 4
  %35 = add i32 %33, %34
  %36 = load i32, i32* @GS, align 4
  %37 = sub i32 %35, %36
  %38 = load i32, i32* %2, align 4
  %39 = icmp uge i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @GS, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* @GS, align 4
  %45 = load i8*, i8** %3, align 8
  ret i8* %45
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
