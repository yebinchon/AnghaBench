; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_names_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_names_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I = common dso_local global i32* null, align 8
@L = common dso_local global i32* null, align 8
@MAX_GID = common dso_local global i32 0, align 4
@Gc = common dso_local global i32 0, align 4
@MAX_GROUPS = common dso_local global i32 0, align 4
@GT = common dso_local global i64 0, align 8
@S = common dso_local global i32* null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_names_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @I, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %1, align 4
  %6 = load i32*, i32** @L, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @MAX_GID, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %0
  br label %61

16:                                               ; preds = %11
  %17 = load i32, i32* @Gc, align 4
  %18 = load i32, i32* @MAX_GROUPS, align 4
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sub nsw i32 %20, 16
  %22 = icmp slt i32 %17, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* @Gc, align 4
  %26 = load i64, i64* @GT, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* %2, align 4
  %32 = load i64, i64* @GT, align 8
  %33 = load i32, i32* @Gc, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = inttoptr i64 %35 to i32*
  store i32 %31, i32* %36, align 4
  %37 = load i32, i32* @Gc, align 4
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* @Gc, align 4
  %39 = load i64, i64* @GT, align 8
  %40 = load i32, i32* @Gc, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load i32*, i32** @S, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @memcpy(i64 %42, i32 %45, i32 %47)
  %49 = load i32, i32* @Gc, align 4
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %49, %50
  %52 = add nsw i32 %51, 4
  %53 = and i32 %52, -4
  store i32 %53, i32* @Gc, align 4
  %54 = load i32, i32* @Gc, align 4
  %55 = load i32, i32* @MAX_GROUPS, align 4
  %56 = icmp sle i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* @adj_rec, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @adj_rec, align 4
  br label %61

61:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
